sed -i 's/PKG_CPPFLAGS =/PKG_CPPFLAGS = -pthread/' src/Makevars

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
