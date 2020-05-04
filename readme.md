#EQIVA Smartlock implementation for FHEM

Running on an extra PI ZeroW.
Lock gets triggered via custom subfunction setLock() written in the 99_myUtils.pm 
Function is checking if Lock is responding and if not tries again after a few seconds.

	Inspired by oyooyos keyble : https://github.com/oyooyo/keyble 
