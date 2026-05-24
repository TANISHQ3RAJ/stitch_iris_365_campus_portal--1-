---
name: IRIS 365
colors:
  surface: '#fdf7ff'
  surface-dim: '#ded8e0'
  surface-bright: '#fdf7ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f8f2fa'
  surface-container: '#f2ecf4'
  surface-container-high: '#ece6ee'
  surface-container-highest: '#e6e0e9'
  on-surface: '#1d1b20'
  on-surface-variant: '#494551'
  inverse-surface: '#322f35'
  inverse-on-surface: '#f5eff7'
  outline: '#7a7582'
  outline-variant: '#cbc4d2'
  surface-tint: '#6750a4'
  primary: '#4f378a'
  on-primary: '#ffffff'
  primary-container: '#6750a4'
  on-primary-container: '#e0d2ff'
  inverse-primary: '#cfbcff'
  secondary: '#63597c'
  on-secondary: '#ffffff'
  secondary-container: '#e1d4fd'
  on-secondary-container: '#645a7d'
  tertiary: '#633b48'
  on-tertiary: '#ffffff'
  tertiary-container: '#7d5260'
  on-tertiary-container: '#ffcbda'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e9ddff'
  primary-fixed-dim: '#cfbcff'
  on-primary-fixed: '#22005d'
  on-primary-fixed-variant: '#4f378a'
  secondary-fixed: '#e9ddff'
  secondary-fixed-dim: '#cdc0e9'
  on-secondary-fixed: '#1f1635'
  on-secondary-fixed-variant: '#4b4263'
  tertiary-fixed: '#ffd9e3'
  tertiary-fixed-dim: '#eeb8c8'
  on-tertiary-fixed: '#31111d'
  on-tertiary-fixed-variant: '#633b48'
  background: '#fdf7ff'
  on-background: '#1d1b20'
  surface-variant: '#e6e0e9'
typography:
  headline-lg:
    fontFamily: Roboto Flex
    fontSize: 57px
    fontWeight: '400'
    lineHeight: 64px
    letterSpacing: -0.25px
  headline-lg-mobile:
    fontFamily: Roboto Flex
    fontSize: 32px
    fontWeight: '400'
    lineHeight: 40px
  headline-md:
    fontFamily: Roboto Flex
    fontSize: 45px
    fontWeight: '400'
    lineHeight: 52px
  title-lg:
    fontFamily: Roboto Flex
    fontSize: 22px
    fontWeight: '500'
    lineHeight: 28px
  title-md:
    fontFamily: Roboto Flex
    fontSize: 16px
    fontWeight: '500'
    lineHeight: 24px
    letterSpacing: 0.15px
  body-lg:
    fontFamily: Roboto Flex
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
    letterSpacing: 0.5px
  body-md:
    fontFamily: Roboto Flex
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
    letterSpacing: 0.25px
  label-lg:
    fontFamily: Roboto Flex
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
    letterSpacing: 0.1px
  label-sm:
    fontFamily: Roboto Flex
    fontSize: 11px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.5px
rounded:
  sm: 0.5rem
  DEFAULT: 1rem
  md: 1.5rem
  lg: 2rem
  xl: 3rem
  full: 9999px
spacing:
  base: 8px
  container-padding-desktop: 24px
  container-padding-mobile: 16px
  gutter: 24px
  margin-page: 32px
---

## Brand & Style
The design system for this campus application balances institutional reliability with a youthful, energetic pulse. It is built upon the foundations of **Material Design 3 (Material You)**, emphasizing personalization and adaptive layouts. 

The aesthetic is **Modern Corporate**, characterized by high-legibility typography, spacious containers, and a sophisticated use of tonal depth. To inject energy into the student experience, the system utilizes "organic glass" decorative elements—large, blurred circles at 10-30% opacity that drift behind content—softening the academic structure with a sense of fluid movement and modern flair.

## Colors
This design system employs a tonal palette derived from a core violet seed. The **Primary (#6750A4)** color is reserved for key actions and branding highlights. 

- **Surface Strategy:** The background uses a crisp off-white (#FFFBFE). Depth is created using `Surface Container` for card backgrounds and `Surface Container Low` for subtle grouping areas like sidebars or secondary lists.
- **Tonal Contrast:** The `Secondary Container` provides a soft lavender backdrop for selected states or chips, while the `Tertiary` plum tone offers a sophisticated alternative for specialized features (e.g., health, events, or research).
- **Interaction:** All interactive elements must maintain high contrast against the `On Surface` text color to ensure accessibility across campus environments.

## Typography
The system utilizes **Roboto Flex** for its exceptional versatility and systematic legibility. The type scale follows a strict hierarchy to ensure academic information is easy to digest.

- **Headlines:** Large and airy, optimized for dashboard greetings and major section headers.
- **Titles:** Used for card headers and navigation elements to provide clear signposting.
- **Body & Labels:** Optimized for long-form reading in course modules or quick data snippets in schedules. 
- **Letter Spacing:** Tighter for large headlines and slightly expanded for small labels to maintain clarity at all scales.

## Layout & Spacing
This design system uses a **fluid grid** model based on an 8px square baseline. 

- **Desktop (1200px+):** A 12-column grid with 24px gutters. Main content is housed within a central container with 32px side margins.
- **Tablet (600px - 1199px):** An 8-column grid. Margins scale down to 24px.
- **Mobile (<600px):** A 4-column grid. Margins are 16px. 

Layouts should prioritize vertical rhythm, using the 8px base unit to define component spacing (e.g., 8px between a label and input, 24px between stacked cards). Major page sections are separated by 48px or more to maintain the "Modern" and "Institutional" clarity.

## Elevation & Depth
Elevation is expressed through **Tonal Layers** supplemented by soft, ambient shadows. 

The system relies primarily on surface color changes to indicate hierarchy (e.g., a card sits on the background by changing from `Background` to `Surface Container`). 

- **Shadows:** Use a very diffused, low-opacity shadow (e.g., `0 1px 3px rgba(0,0,0,0.1)`) for resting cards. 
- **Interaction Depth:** Upon hover, cards should lift slightly using a more pronounced medium shadow to provide immediate tactile feedback. 
- **Decorative Depth:** Large "organic" blurred circles are positioned at the lowest z-index, providing a vibrant backdrop that feels situated "behind" the UI glass.

## Shapes
The shape language is exceptionally soft and friendly, reinforcing the youthful personality.

- **Buttons:** Always `rounded-full` (pill-shaped).
- **Cards:** Use a radius of **24px**.
- **Major Containers:** Large structural elements (like main dashboard panels or modal backgrounds) use a radius of **48px**.
- **Small Elements:** Chips and small icons follow the `rounded-full` or `rounded-lg` pattern to maintain consistency with the button style.

## Components
Consistent component styling is critical for the "Institutional" feel of the system.

- **Buttons:** Pill-shaped with `Primary` or `Secondary` fills. Must include an `active:scale-95` transform to provide a physical, "squishy" feel.
- **Cards:** Rendered in `Surface Container` with a 24px radius. They feature a `shadow-sm` at rest and transition to `shadow-md` on hover.
- **Input Fields:** Utilize the "Filled" Material style. They feature **rounded top corners (8px)** but a **flat bottom** with a 2px stroke using the `Outline` color. The background is `Surface Container Low`.
- **Transitions:** All state changes (hover, focus, active) must use a **300ms cubic-bezier(0.2, 0, 0, 1)** timing function for a smooth, high-end motion feel.
- **Navigation:** Use a navigation rail for desktop and a bottom navigation bar for mobile, both utilizing pill-shaped indicators for the active state.
- **Chips:** Highly rounded, used for filtering course categories or status indicators.