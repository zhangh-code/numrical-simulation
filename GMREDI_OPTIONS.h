C $Header: /u/gcmpack/MITgcm/verification/lab_sea/code/GMREDI_OPTIONS.h,v 1.5 2010/10/07 21:17:48 gforget Exp $
C $Name: checkpoint65y $

C CPP options file for GM/Redi package
C
C Use this file for selecting options within the GM/Redi package

#ifndef GMREDI_OPTIONS_H
#define GMREDI_OPTIONS_H
#include "PACKAGES_CONFIG.h"
#ifdef ALLOW_GMREDI

#include "CPP_OPTIONS.h"

C Designed to simplify the Ajoint code:
C #define GMREDI_WITH_STABLE_ADJOINT
C -- exclude the clipping/tapering part of the code that is not used
C #define GM_EXCLUDE_CLIPPING
C #define GM_EXCLUDE_FM07_TAP
C #define GM_EXCLUDE_AC02_TAP
C #define GM_EXCLUDE_TAPERING

C This allows to use Visbeck et al formulation to compute K_GM+Redi
#undef GM_VISBECK_VARIABLE_K
C Use old calculation (before 2007/05/24) of Visbeck etal K_GM+Redi
C (which depends on tapering scheme)
#undef OLD_VISBECK_CALC

C This allows the leading diagonal (top two rows) to be non-unity
C (a feature required when tapering adiabatically).
#undef  GM_NON_UNITY_DIAGONAL

C Allows to use different values of K_GM and K_Redi ; also to
C be used with the advective form (Bolus velocity) of GM
#undef  GM_EXTRA_DIAGONAL

C Allows to use the advective form (Bolus velocity) of GM
C  instead of the Skew-Flux form (=default)
#undef  GM_BOLUS_ADVEC


#endif /* ALLOW_GMREDI */
#endif /* GMREDI_OPTIONS_H */

CEH3 ;;; Local Variables: ***
CEH3 ;;; mode:fortran ***
CEH3 ;;; End: ***
