%let pgm=utl-latest-debugging-production-options-magic-string-close-all-files;

%stop_submission;

Latest debugging production options magic string and close all files

      CONTENTS

         1 debugging options  (turn back on when using 1980s classic editor)
         2 production options
         3 magic string
         4 close all open files
           SOAPBOX ON
             Fixes the error that a file can not be accessed because the file is open
             There an a very few places where this may not work, but seems to work in most cases
           SOAPBOX OFF

SOAPBOX ON
  These are my options for debugging and production.
  Your mlileage may be better when using your settngs.
  Remember tat github is a software development site so be skeptical and
  please fwwl free to add issues
SOAPBOX OFF

github
https://tinyurl.com/mrxtcxvf
https://github.com/rogerjdeangelis/utl-latest-debugging-production-options-magic-string-close-all-files

/*       _      _                       _                          _   _
/ |   __| | ___| |__  _   _  __ _  __ _(_)_ __   __ _   ___  _ __ | |_(_) ___  _ __  ___
| |  / _` |/ _ \ `_ \| | | |/ _` |/ _` | | `_ \ / _` | / _ \| `_ \| __| |/ _ \| `_ \/ __|
| | | (_| |  __/ |_) | |_| | (_| | (_| | | | | | (_| || (_) | |_) | |_| | (_) | | | \__ \
|_|  \__,_|\___|_.__/ \__,_|\__, |\__, |_|_| |_|\__, | \___/| .__/ \__|_|\___/|_| |_|___/
                            |___/ |___/         |___/       |_|
*/
* DEBUG (recently added missin='.' - because I lost 2hrs of work - could not figure out wy missing was not .;

%MACRO UTLOPTS
         / des = "Turn all debugging options off forgiving options";

OPTIONS
   MISSING='.'
   MSGLEVEL=I
   OBS=MAX
   FIRSTOBS=1
   lrecl=384
   NOFMTERR      /* DO NOT FAIL ON MISSING FORMATS                            */
   SOURCE      /* turn sas source statements on                               */
   SOURCe2     /* turn sas source statements on                               */
   MACROGEN    /* turn  MACROGENERATON ON                                     */
   SYMBOLGEN   /* turn  SYMBOLGENERATION ON                                   */
   NOTES       /* turn  NOTES ON                                              */
   NOOVP       /* never overstike                                             */
   CMDMAC      /* turn  CMDMAC command macros on                              */
   /* ERRORS=2    turn  ERRORS=2  max of two errors                           */
   MLOGIC      /* turn  MLOGIC    macro logic                                 */
   MPRINT      /* turn  MPRINT    macro statements                            */
   MRECALL     /* turn  MRECALL   always recall                               */
   MERROR      /* turn  MERROR    show macro errors                           */
   NOCENTER    /* turn  NOCENTER  I do not like centering                     */
   DETAILS     /* turn  DETAILS   show details in dir window                  */
   SERROR      /* turn  SERROR    show unresolved macro refs                  */
   NONUMBER    /* turn  NONUMBER  do not number pages                         */
   FULLSTIMER  /*   turn  FULLSTIMER  give me all space/time stats            */
   NODATE      /* turn  NODATE      suppress date                             */
   /*DSOPTIONS=NOTE2ERR                                                                              */
   /*ERRORCHECK=STRICT /*  syntax-check mode when an error occurs in a LIBNAME or FILENAME statement */
   DKRICOND=WARN      /*  variable is missing from input data during a DROP=, KEEP=, or RENAME=     */
   DKROCOND=WARN      /*  variable is missing from output data during a DROP=, KEEP=, or RENAME=     */
   /* NO$SYNTAXCHECK  be careful with this one */
 ;

run;quit;

%MEND UTLOPTS;
/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%utlnopts;

%macro sq;
 %put macro;
 %do x=1 %to 3;
   %put &=x;
 %end;
%mend sq;
%sq;

data _null_;
   put  / "datstep";
   do i=1 to 3;
      put i=;
   end;
   stop;
run;quit;

/*          _   _            _
  ___ _ __ | |_(_)_ __ ___  | | ___   __ _
 / _ \ `_ \| __| | `__/ _ \ | |/ _ \ / _` |
|  __/ | | | |_| | | |  __/ | | (_) | (_| |
 \___|_| |_|\__|_|_|  \___| |_|\___/ \__, |
                                     |___/
*/

/**************************************************************************************************************************/
/* 81    %macro sq;                                                                                                       */
/* 82     %put macro;                                                                                                     */
/* 83     %do x=1 %to 3;                                                                                                  */
/* 84       %put &=x;                                                                                                     */
/* 85     %end;                                                                                                           */
/* 86    %mend sq;                                                                                                        */
/* 87    %sq;                                                                                                             */
/* MLOGIC(SQ):  Beginning execution.                                                                                      */
/* MLOGIC(SQ):  %PUT macro                                                                                                */
/* macro                                                                                                                  */
/* MLOGIC(SQ):  %DO loop beginning; index variable X; start value is 1; stop value is 3; by value is 1.                   */
/* MLOGIC(SQ):  %PUT &=x                                                                                                  */
/* SYMBOLGEN:  Macro variable X resolves to 1                                                                             */
/* X=1                                                                                                                    */
/* MLOGIC(SQ):  %DO loop index variable X is now 2; loop will iterate again.                                              */
/* MLOGIC(SQ):  %PUT &=x                                                                                                  */
/* SYMBOLGEN:  Macro variable X resolves to 2                                                                             */
/* X=2                                                                                                                    */
/* MLOGIC(SQ):  %DO loop index variable X is now 3; loop will iterate again.                                              */
/* MLOGIC(SQ):  %PUT &=x                                                                                                  */
/* SYMBOLGEN:  Macro variable X resolves to 3                                                                             */
/* X=3                                                                                                                    */
/* MLOGIC(SQ):  %DO loop index variable X is now 4; loop will not iterate again.                                          */
/* MLOGIC(SQ):  Ending execution.                                                                                         */
/* 88    data _null_;                                                                                                     */
/* 89       put  / "datstep";                                                                                             */
/* 90       do i=1 to 3;                                                                                                  */
/* 91          put i=;                                                                                                    */
/* 92       end;                                                                                                          */
/* 93       stop;                                                                                                         */
/* 94    run;                                                                                                             */
/**************************************************************************************************************************/

/*___                        _            _   _                          _   _
|___ \   _ __  _ __ ___   __| |_   _  ___| |_(_) ___  _ __    ___  _ __ | |_(_) ___  _ __  ___
  __) | | `_ \| `__/ _ \ / _` | | | |/ __| __| |/ _ \| `_ \  / _ \| `_ \| __| |/ _ \| `_ \/ __|
 / __/  | |_) | | | (_) | (_| | |_| | (__| |_| | (_) | | | || (_) | |_) | |_| | (_) | | | \__ \
|_____| | .__/|_|  \___/ \__,_|\__,_|\___|\__|_|\___/|_| |_| \___/| .__/ \__|_|\___/|_| |_|___/
        |_|                                                       |_|
*/

%macro utlnopts(note2err=nonote2err,nonotes=nonotes)
    / des = "Turn  debugging options off";

OPTIONS
     MSGLEVEL=N
     FIRSTOBS=1
     NONUMBER
     MLOGICNEST
   /*  MCOMPILENOTE */
     MPRINTNEST
     lrecl=384
     MAUTOLOCDISPLAY
     NOFMTERR     /* turn  Format Error off                           */
     NOMACROGEN   /* turn  MACROGENERATON off                         */
     NOSYMBOLGEN  /* turn  SYMBOLGENERATION off                       */
     NONOTES     /* turn  NOTES off                                  */
     NOOVP        /* never overstike                                  */
     NOCMDMAC     /* turn  CMDMAC command macros on                   */
     NOSOURCE    /* turn  source off * are you sure?                  */
     NOSOURCE2    /* turn  SOURCE2   show gererated source off        */
     NOMLOGIC     /* turn  MLOGIC    macro logic off                  */
     NOMPRINT     /* turn  MPRINT    macro statements off             */
     NOCENTER     /* turn  NOCENTER  I do not like centering          */
     NOMTRACE     /* turn  MTRACE    macro tracing                    */
     NOSERROR     /* turn  SERROR    show unresolved macro refs       */
     NOMERROR     /* turn  MERROR    show macro errors                */
     OBS=MAX      /* turn  max obs on                                 */
     NOFULLSTIMER /* turn  FULLSTIMER  give me all space/time stats   */
     NODATE       /* turn  NODATE      suppress date                  */
     DSOPTIONS=&NOTE2ERR
     ERRORCHECK=STRICT /*  syntax-check mode when an error occurs in a LIBNAME or FILENAME statement */
     DKRICOND=ERROR    /*  variable is missing from input data during a DROP=, KEEP=, or RENAME=     */

     /* NO$SYNTAXCHECK  be careful with this one */
;

RUN;quit;

%MEND UTLNOPTS;

%utlnopts;

%macro sq;
 %put macro;
 %do x=1 %to 3;
   %put &=x;
 %end;
%mend sq;
%sq;

data _null_;
   put  / "datstep";
   do i=1 to 3;
      put i=;
   end;
   stop;
run;quit;

/*          _   _            _
  ___ _ __ | |_(_)_ __ ___  | | ___   __ _
 / _ \ `_ \| __| | `__/ _ \ | |/ _ \ / _` |
|  __/ | | | |_| | | |  __/ | | (_) | (_| |
 \___|_| |_|\__|_|_|  \___| |_|\___/ \__, |
                                     |___/
*/

/**************************************************************************************************************************/
/* macro                                                                                                                  */
/* X=1                                                                                                                    */
/* X=2                                                                                                                    */
/* X=3                                                                                                                    */
/*                                                                                                                        */
/* datstep                                                                                                                */
/* I=1                                                                                                                    */
/* I=2                                                                                                                    */
/* I=3                                                                                                                    */
/**************************************************************************************************************************/


/*____                         _            _        _
|___ /   _ __ ___   __ _  __ _(_) ___   ___| |_ _ __(_)_ __   __ _
  |_ \  | `_ ` _ \ / _` |/ _` | |/ __| / __| __| `__| | `_ \ / _` |
 ___) | | | | | | | (_| | (_| | | (__  \__ \ |_| |  | | | | | (_| |
|____/  |_| |_| |_|\__,_|\__, |_|\___| |___/\__|_|  |_|_| |_|\__, |
                         |___/                               |___/
*/



%macro utlfix(dum) / des="fix frozen sas and restore to invocation" ;

 dm "odsresults;clear;";
 ods results off;
 options ls=171 ps=65;run;quit;
 ods listing;
 ods select all;
 ods excel close;
 ods graphics off;
 proc printto;run;
 goptions reset=all;
 endsubmit;
 endrsubmit;
 run;quit;
 %utlopts;
filename ft15f001 clear;

%mend utlfix;

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

Put this on a function key, Hit and sybmit when sas freezes

;;;;%end;%mend;/*'*/ *);*};*];*/;/*"*/;run;quit;%end;end;run;endcomp;%utlfix;

/*  _          _                        _ _                         __ _ _
| || |     ___| | ___  ___  ___    __ _| | |  _   _ ___  ___ _ __  / _(_) | ___  ___
| || |_   / __| |/ _ \/ __|/ _ \  / _` | | | | | | / __|/ _ \ `__|| |_| | |/ _ \/ __|
|__   _| | (__| | (_) \__ \  __/ | (_| | | | | |_| \__ \  __/ |   |  _| | |  __/\__ \
   |_|    \___|_|\___/|___/\___|  \__,_|_|_|  \__,_|___/\___|_|   |_| |_|_|\___||___/

*/

* without setting call utlnopts this will put 5000 lines in log ;

%macro utl_close;

  %utlnopts; /* your really need this to eliminate 5000 lines in log */

  /* https://communities.sas.com/t5/user/viewprofilepage/user-id/12151 */

  %local i rc;
  %do i=1 %to 1000; /* close all those SAS #LN files */
    %let rc=%sysfunc(close(&i));
  %end;

  %utlopts; /* your really need this to for the classic editor */

%mend utl_close;
/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/
%utl_close;

/**************************************************************************************************************************/
/* WITH UTLNOPTS IN MACRO (ENTIRE LOG)                                                                                    */
/* ====================================                                                                                   */
/*                                                                                                                        */
/* 56   %macro utl_close;                                                                                                 */
/* 57     %utlnopts; /* your really need this to eliminate 5000 lines in log */                                           */
/* 58     /* https://communities.sas.com/t5/user/viewprofilepage/user-id/12151 */                                         */
/* 59     %local i rc;                                                                                                    */
/* 60     %do i=1 %to 1000; /* close all those SAS #LN files */                                                           */
/* 61       %let rc=%sysfunc(close(&i));                                                                                  */
/* 62     %end;                                                                                                           */
/* 63     %utlopts; /* your really need this to for the classic editor */                                                 */
/* 64   %mend utl_close;                                                                                                  */
/* 65   %utl_close;                                                                                                       */
/* LOGIC(UTL_CLOSE):  Beginning execution.                                                                                */
/* LOGIC(UTL_CLOSE.UTLNOPTS):  Beginning execution.                                                                       */
/* LOGIC(UTL_CLOSE.UTLNOPTS):  This macro was compiled from the autocall file c:\oto\utlnopts.sas                         */
/* LOGIC(UTL_CLOSE.UTLNOPTS):  Parameter NOTE2ERR has value nonote2err                                                    */
/* LOGIC(UTL_CLOSE.UTLNOPTS):  Parameter NONOTES has value nonotes                                                        */
/* YMBOLGEN:  Macro variable NONOTES resolves to nonotes                                                                  */
/* PRINT(UTL_CLOSE.UTLNOPTS):   OPTIONS MSGLEVEL=N FIRSTOBS=1 NONUMBER MLOGICNEST MPRINTNEST lrecl=384                    */
/*   noMAUTOLOCDISPLAY NOFMTERR NOMACROGEN NOSYMBOLGEN nonotes NOOVP                                                      */
/* OCMDMAC NOSOURCE NOSOURCE2 NOMLOGIC NOMPRINT NOCENTER                                                                  */
/* PRINT(UTL_CLOSE.UTLOPTS):   MERROR NOCENTER DETAILS SERROR NONUMBER FULLSTIMER                                         */
/*   NODATE DKRICOND=WARN DKROCOND=WARN NOSYNTAXCHECK ;                                                                   */
/* PRINT(UTL_CLOSE.UTLOPTS):   run;                                                                                       */
/* PRINT(UTL_CLOSE.UTLOPTS):  quit;                                                                                       */
/* LOGIC(UTL_CLOSE.UTLOPTS):  Ending execution.                                                                           */
/* PRINT(UTL_CLOSE):  ;                                                                                                   */
/* LOGIC(UTL_CLOSE):  Ending execution.                                                                                   */
/*                                                                                                                        */
/*                                                                                                                        */
/* WITHOUT UTLOPTS - 5000 lines in log;                                                                                   */
/* ====================================                                                                                   */
/*                                                                                                                        */
/* ATTEMPTS TO CLOSE 1001 files                                                                                           */
/*                                                                                                                        */
/* MLOGIC(UTL_CLOSE):  %DO loop beginning; index variable I; start value is 1; stop value is 1000; by value is 1.         */
/* MLOGIC(UTL_CLOSE):  %LET (variable name is RC)                                                                         */
/* SYMBOLGEN:  Macro variable I resolves to 1                                                                             */
/* MLOGIC(UTL_CLOSE):  %DO loop index variable I is now 2; loop will iterate again.                                       */
/* MLOGIC(UTL_CLOSE):  %LET (variable name is RC)                                                                         */
/* SYMBOLGEN:  Macro variable I resolves to 2                                                                             */
/* MLOGIC(UTL_CLOSE):  %DO loop index variable I is now 3; loop will iterate again.                                       */
/* MLOGIC(UTL_CLOSE):  %LET (variable name is RC)                                                                         */
/* SYMBOLGEN:  Macro variable I resolves to 3                                                                             */
/* ....                                                                                                                   */
/* MLOGIC(UTL_CLOSE):  %DO loop index variable I is now 999; loop will iterate again.                                     */
/* MLOGIC(UTL_CLOSE):  %LET (variable name is RC)                                                                         */
/* SYMBOLGEN:  Macro variable I resolves to 999                                                                           */
/* MLOGIC(UTL_CLOSE):  %DO loop index variable I is now 1000; loop will iterate again.                                    */
/* MLOGIC(UTL_CLOSE):  %LET (variable name is RC)                                                                         */
/* SYMBOLGEN:  Macro variable I resolves to 1000                                                                          */
/* MLOGIC(UTL_CLOSE):  %DO loop index variable I is now 1001; loop will not iterate again.                                */
/* MLOGIC(UTL_CLOSE.UTLOPTS):  Beginning execution.                                                                       */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
