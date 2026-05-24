-- ============================================================
-- IRIS 365 — Supabase Database Schema
-- Run these SQL queries in your Supabase SQL Editor
-- to set up the database for authentication and profiles.
-- ============================================================

-- 1. Enable UUID extension (if not already enabled)
create extension if not exists "uuid-ossp";

-- 2. Profiles table (extends Supabase auth.users)
-- This stores additional user information beyond what auth.users provides.
create table public.profiles (
  id uuid references auth.users(id) on delete cascade primary key,
  full_name text,
  roll_number text unique,
  email text unique,
  college text default 'JIET',
  department text,
  year_of_study integer,
  role text default 'student' check (role in ('student', 'faculty', 'admin', 'staff')),
  avatar_url text,
  phone text,
  is_active boolean default true,
  created_at timestamp with time zone default now(),
  updated_at timestamp with time zone default now()
);

-- 3. Row Level Security (RLS)
alter table public.profiles enable row level security;

-- Allow users to view their own profile
create policy "Users can view own profile"
  on profiles for select
  using (auth.uid() = id);

-- Allow users to update their own profile
create policy "Users can update own profile"
  on profiles for update
  using (auth.uid() = id);

-- Allow admins to view all profiles
create policy "Admins can view all profiles"
  on profiles for select
  using (
    exists (
      select 1 from profiles
      where id = auth.uid() and role = 'admin'
    )
  );

-- 4. Auto-create profile on signup trigger
-- This automatically creates a profile row when a new user signs up.
create or replace function public.handle_new_user()
returns trigger as $$
begin
  insert into public.profiles (id, email, full_name, role)
  values (
    new.id,
    new.email,
    new.raw_user_meta_data->>'full_name',
    coalesce(new.raw_user_meta_data->>'role', 'student')
  );
  return new;
end;
$$ language plpgsql security definer;

-- Drop the trigger first if it already exists
drop trigger if exists on_auth_user_created on auth.users;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();

-- 5. Sessions log table (optional — for tracking login activity)
create table public.login_sessions (
  id uuid default uuid_generate_v4() primary key,
  user_id uuid references auth.users(id) on delete cascade,
  logged_in_at timestamp with time zone default now(),
  user_agent text,
  ip_address text
);

-- 6. Enable RLS on login_sessions (optional)
alter table public.login_sessions enable row level security;

create policy "Users can view own sessions"
  on login_sessions for select
  using (auth.uid() = user_id);

-- ============================================================
-- Supabase Dashboard Checklist
-- ============================================================
-- Authentication → Settings:
--   ✅ Enable Email confirmations ON
--   ✅ Set Site URL → https://your-iris365-domain.com
--   ✅ Add Redirect URLs → https://your-domain.com/auth-callback.html
--   ✅ JWT expiry → 3600 seconds (1 hour)
--   ✅ Enable Refresh Token Rotation ON
--
-- Authentication → Email Templates:
--   ✅ Customize Confirm Signup email with IRIS 365 branding
--   ✅ Customize Reset Password email with same branding
--
-- Authentication → Providers:
--   ✅ Email/Password → Enabled
--   ✅ Google OAuth → Enabled (add Client ID + Secret from Google Console)
--
-- Database → RLS:
--   ✅ Row Level Security enabled on profiles table
--   ✅ Policies created as per schema above
-- ============================================================
