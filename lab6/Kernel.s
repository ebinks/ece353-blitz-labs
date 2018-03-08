! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_204:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_203:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_202:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_201:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_200:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_199:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_198:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_197:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_196:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_194:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_193:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_192:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_191:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_190:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_189:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_188:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_187:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_186:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_185:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_184:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_183:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_182:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_181:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_180:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_179:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_178:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_177:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_176:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_175:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_174:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_173:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_172:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_169:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_168:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_167:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_166:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_165:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_164:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_163:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_162:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_161:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_160:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_159:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_158:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_157:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_156:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_155:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_154:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_153:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_138:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_137:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_136:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_132:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_131:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_130:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_129:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_128:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_127:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_126:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_123:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_122:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_121:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_120:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_119:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_118:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_117:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_116:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_115:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_113:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_112:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_111:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_110:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_109:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_108:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_105:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_104:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_103:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_102:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_101:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_100:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_95:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_93:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_92:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_91:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_90:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_89:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_88:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_87:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_86:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_85:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_83:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_82:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_81:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_80:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_79:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_77:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_75:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_74:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_73:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_71:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_70:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_69:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_68:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_67:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_65:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_63:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_62:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_61:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_60:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_59:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_58:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_56:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_55:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_54:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_52:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_49:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_48:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_47:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_46:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_45:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_43:
	.word	5			! length
	.ascii	"Child"
	.align
_StringConst_42:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_41:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_40:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_38:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_23:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_21:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_14:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_13:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_12:
	.word	12			! length
	.ascii	"User Program"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xee87aa28,r4		! myHashVal = -293098968
	cmp	r3,r4
	be	_Label_214
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_214:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_215
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_215
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_215
_Label_215:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_2959:
	push	r0
	sub	r1,1,r1
	bne	_Label_2959
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_216 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_216  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2960:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2960
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_220 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_221 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_222 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_223 = _temp_222 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_223 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2961:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2961
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_225 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_226 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_225  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_227 = _function_213_IdleFunction
	set	_function_213_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_228 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_229
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_230
	.word	-12
	.word	4
	.word	_Label_231
	.word	-16
	.word	4
	.word	_Label_232
	.word	-20
	.word	4
	.word	_Label_233
	.word	-24
	.word	4
	.word	_Label_234
	.word	-28
	.word	4
	.word	_Label_235
	.word	-32
	.word	4
	.word	_Label_236
	.word	-36
	.word	4
	.word	_Label_237
	.word	-40
	.word	4
	.word	_Label_238
	.word	-44
	.word	4
	.word	_Label_239
	.word	-48
	.word	4
	.word	_Label_240
	.word	-52
	.word	4
	.word	_Label_241
	.word	-56
	.word	4
	.word	_Label_242
	.word	-60
	.word	4
	.word	0
_Label_229:
	.ascii	"InitializeScheduler\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_213_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2962:
	push	r0
	sub	r1,1,r1
	bne	_Label_2962
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_243:
!	jmp	_Label_244
_Label_244:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_248 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_246 else goto _Label_247
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_247
	jmp	_Label_246
_Label_246:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_249
_Label_247:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_249:
! END WHILE...
	jmp	_Label_243
_Label_245:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_IdleFunction:
	.word	_sourceFileName
	.word	_Label_250
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_251
	.word	8
	.word	4
	.word	_Label_252
	.word	-12
	.word	4
	.word	_Label_253
	.word	-16
	.word	4
	.word	0
_Label_250:
	.ascii	"IdleFunction\0"
	.align
_Label_251:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_2963:
	push	r0
	sub	r1,1,r1
	bne	_Label_2963
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_256 ) then goto _Label_255		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_255
!	jmp	_Label_254
_Label_254:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_258 [0 ] into _temp_259
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_257 = _temp_259		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_257  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_255:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_260 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_260 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_261:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_265 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_264  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_264 then goto _Label_263 else goto _Label_262
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_262
	jmp	_Label_263
_Label_262:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_266 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_267 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_261
_Label_263:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_270 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_270 ) then goto _Label_269		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_269
!	jmp	_Label_268
_Label_268:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_272 [0 ] into _temp_273
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_271 = _temp_273		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_274 = *_temp_275  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_274) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_276 = _temp_274 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_269:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_277
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_278
	.word	8
	.word	4
	.word	_Label_279
	.word	-16
	.word	4
	.word	_Label_280
	.word	-20
	.word	4
	.word	_Label_281
	.word	-24
	.word	4
	.word	_Label_282
	.word	-28
	.word	4
	.word	_Label_283
	.word	-32
	.word	4
	.word	_Label_284
	.word	-36
	.word	4
	.word	_Label_285
	.word	-40
	.word	4
	.word	_Label_286
	.word	-44
	.word	4
	.word	_Label_287
	.word	-48
	.word	4
	.word	_Label_288
	.word	-52
	.word	4
	.word	_Label_289
	.word	-9
	.word	1
	.word	_Label_290
	.word	-56
	.word	4
	.word	_Label_291
	.word	-60
	.word	4
	.word	_Label_292
	.word	-64
	.word	4
	.word	_Label_293
	.word	-68
	.word	4
	.word	_Label_294
	.word	-72
	.word	4
	.word	_Label_295
	.word	-76
	.word	4
	.word	_Label_296
	.word	-80
	.word	4
	.word	0
_Label_277:
	.ascii	"Run\0"
	.align
_Label_278:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_289:
	.byte	'C'
	.ascii	"_temp_264\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_295:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_296:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_2964:
	push	r0
	sub	r1,1,r1
	bne	_Label_2964
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_297 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_298 = _function_211_ThreadPrintShort
	set	_function_211_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_299 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_298  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_300
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_301
	.word	-12
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	_Label_304
	.word	-24
	.word	4
	.word	0
_Label_300:
	.ascii	"PrintReadyList\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_304:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_2965:
	push	r0
	sub	r1,1,r1
	bne	_Label_2965
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_305 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_305  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_306 = *_temp_307  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_308 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_309
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_310
	.word	-12
	.word	4
	.word	_Label_311
	.word	-16
	.word	4
	.word	_Label_312
	.word	-20
	.word	4
	.word	_Label_313
	.word	-24
	.word	4
	.word	_Label_314
	.word	-28
	.word	4
	.word	_Label_315
	.word	-32
	.word	4
	.word	0
_Label_309:
	.ascii	"ThreadStartMain\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_314:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_315:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_2966:
	push	r0
	sub	r1,1,r1
	bne	_Label_2966
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_316 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_317 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_318
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_319
	.word	-12
	.word	4
	.word	_Label_320
	.word	-16
	.word	4
	.word	_Label_321
	.word	-20
	.word	4
	.word	0
_Label_318:
	.ascii	"ThreadFinish\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_321:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_322 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_324		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_324
!	jmp	_Label_323
_Label_323:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_325 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_326 = *_temp_327  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_324:
! CALL STATEMENT...
!   _temp_328 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_329 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_330 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_331
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_332
	.word	8
	.word	4
	.word	_Label_333
	.word	-12
	.word	4
	.word	_Label_334
	.word	-16
	.word	4
	.word	_Label_335
	.word	-20
	.word	4
	.word	_Label_336
	.word	-24
	.word	4
	.word	_Label_337
	.word	-28
	.word	4
	.word	_Label_338
	.word	-32
	.word	4
	.word	_Label_339
	.word	-36
	.word	4
	.word	_Label_340
	.word	-40
	.word	4
	.word	0
_Label_331:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_332:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_2968:
	push	r0
	sub	r1,1,r1
	bne	_Label_2968
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_342		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_342
!	jmp	_Label_341
_Label_341:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_343
_Label_342:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_343:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_344
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_345
	.word	8
	.word	4
	.word	_Label_346
	.word	-12
	.word	4
	.word	0
_Label_344:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_345:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_346:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_2969:
	push	r0
	sub	r1,1,r1
	bne	_Label_2969
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_347 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=userProgram  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0SE",r10
!   _temp_348 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_348  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0SE",r10
!   _temp_349 = _function_212_StartUserProcess
	set	_function_212_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_349  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_350
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_351
	.word	-12
	.word	4
	.word	_Label_352
	.word	-16
	.word	4
	.word	_Label_353
	.word	-20
	.word	4
	.word	_Label_354
	.word	-24
	.word	4
	.word	0
_Label_350:
	.ascii	"InitFirstProcess\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_354:
	.byte	'P'
	.ascii	"userProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_212_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_2970:
	push	r0
	sub	r1,1,r1
	bne	_Label_2970
	mov	213,r13		! source line 213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   _temp_355 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_356 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_356 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_357 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_357 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_358 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-56]
!   _temp_359 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_358  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_361 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_360 = _temp_361		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_360  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
!   _temp_362 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_364 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_365 = _temp_364 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_363 = *_temp_365  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_363 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_366 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_366 [999 ] into _temp_367
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_367		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_368 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_369 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_369 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_370
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_371
	.word	8
	.word	4
	.word	_Label_372
	.word	-12
	.word	4
	.word	_Label_373
	.word	-16
	.word	4
	.word	_Label_374
	.word	-20
	.word	4
	.word	_Label_375
	.word	-24
	.word	4
	.word	_Label_376
	.word	-28
	.word	4
	.word	_Label_377
	.word	-32
	.word	4
	.word	_Label_378
	.word	-36
	.word	4
	.word	_Label_379
	.word	-40
	.word	4
	.word	_Label_380
	.word	-44
	.word	4
	.word	_Label_381
	.word	-48
	.word	4
	.word	_Label_382
	.word	-52
	.word	4
	.word	_Label_383
	.word	-56
	.word	4
	.word	_Label_384
	.word	-60
	.word	4
	.word	_Label_385
	.word	-64
	.word	4
	.word	_Label_386
	.word	-68
	.word	4
	.word	_Label_387
	.word	-72
	.word	4
	.word	_Label_388
	.word	-76
	.word	4
	.word	_Label_389
	.word	-80
	.word	4
	.word	_Label_390
	.word	-84
	.word	4
	.word	_Label_391
	.word	-88
	.word	4
	.word	_Label_392
	.word	-92
	.word	4
	.word	0
_Label_370:
	.ascii	"StartUserProcess\0"
	.align
_Label_371:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_387:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_388:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_211_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2971:
	push	r0
	sub	r1,1,r1
	bne	_Label_2971
	mov	672,r13		! source line 672
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_396		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_396
!   _temp_395 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_397
_Label_396:
!   _temp_395 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_397:
!   if _temp_395 then goto _Label_394 else goto _Label_393
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_393
	jmp	_Label_394
_Label_393:
! THEN...
	mov	681,r13		! source line 681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_398 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_394:
! CALL STATEMENT...
!   _temp_399 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_400 = *_temp_401  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_402 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	687,r13		! source line 687
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_410 = *_temp_411  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_405
	cmp	r1,2
	be	_Label_406
	cmp	r1,3
	be	_Label_407
	cmp	r1,4
	be	_Label_408
	cmp	r1,5
	be	_Label_409
	jmp	_Label_403
! CASE 1...
_Label_405:
! CALL STATEMENT...
!   _temp_412 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 2...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 3...
_Label_407:
! CALL STATEMENT...
!   _temp_414 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 4...
_Label_408:
! CALL STATEMENT...
!   _temp_415 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_404
! CASE 5...
_Label_409:
! CALL STATEMENT...
!   _temp_416 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_404
! DEFAULT CASE...
_Label_403:
! CALL STATEMENT...
!   _temp_417 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	704,r13		! source line 704
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_404:
! CALL STATEMENT...
!   _temp_418 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_419 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_420 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_421
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_422
	.word	8
	.word	4
	.word	_Label_423
	.word	-16
	.word	4
	.word	_Label_424
	.word	-20
	.word	4
	.word	_Label_425
	.word	-24
	.word	4
	.word	_Label_426
	.word	-28
	.word	4
	.word	_Label_427
	.word	-32
	.word	4
	.word	_Label_428
	.word	-36
	.word	4
	.word	_Label_429
	.word	-40
	.word	4
	.word	_Label_430
	.word	-44
	.word	4
	.word	_Label_431
	.word	-48
	.word	4
	.word	_Label_432
	.word	-52
	.word	4
	.word	_Label_433
	.word	-56
	.word	4
	.word	_Label_434
	.word	-60
	.word	4
	.word	_Label_435
	.word	-64
	.word	4
	.word	_Label_436
	.word	-68
	.word	4
	.word	_Label_437
	.word	-72
	.word	4
	.word	_Label_438
	.word	-76
	.word	4
	.word	_Label_439
	.word	-9
	.word	1
	.word	_Label_440
	.word	-80
	.word	4
	.word	0
_Label_421:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_422:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_439:
	.byte	'C'
	.ascii	"_temp_395\0"
	.align
_Label_440:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_210_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	988,r13		! source line 988
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_441 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_442
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	8
	.word	4
	.word	_Label_444
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_443:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_2973:
	push	r0
	sub	r1,1,r1
	bne	_Label_2973
	mov	998,r13		! source line 998
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_445 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1004,r13		! source line 1004
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_446
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_447
	.word	8
	.word	4
	.word	_Label_448
	.word	-12
	.word	4
	.word	0
_Label_446:
	.ascii	"ProcessFinish\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_2974:
	push	r0
	sub	r1,1,r1
	bne	_Label_2974
	mov	1480,r13		! source line 1480
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_449
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_449:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_2975:
	push	r0
	sub	r1,1,r1
	bne	_Label_2975
	mov	1498,r13		! source line 1498
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0IF",r10
!   _temp_453 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_454 = _temp_453 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_452 = *_temp_454  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_452 == 0 then goto _Label_451		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_451
!	jmp	_Label_450
_Label_450:
! THEN...
	mov	1513,r13		! source line 1513
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0SE",r10
!   _temp_456 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_457 = _temp_456 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_455 = *_temp_457  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_455) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_451:
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_458
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_459
	.word	-12
	.word	4
	.word	_Label_460
	.word	-16
	.word	4
	.word	_Label_461
	.word	-20
	.word	4
	.word	_Label_462
	.word	-24
	.word	4
	.word	_Label_463
	.word	-28
	.word	4
	.word	_Label_464
	.word	-32
	.word	4
	.word	0
_Label_458:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1520,r13		! source line 1520
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_465
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_465:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
	mov	1534,r13		! source line 1534
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_466 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1541,r13		! source line 1541
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_467
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_468
	.word	-12
	.word	4
	.word	0
_Label_467:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	1546,r13		! source line 1546
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_469 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1553,r13		! source line 1553
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_470
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	1558,r13		! source line 1558
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_472 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1565,r13		! source line 1565
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_473
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	1570,r13		! source line 1570
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_475 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1577,r13		! source line 1577
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_477
	.word	-12
	.word	4
	.word	0
_Label_476:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	1582,r13		! source line 1582
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_478 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1589,r13		! source line 1589
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_479
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
	mov	1594,r13		! source line 1594
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_481 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1601,r13		! source line 1601
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_482
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	1606,r13		! source line 1606
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_209_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_209_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_487 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1623,r13		! source line 1623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1624,r13		! source line 1624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_488 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1625,r13		! source line 1625
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_492 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_491 = *_temp_492  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_491 == 0 then goto _Label_490		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	1629,r13		! source line 1629
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_494 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_493 = *_temp_494  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_493) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_495
_Label_490:
! ELSE...
	mov	1631,r13		! source line 1631
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_496 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_495:
! SEND STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_497
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_498
	.word	8
	.word	4
	.word	_Label_499
	.word	-12
	.word	4
	.word	_Label_500
	.word	-16
	.word	4
	.word	_Label_501
	.word	-20
	.word	4
	.word	_Label_502
	.word	-24
	.word	4
	.word	_Label_503
	.word	-28
	.word	4
	.word	_Label_504
	.word	-32
	.word	4
	.word	_Label_505
	.word	-36
	.word	4
	.word	0
_Label_497:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_498:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	1644,r13		! source line 1644
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1665,r13		! source line 1665
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2985
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_506
_Label_2985:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_506
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_506
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_520,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_520:
	jmp	_Label_512	! 1:	
	jmp	_Label_519	! 2:	
	jmp	_Label_509	! 3:	
	jmp	_Label_508	! 4:	
	jmp	_Label_511	! 5:	
	jmp	_Label_510	! 6:	
	jmp	_Label_513	! 7:	
	jmp	_Label_514	! 8:	
	jmp	_Label_515	! 9:	
	jmp	_Label_516	! 10:	
	jmp	_Label_517	! 11:	
	jmp	_Label_518	! 12:	
! CASE 4...
_Label_508:
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_521  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_509:
! CALL STATEMENT...
!   Call the function
	mov	1669,r13		! source line 1669
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_510:
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_522  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_522  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_511:
! RETURN STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1674,r13		! source line 1674
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_523  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_512:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_513:
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1679,r13		! source line 1679
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_514:
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_515:
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_516:
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_517:
! RETURN STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_518:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_519:
! CALL STATEMENT...
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_506:
! CALL STATEMENT...
!   _temp_529 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_530 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1698,r13		! source line 1698
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_507:
! RETURN STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_531
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_532
	.word	8
	.word	4
	.word	_Label_533
	.word	12
	.word	4
	.word	_Label_534
	.word	16
	.word	4
	.word	_Label_535
	.word	20
	.word	4
	.word	_Label_536
	.word	24
	.word	4
	.word	_Label_537
	.word	-12
	.word	4
	.word	_Label_538
	.word	-16
	.word	4
	.word	_Label_539
	.word	-20
	.word	4
	.word	_Label_540
	.word	-24
	.word	4
	.word	_Label_541
	.word	-28
	.word	4
	.word	_Label_542
	.word	-32
	.word	4
	.word	_Label_543
	.word	-36
	.word	4
	.word	_Label_544
	.word	-40
	.word	4
	.word	_Label_545
	.word	-44
	.word	4
	.word	_Label_546
	.word	-48
	.word	4
	.word	0
_Label_531:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	1705,r13		! source line 1705
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_547 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_548 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_549
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_550
	.word	8
	.word	4
	.word	_Label_551
	.word	-12
	.word	4
	.word	_Label_552
	.word	-16
	.word	4
	.word	0
_Label_549:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	1716,r13		! source line 1716
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_553 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1717,r13		! source line 1717
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_554
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_555
	.word	-12
	.word	4
	.word	0
_Label_554:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	1722,r13		! source line 1722
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_556 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_557
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_558
	.word	-12
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	11,r1
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	1729,r13		! source line 1729
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_559 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0AS",r10
	mov	1736,r13		! source line 1736
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-32]
!   Send message GetANewThread
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! SEND STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0SE",r10
!   _temp_561 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_561  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
	mov	1739,r13		! source line 1739
	mov	"\0\0SE",r10
!   _temp_562 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   Send message GetANewProcess
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = pcb + 24
	load	[r14+-44],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_563 = th  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_564 = th + 4160
	load	[r14+-40],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_564 = pcb  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_565 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_565 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_566
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_567
	.word	-12
	.word	4
	.word	_Label_568
	.word	-16
	.word	4
	.word	_Label_569
	.word	-20
	.word	4
	.word	_Label_570
	.word	-24
	.word	4
	.word	_Label_571
	.word	-28
	.word	4
	.word	_Label_572
	.word	-32
	.word	4
	.word	_Label_573
	.word	-36
	.word	4
	.word	_Label_574
	.word	-40
	.word	4
	.word	_Label_575
	.word	-44
	.word	4
	.word	0
_Label_566:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_574:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_575:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	1749,r13		! source line 1749
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_576 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_577 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_578
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_579
	.word	8
	.word	4
	.word	_Label_580
	.word	-12
	.word	4
	.word	_Label_581
	.word	-16
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	64,r1
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
	mov	1761,r13		! source line 1761
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
	mov	1771,r13		! source line 1771
	mov	"\0\0SE",r10
!   _temp_582 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-112]
!   _temp_583 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_584 = *_temp_585  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _temp_584 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_582  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_583  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_588		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_588
!	jmp	_Label_587
_Label_587:
! THEN...
	mov	1772,r13		! source line 1772
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_588:
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_2992:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2992
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0SE",r10
!   _temp_590 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0AS",r10
	mov	1777,r13		! source line 1777
	mov	"\0\0SE",r10
!   _temp_591 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_592 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_591  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=file  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! IF STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_593
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_593
	jmp	_Label_594
_Label_593:
! THEN...
	mov	1778,r13		! source line 1778
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_594:
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
	mov	1781,r13		! source line 1781
	mov	"\0\0SE",r10
!   _temp_595 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_595  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-208],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_597		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_597
!	jmp	_Label_596
_Label_596:
! THEN...
	mov	1782,r13		! source line 1782
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_597:
! ASSIGNMENT STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_598 = *_temp_599  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_598) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _temp_598 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_600 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_2993:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2993
! SEND STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_602 = *_temp_603  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_602) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _temp_602 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_601 = _temp_604		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_605 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_601  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0SE",r10
!   _temp_606 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=file  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
!   _temp_608 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_609 = _temp_608 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_607 = *_temp_609  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_607 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_610 [999 ] into _temp_611
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_611		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0SE",r10
!   _temp_612 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_613 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+8]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_614
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_615
	.word	8
	.word	4
	.word	_Label_616
	.word	-12
	.word	4
	.word	_Label_617
	.word	-16
	.word	4
	.word	_Label_618
	.word	-20
	.word	4
	.word	_Label_619
	.word	-24
	.word	4
	.word	_Label_620
	.word	-28
	.word	4
	.word	_Label_621
	.word	-32
	.word	4
	.word	_Label_622
	.word	-36
	.word	4
	.word	_Label_623
	.word	-40
	.word	4
	.word	_Label_624
	.word	-44
	.word	4
	.word	_Label_625
	.word	-48
	.word	4
	.word	_Label_626
	.word	-52
	.word	4
	.word	_Label_627
	.word	-56
	.word	4
	.word	_Label_628
	.word	-60
	.word	4
	.word	_Label_629
	.word	-64
	.word	4
	.word	_Label_630
	.word	-68
	.word	4
	.word	_Label_631
	.word	-72
	.word	4
	.word	_Label_632
	.word	-76
	.word	4
	.word	_Label_633
	.word	-80
	.word	4
	.word	_Label_634
	.word	-84
	.word	4
	.word	_Label_635
	.word	-88
	.word	4
	.word	_Label_636
	.word	-92
	.word	4
	.word	_Label_637
	.word	-96
	.word	4
	.word	_Label_638
	.word	-100
	.word	4
	.word	_Label_639
	.word	-104
	.word	4
	.word	_Label_640
	.word	-108
	.word	4
	.word	_Label_641
	.word	-112
	.word	4
	.word	_Label_642
	.word	-204
	.word	92
	.word	_Label_643
	.word	-208
	.word	4
	.word	_Label_644
	.word	-212
	.word	4
	.word	_Label_645
	.word	-236
	.word	24
	.word	_Label_646
	.word	-240
	.word	4
	.word	_Label_647
	.word	-244
	.word	4
	.word	_Label_648
	.word	-248
	.word	4
	.word	0
_Label_614:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_615:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_642:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_643:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_644:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_645:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_646:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	1801,r13		! source line 1801
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_649 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   _temp_650 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-44]
!   _temp_651 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_652 = *_temp_653  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_652) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = _temp_652 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_650  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_651  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_656		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_656
!	jmp	_Label_655
_Label_655:
! THEN...
	mov	1808,r13		! source line 1808
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_656:
! CALL STATEMENT...
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_657 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_658 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_659 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_660 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_661
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_662
	.word	8
	.word	4
	.word	_Label_663
	.word	-12
	.word	4
	.word	_Label_664
	.word	-16
	.word	4
	.word	_Label_665
	.word	-20
	.word	4
	.word	_Label_666
	.word	-24
	.word	4
	.word	_Label_667
	.word	-28
	.word	4
	.word	_Label_668
	.word	-32
	.word	4
	.word	_Label_669
	.word	-36
	.word	4
	.word	_Label_670
	.word	-40
	.word	4
	.word	_Label_671
	.word	-44
	.word	4
	.word	_Label_672
	.word	-48
	.word	4
	.word	_Label_673
	.word	-52
	.word	4
	.word	_Label_674
	.word	-76
	.word	24
	.word	0
_Label_661:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_662:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_673:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_674:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	21,r1
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	1822,r13		! source line 1822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_675 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
	mov	1828,r13		! source line 1828
	mov	"\0\0SE",r10
!   _temp_676 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-44]
!   _temp_677 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_679 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_678 = *_temp_679  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_678) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_680 = _temp_678 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_676  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_677  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_682		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_682
!	jmp	_Label_681
_Label_681:
! THEN...
	mov	1829,r13		! source line 1829
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_682:
! CALL STATEMENT...
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_683 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_684 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_685 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_686 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_687
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_688
	.word	8
	.word	4
	.word	_Label_689
	.word	-12
	.word	4
	.word	_Label_690
	.word	-16
	.word	4
	.word	_Label_691
	.word	-20
	.word	4
	.word	_Label_692
	.word	-24
	.word	4
	.word	_Label_693
	.word	-28
	.word	4
	.word	_Label_694
	.word	-32
	.word	4
	.word	_Label_695
	.word	-36
	.word	4
	.word	_Label_696
	.word	-40
	.word	4
	.word	_Label_697
	.word	-44
	.word	4
	.word	_Label_698
	.word	-48
	.word	4
	.word	_Label_699
	.word	-52
	.word	4
	.word	_Label_700
	.word	-76
	.word	24
	.word	0
_Label_687:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_688:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_699:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_700:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_701 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_702 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_703 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1851,r13		! source line 1851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_705 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_706
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_707
	.word	8
	.word	4
	.word	_Label_708
	.word	12
	.word	4
	.word	_Label_709
	.word	16
	.word	4
	.word	_Label_710
	.word	-12
	.word	4
	.word	_Label_711
	.word	-16
	.word	4
	.word	_Label_712
	.word	-20
	.word	4
	.word	_Label_713
	.word	-24
	.word	4
	.word	_Label_714
	.word	-28
	.word	4
	.word	0
_Label_706:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_707:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_708:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	1863,r13		! source line 1863
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_715 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_716 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1868,r13		! source line 1868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1869,r13		! source line 1869
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_717 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_718 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_719 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_720
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_721
	.word	8
	.word	4
	.word	_Label_722
	.word	12
	.word	4
	.word	_Label_723
	.word	16
	.word	4
	.word	_Label_724
	.word	-12
	.word	4
	.word	_Label_725
	.word	-16
	.word	4
	.word	_Label_726
	.word	-20
	.word	4
	.word	_Label_727
	.word	-24
	.word	4
	.word	_Label_728
	.word	-28
	.word	4
	.word	0
_Label_720:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_722:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	1882,r13		! source line 1882
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_729 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_730 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_731 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1889,r13		! source line 1889
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_732
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_733
	.word	8
	.word	4
	.word	_Label_734
	.word	12
	.word	4
	.word	_Label_735
	.word	-12
	.word	4
	.word	_Label_736
	.word	-16
	.word	4
	.word	_Label_737
	.word	-20
	.word	4
	.word	0
_Label_732:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_733:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	1898,r13		! source line 1898
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_738 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_739 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_740
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_741
	.word	8
	.word	4
	.word	_Label_742
	.word	-12
	.word	4
	.word	_Label_743
	.word	-16
	.word	4
	.word	0
_Label_740:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_741:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_208_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	2496,r13		! source line 2496
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_744 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_744  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   _temp_745 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_745) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_747) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_746 = *_temp_747  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_745 = _temp_746  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   _temp_748 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_748) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_750 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_750) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_749 = *_temp_750  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_748 = _temp_749  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0AS",r10
!   _temp_751 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_751) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_753 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_753) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_752 = *_temp_753  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_751 = _temp_752  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_754
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_755
	.word	8
	.word	4
	.word	_Label_756
	.word	12
	.word	4
	.word	_Label_757
	.word	-16
	.word	4
	.word	_Label_758
	.word	-9
	.word	1
	.word	_Label_759
	.word	-20
	.word	4
	.word	_Label_760
	.word	-24
	.word	4
	.word	_Label_761
	.word	-10
	.word	1
	.word	_Label_762
	.word	-28
	.word	4
	.word	_Label_763
	.word	-32
	.word	4
	.word	_Label_764
	.word	-11
	.word	1
	.word	_Label_765
	.word	-36
	.word	4
	.word	_Label_766
	.word	-12
	.word	1
	.word	_Label_767
	.word	-40
	.word	4
	.word	_Label_768
	.word	-44
	.word	4
	.word	0
_Label_754:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_755:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_756:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_758:
	.byte	'C'
	.ascii	"_temp_752\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_761:
	.byte	'C'
	.ascii	"_temp_749\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_764:
	.byte	'C'
	.ascii	"_temp_746\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_766:
	.byte	'C'
	.ascii	"_temp_744\0"
	.align
_Label_767:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_768:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_207_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_printFCB,r1
	push	r1
	mov	3,r1
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	2506,r13		! source line 2506
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_770 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_769 = *_temp_770  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2507,r13		! source line 2507
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_printFCB:
	.word	_sourceFileName
	.word	_Label_771
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_772
	.word	8
	.word	4
	.word	_Label_773
	.word	-12
	.word	4
	.word	_Label_774
	.word	-16
	.word	4
	.word	0
_Label_771:
	.ascii	"printFCB\0"
	.align
_Label_772:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_206_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_printOpen,r1
	push	r1
	mov	4,r1
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	2511,r13		! source line 2511
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_775 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2512,r13		! source line 2512
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_776 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_777 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2514,r13		! source line 2514
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_printOpen:
	.word	_sourceFileName
	.word	_Label_778
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_779
	.word	8
	.word	4
	.word	_Label_780
	.word	-12
	.word	4
	.word	_Label_781
	.word	-16
	.word	4
	.word	_Label_782
	.word	-20
	.word	4
	.word	0
_Label_778:
	.ascii	"printOpen\0"
	.align
_Label_779:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_783
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_783:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_784
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_784:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_786		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_786
!	jmp	_Label_785
_Label_785:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_787 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_786:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_789
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_791
	.word	12
	.word	4
	.word	_Label_792
	.word	-12
	.word	4
	.word	_Label_793
	.word	-16
	.word	4
	.word	0
_Label_789:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_790:
	.ascii	"Pself\0"
	.align
_Label_791:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	272,r13		! source line 272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_795		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_796 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	278,r13		! source line 278
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_795:
! ASSIGNMENT STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_798		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_798
!	jmp	_Label_797
_Label_797:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_799 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_800 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_801 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_798:
! ASSIGNMENT STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_802
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_803
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_804
	.word	-12
	.word	4
	.word	_Label_805
	.word	-16
	.word	4
	.word	_Label_806
	.word	-20
	.word	4
	.word	_Label_807
	.word	-24
	.word	4
	.word	_Label_808
	.word	-28
	.word	4
	.word	_Label_809
	.word	-32
	.word	4
	.word	0
_Label_802:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_803:
	.ascii	"Pself\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_808:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_809:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	291,r13		! source line 291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_811		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_811
!	jmp	_Label_810
_Label_810:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_812 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	296,r13		! source line 296
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_811:
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_814		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_814
!	jmp	_Label_813
_Label_813:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_815 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_814:
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_816
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	_Label_820
	.word	-20
	.word	4
	.word	0
_Label_816:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_817:
	.ascii	"Pself\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_820:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_821
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_821:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_822
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_822:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	326,r13		! source line 326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_824
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_826
	.word	-12
	.word	4
	.word	0
_Label_824:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_825:
	.ascii	"Pself\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_828		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_828
!	jmp	_Label_827
_Label_827:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_829 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	336,r13		! source line 336
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_828:
! ASSIGNMENT STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_833		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_833
!   _temp_832 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_834
_Label_833:
!   _temp_832 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_834:
!   if _temp_832 then goto _Label_831 else goto _Label_830
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_830
	jmp	_Label_831
_Label_830:
! THEN...
	mov	340,r13		! source line 340
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_835
_Label_831:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_836 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_837
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_838
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-9
	.word	1
	.word	_Label_841
	.word	-20
	.word	4
	.word	_Label_842
	.word	-24
	.word	4
	.word	0
_Label_837:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_838:
	.ascii	"Pself\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_840:
	.byte	'C'
	.ascii	"_temp_832\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_844		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_844
!	jmp	_Label_843
_Label_843:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_845 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_845  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	355,r13		! source line 355
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_844:
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0AS",r10
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
!   _temp_846 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_848		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_848
!	jmp	_Label_847
_Label_847:
! THEN...
	mov	360,r13		! source line 360
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_849 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_849 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_850 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_851
_Label_848:
! ELSE...
	mov	364,r13		! source line 364
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_851:
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_852
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_854
	.word	-12
	.word	4
	.word	_Label_855
	.word	-16
	.word	4
	.word	_Label_856
	.word	-20
	.word	4
	.word	_Label_857
	.word	-24
	.word	4
	.word	_Label_858
	.word	-28
	.word	4
	.word	_Label_859
	.word	-32
	.word	4
	.word	0
_Label_852:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_853:
	.ascii	"Pself\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_858:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_859:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_862		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_862
!	jmp	_Label_861
_Label_861:
!   _temp_860 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_863
_Label_862:
!   _temp_860 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_863:
!   ReturnResult: _temp_860  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_864
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_865
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_866
	.word	-9
	.word	1
	.word	0
_Label_864:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_865:
	.ascii	"Pself\0"
	.align
_Label_866:
	.byte	'C'
	.ascii	"_temp_860\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_867
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_867:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_868
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_868:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	412,r13		! source line 412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_870
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_872
	.word	-12
	.word	4
	.word	0
_Label_870:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_871:
	.ascii	"Pself\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	418,r13		! source line 418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0IF",r10
	mov	421,r13		! source line 421
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_875  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_875 then goto _Label_874 else goto _Label_873
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_873
	jmp	_Label_874
_Label_873:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_876 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	422,r13		! source line 422
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_874:
! ASSIGNMENT STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   _temp_877 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_878
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_880
	.word	12
	.word	4
	.word	_Label_881
	.word	-16
	.word	4
	.word	_Label_882
	.word	-20
	.word	4
	.word	_Label_883
	.word	-9
	.word	1
	.word	_Label_884
	.word	-24
	.word	4
	.word	0
_Label_878:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_879:
	.ascii	"Pself\0"
	.align
_Label_880:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_883:
	.byte	'C'
	.ascii	"_temp_875\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	434,r13		! source line 434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0IF",r10
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_887  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_887 then goto _Label_886 else goto _Label_885
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_885
	jmp	_Label_886
_Label_885:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_888 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	439,r13		! source line 439
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_886:
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   _temp_889 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_891		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_891
!	jmp	_Label_890
_Label_890:
! THEN...
	mov	444,r13		! source line 444
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_892 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_893 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_891:
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_894
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_895
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_896
	.word	12
	.word	4
	.word	_Label_897
	.word	-16
	.word	4
	.word	_Label_898
	.word	-20
	.word	4
	.word	_Label_899
	.word	-24
	.word	4
	.word	_Label_900
	.word	-28
	.word	4
	.word	_Label_901
	.word	-9
	.word	1
	.word	_Label_902
	.word	-32
	.word	4
	.word	_Label_903
	.word	-36
	.word	4
	.word	0
_Label_894:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_895:
	.ascii	"Pself\0"
	.align
_Label_896:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_901:
	.byte	'C'
	.ascii	"_temp_887\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	452,r13		! source line 452
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_906  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_906 then goto _Label_905 else goto _Label_904
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_904
	jmp	_Label_905
_Label_904:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_907 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	457,r13		! source line 457
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_905:
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0WH",r10
_Label_908:
!	jmp	_Label_909
_Label_909:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_911 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_912
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_912
	jmp	_Label_913
_Label_912:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_910
! END IF...
_Label_913:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_914 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_914 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_915 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_908
_Label_910:
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_916
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_918
	.word	12
	.word	4
	.word	_Label_919
	.word	-16
	.word	4
	.word	_Label_920
	.word	-20
	.word	4
	.word	_Label_921
	.word	-24
	.word	4
	.word	_Label_922
	.word	-28
	.word	4
	.word	_Label_923
	.word	-9
	.word	1
	.word	_Label_924
	.word	-32
	.word	4
	.word	_Label_925
	.word	-36
	.word	4
	.word	0
_Label_916:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_917:
	.ascii	"Pself\0"
	.align
_Label_918:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_923:
	.byte	'C'
	.ascii	"_temp_906\0"
	.align
_Label_924:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_925:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_926
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_926:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_927
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_927:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	479,r13		! source line 479
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   _temp_928 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_928) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_928 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_929 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_929 [0 ] into _temp_930
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_930 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_931 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_931 [999 ] into _temp_932
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_932 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_933 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_933 [999 ] into _temp_934
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_934		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_935 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_937 = &_temp_936
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_937 = _temp_937 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_939:
!   Data Move: *_temp_937 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_937 = _temp_937 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_938 = _temp_938 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_938) then goto _Label_939
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_939
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_940 = &_temp_936
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3015
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3015:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_935 = *_temp_940  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3016:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3016
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   _temp_941 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_943 = &_temp_942
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_943 = _temp_943 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_945:
!   Data Move: *_temp_943 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_943 = _temp_943 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_944 = _temp_944 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_944) then goto _Label_945
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_945
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_946 = &_temp_942
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3017
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3017:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_941 = *_temp_946  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3018:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3018
! RETURN STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_947
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_949
	.word	12
	.word	4
	.word	_Label_950
	.word	-12
	.word	4
	.word	_Label_951
	.word	-16
	.word	4
	.word	_Label_952
	.word	-20
	.word	4
	.word	_Label_953
	.word	-84
	.word	64
	.word	_Label_954
	.word	-88
	.word	4
	.word	_Label_955
	.word	-92
	.word	4
	.word	_Label_956
	.word	-96
	.word	4
	.word	_Label_957
	.word	-100
	.word	4
	.word	_Label_958
	.word	-156
	.word	56
	.word	_Label_959
	.word	-160
	.word	4
	.word	_Label_960
	.word	-164
	.word	4
	.word	_Label_961
	.word	-168
	.word	4
	.word	_Label_962
	.word	-172
	.word	4
	.word	_Label_963
	.word	-176
	.word	4
	.word	_Label_964
	.word	-180
	.word	4
	.word	_Label_965
	.word	-184
	.word	4
	.word	_Label_966
	.word	-188
	.word	4
	.word	0
_Label_947:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_948:
	.ascii	"Pself\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	498,r13		! source line 498
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_967  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_969 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_968  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_970
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_972
	.word	12
	.word	4
	.word	_Label_973
	.word	16
	.word	4
	.word	_Label_974
	.word	-12
	.word	4
	.word	_Label_975
	.word	-16
	.word	4
	.word	_Label_976
	.word	-20
	.word	4
	.word	_Label_977
	.word	-24
	.word	4
	.word	_Label_978
	.word	-28
	.word	4
	.word	0
_Label_970:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_971:
	.ascii	"Pself\0"
	.align
_Label_972:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_973:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_977:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_978:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_981 == _P_Kernel_currentThread then goto _Label_980		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_980
!	jmp	_Label_979
_Label_979:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_982 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	539,r13		! source line 539
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_980:
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
	mov	545,r13		! source line 545
	mov	"\0\0SE",r10
!   _temp_983 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_985		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_985
!	jmp	_Label_984
_Label_984:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_987		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_987
!	jmp	_Label_986
_Label_986:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_988 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_988  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	551,r13		! source line 551
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_987:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_990 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_989  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	555,r13		! source line 555
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_985:
! ASSIGNMENT STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_991
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_993
	.word	-12
	.word	4
	.word	_Label_994
	.word	-16
	.word	4
	.word	_Label_995
	.word	-20
	.word	4
	.word	_Label_996
	.word	-24
	.word	4
	.word	_Label_997
	.word	-28
	.word	4
	.word	_Label_998
	.word	-32
	.word	4
	.word	_Label_999
	.word	-36
	.word	4
	.word	_Label_1000
	.word	-40
	.word	4
	.word	_Label_1001
	.word	-44
	.word	4
	.word	0
_Label_991:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_992:
	.ascii	"Pself\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_999:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1000:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1003		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1004 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1004  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	575,r13		! source line 575
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1003:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1007 == _P_Kernel_currentThread then goto _Label_1006		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1006
!	jmp	_Label_1005
_Label_1005:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1008 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	579,r13		! source line 579
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1006:
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
	mov	585,r13		! source line 585
	mov	"\0\0SE",r10
!   _temp_1009 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1010
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1010
	jmp	_Label_1011
_Label_1010:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1012 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	587,r13		! source line 587
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1011:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1013
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1015
	.word	-12
	.word	4
	.word	_Label_1016
	.word	-16
	.word	4
	.word	_Label_1017
	.word	-20
	.word	4
	.word	_Label_1018
	.word	-24
	.word	4
	.word	_Label_1019
	.word	-28
	.word	4
	.word	_Label_1020
	.word	-32
	.word	4
	.word	0
_Label_1013:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1014:
	.ascii	"Pself\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1020:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_1024 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1024 [0 ] into _temp_1025
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1023 = *_temp_1025  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1023 == 606348324 then goto _Label_1022		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1022
!	jmp	_Label_1021
_Label_1021:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	601,r13		! source line 601
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1027
_Label_1022:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_1031 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1031 [999 ] into _temp_1032
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1030 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1030 == 606348324 then goto _Label_1029		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1029
!	jmp	_Label_1028
_Label_1028:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1033 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	603,r13		! source line 603
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1029:
! END IF...
_Label_1027:
! RETURN STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1034
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1036
	.word	-12
	.word	4
	.word	_Label_1037
	.word	-16
	.word	4
	.word	_Label_1038
	.word	-20
	.word	4
	.word	_Label_1039
	.word	-24
	.word	4
	.word	_Label_1040
	.word	-28
	.word	4
	.word	_Label_1041
	.word	-32
	.word	4
	.word	_Label_1042
	.word	-36
	.word	4
	.word	_Label_1043
	.word	-40
	.word	4
	.word	0
_Label_1034:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1035:
	.ascii	"Pself\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	609,r13		! source line 609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1044 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1045 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1047 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1048 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1053 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1054 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1053  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1049:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1054 then goto _Label_1052		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1052
_Label_1050:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1055 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1056 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1057 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1059 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1059 [i ] into _temp_1060
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1058 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1061 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1063 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1063 [i ] into _temp_1064
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1062 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1065 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1051:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1049
! END FOR
_Label_1052:
! CALL STATEMENT...
!   _temp_1066 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-116]
!   _temp_1067 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1067  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1068 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-108]
!   _temp_1070 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1070 [0 ] into _temp_1071
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1069 = _temp_1071		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1069  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	633,r13		! source line 633
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1074
	cmp	r1,2
	be	_Label_1075
	cmp	r1,3
	be	_Label_1076
	cmp	r1,4
	be	_Label_1077
	cmp	r1,5
	be	_Label_1078
	jmp	_Label_1072
! CASE 1...
_Label_1074:
! CALL STATEMENT...
!   _temp_1079 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_1073
! CASE 2...
_Label_1075:
! CALL STATEMENT...
!   _temp_1080 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_1073
! CASE 3...
_Label_1076:
! CALL STATEMENT...
!   _temp_1081 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_1073
! CASE 4...
_Label_1077:
! CALL STATEMENT...
!   _temp_1082 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_1073
! CASE 5...
_Label_1078:
! CALL STATEMENT...
!   _temp_1083 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1073
! DEFAULT CASE...
_Label_1072:
! CALL STATEMENT...
!   _temp_1084 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	650,r13		! source line 650
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1073:
! CALL STATEMENT...
!   _temp_1085 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1086 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1086  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1091 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1092 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1091  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1087:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1092 then goto _Label_1090		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1090
_Label_1088:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1093 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1094 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1095 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1097 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1097 [i ] into _temp_1098
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1096 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1099 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1101 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1101 [i ] into _temp_1102
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1100 = *_temp_1102  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1103 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1103  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1089:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1087
! END FOR
_Label_1090:
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1104
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1106
	.word	-12
	.word	4
	.word	_Label_1107
	.word	-16
	.word	4
	.word	_Label_1108
	.word	-20
	.word	4
	.word	_Label_1109
	.word	-24
	.word	4
	.word	_Label_1110
	.word	-28
	.word	4
	.word	_Label_1111
	.word	-32
	.word	4
	.word	_Label_1112
	.word	-36
	.word	4
	.word	_Label_1113
	.word	-40
	.word	4
	.word	_Label_1114
	.word	-44
	.word	4
	.word	_Label_1115
	.word	-48
	.word	4
	.word	_Label_1116
	.word	-52
	.word	4
	.word	_Label_1117
	.word	-56
	.word	4
	.word	_Label_1118
	.word	-60
	.word	4
	.word	_Label_1119
	.word	-64
	.word	4
	.word	_Label_1120
	.word	-68
	.word	4
	.word	_Label_1121
	.word	-72
	.word	4
	.word	_Label_1122
	.word	-76
	.word	4
	.word	_Label_1123
	.word	-80
	.word	4
	.word	_Label_1124
	.word	-84
	.word	4
	.word	_Label_1125
	.word	-88
	.word	4
	.word	_Label_1126
	.word	-92
	.word	4
	.word	_Label_1127
	.word	-96
	.word	4
	.word	_Label_1128
	.word	-100
	.word	4
	.word	_Label_1129
	.word	-104
	.word	4
	.word	_Label_1130
	.word	-108
	.word	4
	.word	_Label_1131
	.word	-112
	.word	4
	.word	_Label_1132
	.word	-116
	.word	4
	.word	_Label_1133
	.word	-120
	.word	4
	.word	_Label_1134
	.word	-124
	.word	4
	.word	_Label_1135
	.word	-128
	.word	4
	.word	_Label_1136
	.word	-132
	.word	4
	.word	_Label_1137
	.word	-136
	.word	4
	.word	_Label_1138
	.word	-140
	.word	4
	.word	_Label_1139
	.word	-144
	.word	4
	.word	_Label_1140
	.word	-148
	.word	4
	.word	_Label_1141
	.word	-152
	.word	4
	.word	_Label_1142
	.word	-156
	.word	4
	.word	_Label_1143
	.word	-160
	.word	4
	.word	_Label_1144
	.word	-164
	.word	4
	.word	_Label_1145
	.word	-168
	.word	4
	.word	_Label_1146
	.word	-172
	.word	4
	.word	_Label_1147
	.word	-176
	.word	4
	.word	_Label_1148
	.word	-180
	.word	4
	.word	_Label_1149
	.word	-184
	.word	4
	.word	_Label_1150
	.word	-188
	.word	4
	.word	_Label_1151
	.word	-192
	.word	4
	.word	_Label_1152
	.word	-196
	.word	4
	.word	0
_Label_1104:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1105:
	.ascii	"Pself\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1151:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1152:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1153
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1153:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1154
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1154:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1155 = _StringConst_104
	set	_StringConst_104,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   _temp_1156 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1158 = &_temp_1157
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1158 = _temp_1158 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1160 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3025:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3025
!   _temp_1160 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1162:
!   Data Move: *_temp_1158 = _temp_1160  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3026:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3026
!   _temp_1158 = _temp_1158 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1159 = _temp_1159 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1159) then goto _Label_1162
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1162
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1163 = &_temp_1157
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3027
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3027:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1156 = *_temp_1163  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3028:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3028
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: tmLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   tmLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0SE",r10
!   _temp_1166 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadFreed = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadFreed = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0SE",r10
!   _temp_1168 = &threadFreed
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1173 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1174 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1173  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1169:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1174 then goto _Label_1172		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1172
_Label_1170:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_1175 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-48]
!   _temp_1176 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1176 [i ] into _temp_1177
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1175  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   _temp_1178 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1178 [i ] into _temp_1179
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1180 = _temp_1179 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1180 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_1182 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1182 [i ] into _temp_1183
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1181 = _temp_1183		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1184 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1181  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1171:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1169
! END FOR
_Label_1172:
! RETURN STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1185
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1187
	.word	-12
	.word	4
	.word	_Label_1188
	.word	-16
	.word	4
	.word	_Label_1189
	.word	-20
	.word	4
	.word	_Label_1190
	.word	-24
	.word	4
	.word	_Label_1191
	.word	-28
	.word	4
	.word	_Label_1192
	.word	-32
	.word	4
	.word	_Label_1193
	.word	-36
	.word	4
	.word	_Label_1194
	.word	-40
	.word	4
	.word	_Label_1195
	.word	-44
	.word	4
	.word	_Label_1196
	.word	-48
	.word	4
	.word	_Label_1197
	.word	-52
	.word	4
	.word	_Label_1198
	.word	-56
	.word	4
	.word	_Label_1199
	.word	-60
	.word	4
	.word	_Label_1200
	.word	-64
	.word	4
	.word	_Label_1201
	.word	-68
	.word	4
	.word	_Label_1202
	.word	-72
	.word	4
	.word	_Label_1203
	.word	-76
	.word	4
	.word	_Label_1204
	.word	-80
	.word	4
	.word	_Label_1205
	.word	-84
	.word	4
	.word	_Label_1206
	.word	-4248
	.word	4164
	.word	_Label_1207
	.word	-4252
	.word	4
	.word	_Label_1208
	.word	-4256
	.word	4
	.word	_Label_1209
	.word	-45900
	.word	41644
	.word	_Label_1210
	.word	-45904
	.word	4
	.word	_Label_1211
	.word	-45908
	.word	4
	.word	_Label_1212
	.word	-45912
	.word	4
	.word	0
_Label_1185:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1186:
	.ascii	"Pself\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1212:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	745,r13		! source line 745
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1213 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1219 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1218  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1219 then goto _Label_1217		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1217
_Label_1215:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1221 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1223 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1223 [i ] into _temp_1224
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1222 = _temp_1224		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1222  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_211_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1216:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1214
! END FOR
_Label_1217:
! CALL STATEMENT...
!   _temp_1225 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1226 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1227 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1226  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1228
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1230
	.word	-12
	.word	4
	.word	_Label_1231
	.word	-16
	.word	4
	.word	_Label_1232
	.word	-20
	.word	4
	.word	_Label_1233
	.word	-24
	.word	4
	.word	_Label_1234
	.word	-28
	.word	4
	.word	_Label_1235
	.word	-32
	.word	4
	.word	_Label_1236
	.word	-36
	.word	4
	.word	_Label_1237
	.word	-40
	.word	4
	.word	_Label_1238
	.word	-44
	.word	4
	.word	_Label_1239
	.word	-48
	.word	4
	.word	_Label_1240
	.word	-52
	.word	4
	.word	_Label_1241
	.word	-56
	.word	4
	.word	_Label_1242
	.word	-60
	.word	4
	.word	0
_Label_1228:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1229:
	.ascii	"Pself\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1241:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1242:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1243 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0WH",r10
_Label_1244:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1247 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1245 else goto _Label_1246
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1246
	jmp	_Label_1245
_Label_1245:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_1248 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1249 = &threadFreed
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1248  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1244
_Label_1246:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1250 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1251 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1252 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1253
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1254
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1255
	.word	-12
	.word	4
	.word	_Label_1256
	.word	-16
	.word	4
	.word	_Label_1257
	.word	-20
	.word	4
	.word	_Label_1258
	.word	-24
	.word	4
	.word	_Label_1259
	.word	-28
	.word	4
	.word	_Label_1260
	.word	-32
	.word	4
	.word	_Label_1261
	.word	-36
	.word	4
	.word	_Label_1262
	.word	-40
	.word	4
	.word	0
_Label_1253:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1254:
	.ascii	"Pself\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1262:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1263 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1264 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1264 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1265 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1266 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1267 = &threadFreed
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1266  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1268 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1269
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1271
	.word	12
	.word	4
	.word	_Label_1272
	.word	-12
	.word	4
	.word	_Label_1273
	.word	-16
	.word	4
	.word	_Label_1274
	.word	-20
	.word	4
	.word	_Label_1275
	.word	-24
	.word	4
	.word	_Label_1276
	.word	-28
	.word	4
	.word	_Label_1277
	.word	-32
	.word	4
	.word	0
_Label_1269:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1270:
	.ascii	"Pself\0"
	.align
_Label_1271:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1278
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1278:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1279
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1279:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	810,r13		! source line 810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3033:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3033
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1281 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1282
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1283
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1284
	.word	-12
	.word	4
	.word	_Label_1285
	.word	-16
	.word	4
	.word	0
_Label_1282:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1283:
	.ascii	"Pself\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1286) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0SE",r10
!   _temp_1287 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1288 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_function_211_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1289
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1291
	.word	-12
	.word	4
	.word	_Label_1292
	.word	-16
	.word	4
	.word	_Label_1293
	.word	-20
	.word	4
	.word	0
_Label_1289:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1290:
	.ascii	"Pself\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1294 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1296 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1297 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1299		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1299
!	jmp	_Label_1298
_Label_1298:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1300 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1301
_Label_1299:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1303		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1303
!	jmp	_Label_1302
_Label_1302:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1304 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1305
_Label_1303:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1307		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1307
!	jmp	_Label_1306
_Label_1306:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1308 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1309
_Label_1307:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1310 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	863,r13		! source line 863
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1309:
! END IF...
_Label_1305:
! END IF...
_Label_1301:
! CALL STATEMENT...
!   _temp_1311 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1312 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1313
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1314
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1315
	.word	-12
	.word	4
	.word	_Label_1316
	.word	-16
	.word	4
	.word	_Label_1317
	.word	-20
	.word	4
	.word	_Label_1318
	.word	-24
	.word	4
	.word	_Label_1319
	.word	-28
	.word	4
	.word	_Label_1320
	.word	-32
	.word	4
	.word	_Label_1321
	.word	-36
	.word	4
	.word	_Label_1322
	.word	-40
	.word	4
	.word	_Label_1323
	.word	-44
	.word	4
	.word	_Label_1324
	.word	-48
	.word	4
	.word	0
_Label_1313:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1314:
	.ascii	"Pself\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1325
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1325:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1326
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1326:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	880,r13		! source line 880
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   _temp_1327 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1329 = &_temp_1328
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1329 = _temp_1329 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1331 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3037:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3037
!   _temp_1331 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1333:
!   Data Move: *_temp_1329 = _temp_1331  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3038:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3038
!   _temp_1329 = _temp_1329 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1330 = _temp_1330 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1330) then goto _Label_1333
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1333
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1334 = &_temp_1328
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3039
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3039:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1327 = *_temp_1334  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3040:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3040
! ASSIGNMENT STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0SE",r10
!   _temp_1336 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0SE",r10
!   _temp_1338 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_1341 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1346 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1347 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1346  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1342:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1347 then goto _Label_1345		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1345
_Label_1343:
	mov	896,r13		! source line 896
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1348 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1348 [i ] into _temp_1349
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1350 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1350 [i ] into _temp_1351
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1352 = _temp_1351 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1352 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1354 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1354 [i ] into _temp_1355
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1353 = _temp_1355		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1356 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1353  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1344:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1342
! END FOR
_Label_1345:
! RETURN STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1357
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1359
	.word	-12
	.word	4
	.word	_Label_1360
	.word	-16
	.word	4
	.word	_Label_1361
	.word	-20
	.word	4
	.word	_Label_1362
	.word	-24
	.word	4
	.word	_Label_1363
	.word	-28
	.word	4
	.word	_Label_1364
	.word	-32
	.word	4
	.word	_Label_1365
	.word	-36
	.word	4
	.word	_Label_1366
	.word	-40
	.word	4
	.word	_Label_1367
	.word	-44
	.word	4
	.word	_Label_1368
	.word	-48
	.word	4
	.word	_Label_1369
	.word	-52
	.word	4
	.word	_Label_1370
	.word	-56
	.word	4
	.word	_Label_1371
	.word	-60
	.word	4
	.word	_Label_1372
	.word	-64
	.word	4
	.word	_Label_1373
	.word	-68
	.word	4
	.word	_Label_1374
	.word	-72
	.word	4
	.word	_Label_1375
	.word	-76
	.word	4
	.word	_Label_1376
	.word	-80
	.word	4
	.word	_Label_1377
	.word	-84
	.word	4
	.word	_Label_1378
	.word	-88
	.word	4
	.word	_Label_1379
	.word	-212
	.word	124
	.word	_Label_1380
	.word	-216
	.word	4
	.word	_Label_1381
	.word	-220
	.word	4
	.word	_Label_1382
	.word	-1464
	.word	1244
	.word	_Label_1383
	.word	-1468
	.word	4
	.word	_Label_1384
	.word	-1472
	.word	4
	.word	0
_Label_1357:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1358:
	.ascii	"Pself\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1384:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	905,r13		! source line 905
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1385 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1385  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1390 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1391 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1390  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1386:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1391 then goto _Label_1389		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1389
_Label_1387:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1392 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1393 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1394 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1394 [i ] into _temp_1395
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1388:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1386
! END FOR
_Label_1389:
! CALL STATEMENT...
!   _temp_1396 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1397 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1398 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1397  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1399
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1401
	.word	-12
	.word	4
	.word	_Label_1402
	.word	-16
	.word	4
	.word	_Label_1403
	.word	-20
	.word	4
	.word	_Label_1404
	.word	-24
	.word	4
	.word	_Label_1405
	.word	-28
	.word	4
	.word	_Label_1406
	.word	-32
	.word	4
	.word	_Label_1407
	.word	-36
	.word	4
	.word	_Label_1408
	.word	-40
	.word	4
	.word	_Label_1409
	.word	-44
	.word	4
	.word	_Label_1410
	.word	-48
	.word	4
	.word	_Label_1411
	.word	-52
	.word	4
	.word	_Label_1412
	.word	-56
	.word	4
	.word	0
_Label_1399:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1400:
	.ascii	"Pself\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1411:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1412:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	928,r13		! source line 928
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1413 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1418 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1419 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1418  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1414:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1419 then goto _Label_1417		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1417
_Label_1415:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1420 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1421 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1421 [i ] into _temp_1422
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1416:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1414
! END FOR
_Label_1417:
! CALL STATEMENT...
!   _temp_1423 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_1424 = _function_210_PrintObjectAddr
	set	_function_210_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1425 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1424  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1426
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1427
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1428
	.word	-12
	.word	4
	.word	_Label_1429
	.word	-16
	.word	4
	.word	_Label_1430
	.word	-20
	.word	4
	.word	_Label_1431
	.word	-24
	.word	4
	.word	_Label_1432
	.word	-28
	.word	4
	.word	_Label_1433
	.word	-32
	.word	4
	.word	_Label_1434
	.word	-36
	.word	4
	.word	_Label_1435
	.word	-40
	.word	4
	.word	_Label_1436
	.word	-44
	.word	4
	.word	_Label_1437
	.word	-48
	.word	4
	.word	_Label_1438
	.word	-52
	.word	4
	.word	0
_Label_1426:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1427:
	.ascii	"Pself\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1438:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1439 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0WH",r10
_Label_1440:
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1443 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1441 else goto _Label_1442
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1442
	jmp	_Label_1441
_Label_1441:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1444 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1445 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1444  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1440
_Label_1442:
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1446 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1447 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1447 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1448 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_1449 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0RE",r10
!   ReturnResult: pcb  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1450
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1451
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1452
	.word	-12
	.word	4
	.word	_Label_1453
	.word	-16
	.word	4
	.word	_Label_1454
	.word	-20
	.word	4
	.word	_Label_1455
	.word	-24
	.word	4
	.word	_Label_1456
	.word	-28
	.word	4
	.word	_Label_1457
	.word	-32
	.word	4
	.word	_Label_1458
	.word	-36
	.word	4
	.word	_Label_1459
	.word	-40
	.word	4
	.word	_Label_1460
	.word	-44
	.word	4
	.word	0
_Label_1450:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1451:
	.ascii	"Pself\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1460:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1461 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1462 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1462 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1463 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1464 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1465 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1464  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1466 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1467
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1468
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1469
	.word	12
	.word	4
	.word	_Label_1470
	.word	-12
	.word	4
	.word	_Label_1471
	.word	-16
	.word	4
	.word	_Label_1472
	.word	-20
	.word	4
	.word	_Label_1473
	.word	-24
	.word	4
	.word	_Label_1474
	.word	-28
	.word	4
	.word	_Label_1475
	.word	-32
	.word	4
	.word	0
_Label_1467:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1468:
	.ascii	"Pself\0"
	.align
_Label_1469:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1476
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1476:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1477
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1477:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	1013,r13		! source line 1013
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1478 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1019,r13		! source line 1019
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0SE",r10
!   _temp_1480 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_1482 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_1484 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1489 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1490 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1489  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1485:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1490 then goto _Label_1488		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1488
_Label_1486:
	mov	1032,r13		! source line 1032
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1493 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1493) then goto _Label_1492
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1492
!	jmp	_Label_1491
_Label_1491:
! THEN...
	mov	1036,r13		! source line 1036
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1494 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1036,r13		! source line 1036
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1492:
!   Increment the FOR-LOOP index variable and jump back
_Label_1487:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1485
! END FOR
_Label_1488:
! RETURN STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1495
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1497
	.word	-12
	.word	4
	.word	_Label_1498
	.word	-16
	.word	4
	.word	_Label_1499
	.word	-20
	.word	4
	.word	_Label_1500
	.word	-24
	.word	4
	.word	_Label_1501
	.word	-28
	.word	4
	.word	_Label_1502
	.word	-32
	.word	4
	.word	_Label_1503
	.word	-36
	.word	4
	.word	_Label_1504
	.word	-40
	.word	4
	.word	_Label_1505
	.word	-44
	.word	4
	.word	_Label_1506
	.word	-48
	.word	4
	.word	_Label_1507
	.word	-52
	.word	4
	.word	_Label_1508
	.word	-56
	.word	4
	.word	0
_Label_1495:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1496:
	.ascii	"Pself\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1508:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	1043,r13		! source line 1043
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0SE",r10
!   _temp_1509 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1510 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1511 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1511  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1512 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1513 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1514 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1515
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1517
	.word	-12
	.word	4
	.word	_Label_1518
	.word	-16
	.word	4
	.word	_Label_1519
	.word	-20
	.word	4
	.word	_Label_1520
	.word	-24
	.word	4
	.word	_Label_1521
	.word	-28
	.word	4
	.word	_Label_1522
	.word	-32
	.word	4
	.word	0
_Label_1515:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1516:
	.ascii	"Pself\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	1057,r13		! source line 1057
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_1523 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0WH",r10
_Label_1524:
!   if numberFreeFrames >= 1 then goto _Label_1526		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1526
!	jmp	_Label_1525
_Label_1525:
	mov	1068,r13		! source line 1068
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1527 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1528 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1527  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1524
_Label_1526:
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1529 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1530 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   _temp_1531 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1531		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	-12
	.word	4
	.word	_Label_1535
	.word	-16
	.word	4
	.word	_Label_1536
	.word	-20
	.word	4
	.word	_Label_1537
	.word	-24
	.word	4
	.word	_Label_1538
	.word	-28
	.word	4
	.word	_Label_1539
	.word	-32
	.word	4
	.word	_Label_1540
	.word	-36
	.word	4
	.word	_Label_1541
	.word	-40
	.word	4
	.word	0
_Label_1532:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1540:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1541:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	1087,r13		! source line 1087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1542 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0WH",r10
_Label_1543:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1545		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1545
!	jmp	_Label_1544
_Label_1544:
	mov	1091,r13		! source line 1091
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1546 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1547 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1546  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1543
_Label_1545:
! FOR STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1552 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1553 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1552  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1548:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1553 then goto _Label_1551		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1551
_Label_1549:
	mov	1094,r13		! source line 1094
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1554 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   _temp_1555 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1555		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1550:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1548
! END FOR
_Label_1551:
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1556 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1556 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1557 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1558
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1560
	.word	12
	.word	4
	.word	_Label_1561
	.word	16
	.word	4
	.word	_Label_1562
	.word	-12
	.word	4
	.word	_Label_1563
	.word	-16
	.word	4
	.word	_Label_1564
	.word	-20
	.word	4
	.word	_Label_1565
	.word	-24
	.word	4
	.word	_Label_1566
	.word	-28
	.word	4
	.word	_Label_1567
	.word	-32
	.word	4
	.word	_Label_1568
	.word	-36
	.word	4
	.word	_Label_1569
	.word	-40
	.word	4
	.word	_Label_1570
	.word	-44
	.word	4
	.word	_Label_1571
	.word	-48
	.word	4
	.word	_Label_1572
	.word	-52
	.word	4
	.word	_Label_1573
	.word	-56
	.word	4
	.word	0
_Label_1558:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1559:
	.ascii	"Pself\0"
	.align
_Label_1560:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1561:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1572:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1573:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	1106,r13		! source line 1106
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1574 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1579 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1582 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1581 = *_temp_1582  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1580 = _temp_1581 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1579  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1575:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1580 then goto _Label_1578		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1578
_Label_1576:
	mov	1110,r13		! source line 1110
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0AS",r10
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0AS",r10
!   _temp_1583 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1583 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_1584 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1577:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1575
! END FOR
_Label_1578:
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1586 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1585 = *_temp_1586  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1585		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0SE",r10
!   _temp_1587 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1588 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1587  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0SE",r10
!   _temp_1589 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1590
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1592
	.word	12
	.word	4
	.word	_Label_1593
	.word	-12
	.word	4
	.word	_Label_1594
	.word	-16
	.word	4
	.word	_Label_1595
	.word	-20
	.word	4
	.word	_Label_1596
	.word	-24
	.word	4
	.word	_Label_1597
	.word	-28
	.word	4
	.word	_Label_1598
	.word	-32
	.word	4
	.word	_Label_1599
	.word	-36
	.word	4
	.word	_Label_1600
	.word	-40
	.word	4
	.word	_Label_1601
	.word	-44
	.word	4
	.word	_Label_1602
	.word	-48
	.word	4
	.word	_Label_1603
	.word	-52
	.word	4
	.word	_Label_1604
	.word	-56
	.word	4
	.word	_Label_1605
	.word	-60
	.word	4
	.word	_Label_1606
	.word	-64
	.word	4
	.word	_Label_1607
	.word	-68
	.word	4
	.word	0
_Label_1590:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1591:
	.ascii	"Pself\0"
	.align
_Label_1592:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1608
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1608:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1609
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1609:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	1128,r13		! source line 1128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   _temp_1610 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1612 = &_temp_1611
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1612 = _temp_1612 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1614:
!   Data Move: *_temp_1612 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1612 = _temp_1612 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1613 = _temp_1613 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1613) then goto _Label_1614
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1614
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1615 = &_temp_1611
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3051
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3051:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1610 = *_temp_1615  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3052:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3052
! RETURN STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1616
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1618
	.word	-12
	.word	4
	.word	_Label_1619
	.word	-16
	.word	4
	.word	_Label_1620
	.word	-20
	.word	4
	.word	_Label_1621
	.word	-104
	.word	84
	.word	_Label_1622
	.word	-108
	.word	4
	.word	0
_Label_1616:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1617:
	.ascii	"Pself\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1138,r13		! source line 1138
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1623 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1623  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1624 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1624  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1144,r13		! source line 1144
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1629 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1630 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1629  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1625:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1630 then goto _Label_1628		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1628
_Label_1626:
	mov	1145,r13		! source line 1145
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1631 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1631  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1633 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1633 [i ] into _temp_1634
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1632 = _temp_1634		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1635 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1637 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1637 [i ] into _temp_1638
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1636 = *_temp_1638  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1636  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1639 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1150,r13		! source line 1150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1640 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1151,r13		! source line 1151
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1641 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1152,r13		! source line 1152
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1643) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1642  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1153,r13		! source line 1153
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1644 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1644  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1154,r13		! source line 1154
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0IF",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1648) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1647  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1647) then goto _Label_1646
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1646
!	jmp	_Label_1645
_Label_1645:
! THEN...
	mov	1156,r13		! source line 1156
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1650) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1649  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1651
_Label_1646:
! ELSE...
	mov	1158,r13		! source line 1158
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1652 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1651:
! CALL STATEMENT...
!   _temp_1653 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0IF",r10
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1656) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1654 else goto _Label_1655
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1655
	jmp	_Label_1654
_Label_1654:
! THEN...
	mov	1162,r13		! source line 1162
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1657 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1658
_Label_1655:
! ELSE...
	mov	1164,r13		! source line 1164
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1658:
! CALL STATEMENT...
!   _temp_1660 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0IF",r10
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1663) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1661 else goto _Label_1662
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1662
	jmp	_Label_1661
_Label_1661:
! THEN...
	mov	1168,r13		! source line 1168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1664 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1665
_Label_1662:
! ELSE...
	mov	1170,r13		! source line 1170
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1666 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1665:
! CALL STATEMENT...
!   _temp_1667 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0IF",r10
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1670) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1668 else goto _Label_1669
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1669
	jmp	_Label_1668
_Label_1668:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1671 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1672
_Label_1669:
! ELSE...
	mov	1176,r13		! source line 1176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1673 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1672:
! CALL STATEMENT...
!   _temp_1674 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0IF",r10
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1677) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1675 else goto _Label_1676
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1676
	jmp	_Label_1675
_Label_1675:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1679
_Label_1676:
! ELSE...
	mov	1182,r13		! source line 1182
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1680 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1679:
! CALL STATEMENT...
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1627:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1625
! END FOR
_Label_1628:
! RETURN STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1681
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1682
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1683
	.word	-12
	.word	4
	.word	_Label_1684
	.word	-16
	.word	4
	.word	_Label_1685
	.word	-20
	.word	4
	.word	_Label_1686
	.word	-24
	.word	4
	.word	_Label_1687
	.word	-28
	.word	4
	.word	_Label_1688
	.word	-32
	.word	4
	.word	_Label_1689
	.word	-36
	.word	4
	.word	_Label_1690
	.word	-40
	.word	4
	.word	_Label_1691
	.word	-44
	.word	4
	.word	_Label_1692
	.word	-48
	.word	4
	.word	_Label_1693
	.word	-52
	.word	4
	.word	_Label_1694
	.word	-56
	.word	4
	.word	_Label_1695
	.word	-60
	.word	4
	.word	_Label_1696
	.word	-64
	.word	4
	.word	_Label_1697
	.word	-68
	.word	4
	.word	_Label_1698
	.word	-72
	.word	4
	.word	_Label_1699
	.word	-76
	.word	4
	.word	_Label_1700
	.word	-80
	.word	4
	.word	_Label_1701
	.word	-84
	.word	4
	.word	_Label_1702
	.word	-88
	.word	4
	.word	_Label_1703
	.word	-92
	.word	4
	.word	_Label_1704
	.word	-96
	.word	4
	.word	_Label_1705
	.word	-100
	.word	4
	.word	_Label_1706
	.word	-104
	.word	4
	.word	_Label_1707
	.word	-108
	.word	4
	.word	_Label_1708
	.word	-112
	.word	4
	.word	_Label_1709
	.word	-116
	.word	4
	.word	_Label_1710
	.word	-120
	.word	4
	.word	_Label_1711
	.word	-124
	.word	4
	.word	_Label_1712
	.word	-128
	.word	4
	.word	_Label_1713
	.word	-132
	.word	4
	.word	_Label_1714
	.word	-136
	.word	4
	.word	_Label_1715
	.word	-140
	.word	4
	.word	_Label_1716
	.word	-144
	.word	4
	.word	_Label_1717
	.word	-148
	.word	4
	.word	_Label_1718
	.word	-152
	.word	4
	.word	_Label_1719
	.word	-156
	.word	4
	.word	_Label_1720
	.word	-160
	.word	4
	.word	_Label_1721
	.word	-164
	.word	4
	.word	_Label_1722
	.word	-168
	.word	4
	.word	0
_Label_1681:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1682:
	.ascii	"Pself\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1722:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1190,r13		! source line 1190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
!   _temp_1725 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1725 [entry ] into _temp_1726
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1724 = *_temp_1726  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1723 = _temp_1724 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1723  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1727
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1729
	.word	12
	.word	4
	.word	_Label_1730
	.word	-12
	.word	4
	.word	_Label_1731
	.word	-16
	.word	4
	.word	_Label_1732
	.word	-20
	.word	4
	.word	_Label_1733
	.word	-24
	.word	4
	.word	0
_Label_1727:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1728:
	.ascii	"Pself\0"
	.align
_Label_1729:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
!   _temp_1736 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1736 [entry ] into _temp_1737
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1735 = *_temp_1737  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1734 = _temp_1735 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1734  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1738
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1740
	.word	12
	.word	4
	.word	_Label_1741
	.word	-12
	.word	4
	.word	_Label_1742
	.word	-16
	.word	4
	.word	_Label_1743
	.word	-20
	.word	4
	.word	_Label_1744
	.word	-24
	.word	4
	.word	0
_Label_1738:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1739:
	.ascii	"Pself\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0AS",r10
!   _temp_1745 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1745 [entry ] into _temp_1746
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1750 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1750 [entry ] into _temp_1751
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1749 = *_temp_1751  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1748 = _temp_1749 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1747 = _temp_1748 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1746 = _temp_1747  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1752
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1753
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1754
	.word	12
	.word	4
	.word	_Label_1755
	.word	16
	.word	4
	.word	_Label_1756
	.word	-12
	.word	4
	.word	_Label_1757
	.word	-16
	.word	4
	.word	_Label_1758
	.word	-20
	.word	4
	.word	_Label_1759
	.word	-24
	.word	4
	.word	_Label_1760
	.word	-28
	.word	4
	.word	_Label_1761
	.word	-32
	.word	4
	.word	_Label_1762
	.word	-36
	.word	4
	.word	0
_Label_1752:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1753:
	.ascii	"Pself\0"
	.align
_Label_1754:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1755:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0RE",r10
!   _temp_1766 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1766 [entry ] into _temp_1767
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1765 = *_temp_1767  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1764 = _temp_1765 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1764) then goto _Label_1768
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1768
!   _temp_1763 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1769
_Label_1768:
!   _temp_1763 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1769:
!   ReturnResult: _temp_1763  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1770
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1772
	.word	12
	.word	4
	.word	_Label_1773
	.word	-16
	.word	4
	.word	_Label_1774
	.word	-20
	.word	4
	.word	_Label_1775
	.word	-24
	.word	4
	.word	_Label_1776
	.word	-28
	.word	4
	.word	_Label_1777
	.word	-9
	.word	1
	.word	0
_Label_1770:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1771:
	.ascii	"Pself\0"
	.align
_Label_1772:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1777:
	.byte	'C'
	.ascii	"_temp_1763\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0RE",r10
!   _temp_1781 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1781 [entry ] into _temp_1782
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1780 = *_temp_1782  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1779 = _temp_1780 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1779) then goto _Label_1783
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1783
!   _temp_1778 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1784
_Label_1783:
!   _temp_1778 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1784:
!   ReturnResult: _temp_1778  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1785
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1787
	.word	12
	.word	4
	.word	_Label_1788
	.word	-16
	.word	4
	.word	_Label_1789
	.word	-20
	.word	4
	.word	_Label_1790
	.word	-24
	.word	4
	.word	_Label_1791
	.word	-28
	.word	4
	.word	_Label_1792
	.word	-9
	.word	1
	.word	0
_Label_1785:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1786:
	.ascii	"Pself\0"
	.align
_Label_1787:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1792:
	.byte	'C'
	.ascii	"_temp_1778\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	1237,r13		! source line 1237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0RE",r10
!   _temp_1796 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1796 [entry ] into _temp_1797
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1795 = *_temp_1797  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1794 = _temp_1795 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1794) then goto _Label_1798
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1798
!   _temp_1793 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1799
_Label_1798:
!   _temp_1793 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1799:
!   ReturnResult: _temp_1793  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1800
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1802
	.word	12
	.word	4
	.word	_Label_1803
	.word	-16
	.word	4
	.word	_Label_1804
	.word	-20
	.word	4
	.word	_Label_1805
	.word	-24
	.word	4
	.word	_Label_1806
	.word	-28
	.word	4
	.word	_Label_1807
	.word	-9
	.word	1
	.word	0
_Label_1800:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1801:
	.ascii	"Pself\0"
	.align
_Label_1802:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1807:
	.byte	'C'
	.ascii	"_temp_1793\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1246,r13		! source line 1246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
!   _temp_1811 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1811 [entry ] into _temp_1812
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1810 = *_temp_1812  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1809 = _temp_1810 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1809) then goto _Label_1813
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1813
!   _temp_1808 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1814
_Label_1813:
!   _temp_1808 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1814:
!   ReturnResult: _temp_1808  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1815
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	12
	.word	4
	.word	_Label_1818
	.word	-16
	.word	4
	.word	_Label_1819
	.word	-20
	.word	4
	.word	_Label_1820
	.word	-24
	.word	4
	.word	_Label_1821
	.word	-28
	.word	4
	.word	_Label_1822
	.word	-9
	.word	1
	.word	0
_Label_1815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1822:
	.byte	'C'
	.ascii	"_temp_1808\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
!   _temp_1823 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1823 [entry ] into _temp_1824
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1827 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1827 [entry ] into _temp_1828
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1826 = *_temp_1828  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1825 = _temp_1826 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1824 = _temp_1825  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1829
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1831
	.word	12
	.word	4
	.word	_Label_1832
	.word	-12
	.word	4
	.word	_Label_1833
	.word	-16
	.word	4
	.word	_Label_1834
	.word	-20
	.word	4
	.word	_Label_1835
	.word	-24
	.word	4
	.word	_Label_1836
	.word	-28
	.word	4
	.word	_Label_1837
	.word	-32
	.word	4
	.word	0
_Label_1829:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1830:
	.ascii	"Pself\0"
	.align
_Label_1831:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1264,r13		! source line 1264
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0AS",r10
!   _temp_1838 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1838 [entry ] into _temp_1839
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1842 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1842 [entry ] into _temp_1843
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1841 = *_temp_1843  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1840 = _temp_1841 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1839 = _temp_1840  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1844
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1846
	.word	12
	.word	4
	.word	_Label_1847
	.word	-12
	.word	4
	.word	_Label_1848
	.word	-16
	.word	4
	.word	_Label_1849
	.word	-20
	.word	4
	.word	_Label_1850
	.word	-24
	.word	4
	.word	_Label_1851
	.word	-28
	.word	4
	.word	_Label_1852
	.word	-32
	.word	4
	.word	0
_Label_1844:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1845:
	.ascii	"Pself\0"
	.align
_Label_1846:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
!   _temp_1853 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1853 [entry ] into _temp_1854
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1857 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1857 [entry ] into _temp_1858
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1856 = *_temp_1858  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1855 = _temp_1856 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1854 = _temp_1855  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1859
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1861
	.word	12
	.word	4
	.word	_Label_1862
	.word	-12
	.word	4
	.word	_Label_1863
	.word	-16
	.word	4
	.word	_Label_1864
	.word	-20
	.word	4
	.word	_Label_1865
	.word	-24
	.word	4
	.word	_Label_1866
	.word	-28
	.word	4
	.word	_Label_1867
	.word	-32
	.word	4
	.word	0
_Label_1859:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1860:
	.ascii	"Pself\0"
	.align
_Label_1861:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	1282,r13		! source line 1282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1868 [entry ] into _temp_1869
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1872 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1872 [entry ] into _temp_1873
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1871 = *_temp_1873  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1870 = _temp_1871 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1869 = _temp_1870  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1874
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1876
	.word	12
	.word	4
	.word	_Label_1877
	.word	-12
	.word	4
	.word	_Label_1878
	.word	-16
	.word	4
	.word	_Label_1879
	.word	-20
	.word	4
	.word	_Label_1880
	.word	-24
	.word	4
	.word	_Label_1881
	.word	-28
	.word	4
	.word	_Label_1882
	.word	-32
	.word	4
	.word	0
_Label_1874:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1875:
	.ascii	"Pself\0"
	.align
_Label_1876:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1291,r13		! source line 1291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1883 [entry ] into _temp_1884
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1887 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1887 [entry ] into _temp_1888
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1886 = *_temp_1888  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1885 = _temp_1886 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1884 = _temp_1885  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1889
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1891
	.word	12
	.word	4
	.word	_Label_1892
	.word	-12
	.word	4
	.word	_Label_1893
	.word	-16
	.word	4
	.word	_Label_1894
	.word	-20
	.word	4
	.word	_Label_1895
	.word	-24
	.word	4
	.word	_Label_1896
	.word	-28
	.word	4
	.word	_Label_1897
	.word	-32
	.word	4
	.word	0
_Label_1889:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1890:
	.ascii	"Pself\0"
	.align
_Label_1891:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   _temp_1898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1898 [entry ] into _temp_1899
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1902 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1902 [entry ] into _temp_1903
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1901 = *_temp_1903  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1900 = _temp_1901 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1899 = _temp_1900  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1904
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1906
	.word	12
	.word	4
	.word	_Label_1907
	.word	-12
	.word	4
	.word	_Label_1908
	.word	-16
	.word	4
	.word	_Label_1909
	.word	-20
	.word	4
	.word	_Label_1910
	.word	-24
	.word	4
	.word	_Label_1911
	.word	-28
	.word	4
	.word	_Label_1912
	.word	-32
	.word	4
	.word	0
_Label_1904:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1905:
	.ascii	"Pself\0"
	.align
_Label_1906:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0AS",r10
!   _temp_1913 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1913 [entry ] into _temp_1914
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1917 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1917 [entry ] into _temp_1918
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1916 = *_temp_1918  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1915 = _temp_1916 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1914 = _temp_1915  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1919
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1921
	.word	12
	.word	4
	.word	_Label_1922
	.word	-12
	.word	4
	.word	_Label_1923
	.word	-16
	.word	4
	.word	_Label_1924
	.word	-20
	.word	4
	.word	_Label_1925
	.word	-24
	.word	4
	.word	_Label_1926
	.word	-28
	.word	4
	.word	_Label_1927
	.word	-32
	.word	4
	.word	0
_Label_1919:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1920:
	.ascii	"Pself\0"
	.align
_Label_1921:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   _temp_1928 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1928 [entry ] into _temp_1929
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1932 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1932 [entry ] into _temp_1933
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1931 = *_temp_1933  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1930 = _temp_1931 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1929 = _temp_1930  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1934
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1936
	.word	12
	.word	4
	.word	_Label_1937
	.word	-12
	.word	4
	.word	_Label_1938
	.word	-16
	.word	4
	.word	_Label_1939
	.word	-20
	.word	4
	.word	_Label_1940
	.word	-24
	.word	4
	.word	_Label_1941
	.word	-28
	.word	4
	.word	_Label_1942
	.word	-32
	.word	4
	.word	0
_Label_1934:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1935:
	.ascii	"Pself\0"
	.align
_Label_1936:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1944 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1944 [0 ] into _temp_1945
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1943 = _temp_1945		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1946 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1946  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1947
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1948
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1949
	.word	-12
	.word	4
	.word	_Label_1950
	.word	-16
	.word	4
	.word	_Label_1951
	.word	-20
	.word	4
	.word	_Label_1952
	.word	-24
	.word	4
	.word	0
_Label_1947:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1948:
	.ascii	"Pself\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1953
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1953
	jmp	_Label_1954
_Label_1953:
! THEN...
	mov	1354,r13		! source line 1354
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1955
_Label_1954:
! ELSE...
	mov	1355,r13		! source line 1355
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1957		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1957
!	jmp	_Label_1956
_Label_1956:
! THEN...
	mov	1356,r13		! source line 1356
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1957:
! END IF...
_Label_1955:
! ASSIGNMENT STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0WH",r10
_Label_1958:
!	jmp	_Label_1959
_Label_1959:
	mov	1362,r13		! source line 1362
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1962		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1962
!	jmp	_Label_1961
_Label_1961:
! THEN...
	mov	1364,r13		! source line 1364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1963 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1962:
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1967) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1966  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1966 then goto _Label_1965 else goto _Label_1964
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1964
	jmp	_Label_1965
_Label_1964:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1968 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1968  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1965:
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0AS",r10
	mov	1371,r13		! source line 1371
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1970) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1969  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1969 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0WH",r10
_Label_1971:
!   if offset >= 8192 then goto _Label_1973		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1973
!	jmp	_Label_1972
_Label_1972:
	mov	1373,r13		! source line 1373
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1974 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1974  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1976		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1976
!	jmp	_Label_1975
_Label_1975:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1976:
! END WHILE...
	jmp	_Label_1971
_Label_1973:
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1958
_Label_1960:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1977
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1979
	.word	12
	.word	4
	.word	_Label_1980
	.word	16
	.word	4
	.word	_Label_1981
	.word	20
	.word	4
	.word	_Label_1982
	.word	-9
	.word	1
	.word	_Label_1983
	.word	-16
	.word	4
	.word	_Label_1984
	.word	-20
	.word	4
	.word	_Label_1985
	.word	-24
	.word	4
	.word	_Label_1986
	.word	-28
	.word	4
	.word	_Label_1987
	.word	-10
	.word	1
	.word	_Label_1988
	.word	-32
	.word	4
	.word	_Label_1989
	.word	-36
	.word	4
	.word	_Label_1990
	.word	-40
	.word	4
	.word	_Label_1991
	.word	-44
	.word	4
	.word	_Label_1992
	.word	-48
	.word	4
	.word	0
_Label_1977:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1978:
	.ascii	"Pself\0"
	.align
_Label_1979:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1980:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1982:
	.byte	'C'
	.ascii	"_temp_1974\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1987:
	.byte	'C'
	.ascii	"_temp_1966\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1990:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1991:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1992:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1993
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1993
	jmp	_Label_1994
_Label_1993:
! THEN...
	mov	1404,r13		! source line 1404
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1995
_Label_1994:
! ELSE...
	mov	1405,r13		! source line 1405
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1997		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1997
!	jmp	_Label_1996
_Label_1996:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1997:
! END IF...
_Label_1995:
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0WH",r10
_Label_1998:
!	jmp	_Label_1999
_Label_1999:
	mov	1410,r13		! source line 1410
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2004		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2004
	jmp	_Label_2001
_Label_2004:
	mov	1412,r13		! source line 1412
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2006) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2005  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2005 then goto _Label_2003 else goto _Label_2001
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2001
	jmp	_Label_2003
_Label_2003:
	mov	1413,r13		! source line 1413
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2008) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2007 then goto _Label_2002 else goto _Label_2001
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2001
	jmp	_Label_2002
_Label_2001:
! THEN...
	mov	1414,r13		! source line 1414
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2002:
! ASSIGNMENT STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0AS",r10
	mov	1416,r13		! source line 1416
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2010) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2009  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2009 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0WH",r10
_Label_2011:
!   if offset >= 8192 then goto _Label_2013		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2013
!	jmp	_Label_2012
_Label_2012:
	mov	1417,r13		! source line 1417
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2014 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2014  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2016		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2016
!	jmp	_Label_2015
_Label_2015:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2016:
! END WHILE...
	jmp	_Label_2011
_Label_2013:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1998
_Label_2000:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2017
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2019
	.word	12
	.word	4
	.word	_Label_2020
	.word	16
	.word	4
	.word	_Label_2021
	.word	20
	.word	4
	.word	_Label_2022
	.word	-9
	.word	1
	.word	_Label_2023
	.word	-16
	.word	4
	.word	_Label_2024
	.word	-20
	.word	4
	.word	_Label_2025
	.word	-24
	.word	4
	.word	_Label_2026
	.word	-10
	.word	1
	.word	_Label_2027
	.word	-28
	.word	4
	.word	_Label_2028
	.word	-11
	.word	1
	.word	_Label_2029
	.word	-32
	.word	4
	.word	_Label_2030
	.word	-36
	.word	4
	.word	_Label_2031
	.word	-40
	.word	4
	.word	_Label_2032
	.word	-44
	.word	4
	.word	0
_Label_2017:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2018:
	.ascii	"Pself\0"
	.align
_Label_2019:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2020:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2021:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2022:
	.byte	'C'
	.ascii	"_temp_2014\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2026:
	.byte	'C'
	.ascii	"_temp_2007\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2028:
	.byte	'C'
	.ascii	"_temp_2005\0"
	.align
_Label_2029:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2031:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0IF",r10
	mov	1458,r13		! source line 1458
	mov	"\0\0SE",r10
!   _temp_2036 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2037) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2036  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2035  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2035 >= 4 then goto _Label_2034		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2034
!	jmp	_Label_2033
_Label_2033:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2034:
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2039		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2039
!	jmp	_Label_2038
_Label_2038:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2039:
! ASSIGNMENT STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
	mov	1471,r13		! source line 1471
	mov	"\0\0SE",r10
!   _temp_2042 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2041 = _temp_2042 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2043 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2044) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2041  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2043  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2040  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2040  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2045
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2047
	.word	12
	.word	4
	.word	_Label_2048
	.word	16
	.word	4
	.word	_Label_2049
	.word	20
	.word	4
	.word	_Label_2050
	.word	-12
	.word	4
	.word	_Label_2051
	.word	-16
	.word	4
	.word	_Label_2052
	.word	-20
	.word	4
	.word	_Label_2053
	.word	-24
	.word	4
	.word	_Label_2054
	.word	-28
	.word	4
	.word	_Label_2055
	.word	-32
	.word	4
	.word	_Label_2056
	.word	-36
	.word	4
	.word	_Label_2057
	.word	-40
	.word	4
	.word	_Label_2058
	.word	-44
	.word	4
	.word	0
_Label_2045:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2046:
	.ascii	"Pself\0"
	.align
_Label_2047:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2048:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2049:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2058:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2059
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2059:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2060
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2060:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1932,r13		! source line 1932
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2061 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0SE",r10
!   _temp_2063 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0SE",r10
!   _temp_2065 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2066
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2067
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2068
	.word	-12
	.word	4
	.word	_Label_2069
	.word	-16
	.word	4
	.word	_Label_2070
	.word	-20
	.word	4
	.word	_Label_2071
	.word	-24
	.word	4
	.word	_Label_2072
	.word	-28
	.word	4
	.word	0
_Label_2066:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2067:
	.ascii	"Pself\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1948,r13		! source line 1948
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0SE",r10
!   _temp_2073 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0WH",r10
_Label_2074:
!	jmp	_Label_2075
_Label_2075:
	mov	1962,r13		! source line 1962
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0SE",r10
!   _temp_2077 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2078) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2077  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0SE",r10
!   _temp_2079 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	1969,r13		! source line 1969
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2088 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2082
	cmp	r1,2
	be	_Label_2083
	cmp	r1,3
	be	_Label_2084
	cmp	r1,4
	be	_Label_2085
	cmp	r1,5
	be	_Label_2086
	cmp	r1,6
	be	_Label_2087
	jmp	_Label_2080
! CASE 1...
_Label_2082:
! SEND STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0SE",r10
!   _temp_2089 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2083:
! CALL STATEMENT...
!   _temp_2090 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2090  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1974,r13		! source line 1974
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2084:
! CALL STATEMENT...
!   _temp_2091 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2091  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1976,r13		! source line 1976
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2085:
! CALL STATEMENT...
!   _temp_2092 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1978,r13		! source line 1978
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2086:
! BREAK STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0BR",r10
	jmp	_Label_2081
! CASE 6...
_Label_2087:
! CALL STATEMENT...
!   _temp_2093 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2093  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1984,r13		! source line 1984
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2080:
! CALL STATEMENT...
!   _temp_2094 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2094  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1986,r13		! source line 1986
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2081:
! END WHILE...
	jmp	_Label_2074
_Label_2076:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2095
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2097
	.word	12
	.word	4
	.word	_Label_2098
	.word	16
	.word	4
	.word	_Label_2099
	.word	20
	.word	4
	.word	_Label_2100
	.word	-12
	.word	4
	.word	_Label_2101
	.word	-16
	.word	4
	.word	_Label_2102
	.word	-20
	.word	4
	.word	_Label_2103
	.word	-24
	.word	4
	.word	_Label_2104
	.word	-28
	.word	4
	.word	_Label_2105
	.word	-32
	.word	4
	.word	_Label_2106
	.word	-36
	.word	4
	.word	_Label_2107
	.word	-40
	.word	4
	.word	_Label_2108
	.word	-44
	.word	4
	.word	_Label_2109
	.word	-48
	.word	4
	.word	_Label_2110
	.word	-52
	.word	4
	.word	0
_Label_2095:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2096:
	.ascii	"Pself\0"
	.align
_Label_2097:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2098:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2099:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	1995,r13		! source line 1995
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2111
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2113
	.word	12
	.word	4
	.word	_Label_2114
	.word	16
	.word	4
	.word	_Label_2115
	.word	20
	.word	4
	.word	_Label_2116
	.word	24
	.word	4
	.word	0
_Label_2111:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2112:
	.ascii	"Pself\0"
	.align
_Label_2113:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2115:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2116:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	2021,r13		! source line 2021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0SE",r10
!   _temp_2117 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0WH",r10
_Label_2118:
!	jmp	_Label_2119
_Label_2119:
	mov	2034,r13		! source line 2034
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0SE",r10
!   _temp_2121 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2122) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2121  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
!   _temp_2123 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2040,r13		! source line 2040
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2132 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2126
	cmp	r1,2
	be	_Label_2127
	cmp	r1,3
	be	_Label_2128
	cmp	r1,4
	be	_Label_2129
	cmp	r1,5
	be	_Label_2130
	cmp	r1,6
	be	_Label_2131
	jmp	_Label_2124
! CASE 1...
_Label_2126:
! SEND STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0SE",r10
!   _temp_2133 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2127:
! CALL STATEMENT...
!   _temp_2134 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2134  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2045,r13		! source line 2045
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2128:
! CALL STATEMENT...
!   _temp_2135 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2135  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2047,r13		! source line 2047
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2129:
! CALL STATEMENT...
!   _temp_2136 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2136  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2049,r13		! source line 2049
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2130:
! BREAK STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0BR",r10
	jmp	_Label_2125
! CASE 6...
_Label_2131:
! CALL STATEMENT...
!   _temp_2137 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2055,r13		! source line 2055
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2124:
! CALL STATEMENT...
!   _temp_2138 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2138  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2057,r13		! source line 2057
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2125:
! END WHILE...
	jmp	_Label_2118
_Label_2120:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2139
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2141
	.word	12
	.word	4
	.word	_Label_2142
	.word	16
	.word	4
	.word	_Label_2143
	.word	20
	.word	4
	.word	_Label_2144
	.word	-12
	.word	4
	.word	_Label_2145
	.word	-16
	.word	4
	.word	_Label_2146
	.word	-20
	.word	4
	.word	_Label_2147
	.word	-24
	.word	4
	.word	_Label_2148
	.word	-28
	.word	4
	.word	_Label_2149
	.word	-32
	.word	4
	.word	_Label_2150
	.word	-36
	.word	4
	.word	_Label_2151
	.word	-40
	.word	4
	.word	_Label_2152
	.word	-44
	.word	4
	.word	_Label_2153
	.word	-48
	.word	4
	.word	_Label_2154
	.word	-52
	.word	4
	.word	0
_Label_2139:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2140:
	.ascii	"Pself\0"
	.align
_Label_2141:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2142:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2143:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2066,r13		! source line 2066
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2155
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2157
	.word	12
	.word	4
	.word	_Label_2158
	.word	16
	.word	4
	.word	_Label_2159
	.word	20
	.word	4
	.word	_Label_2160
	.word	24
	.word	4
	.word	0
_Label_2155:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2156:
	.ascii	"Pself\0"
	.align
_Label_2157:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2158:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2159:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2160:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2161
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2161:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2162
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2162:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	2097,r13		! source line 2097
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2163 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2163  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2104,r13		! source line 2104
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0SE",r10
!   _temp_2165 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   _temp_2168 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   _temp_2169 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2171 = &_temp_2170
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2171 = _temp_2171 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2173 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3077:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3077
!   _temp_2173 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2175:
!   Data Move: *_temp_2171 = _temp_2173  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3078:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3078
!   _temp_2171 = _temp_2171 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2172 = _temp_2172 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2172) then goto _Label_2175
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2175
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2176 = &_temp_2170
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3079
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3079:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2169 = *_temp_2176  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3080:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3080
! FOR STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2181 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2182 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2181  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2177:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2182 then goto _Label_2180		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2180
_Label_2178:
	mov	2114,r13		! source line 2114
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   _temp_2183 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2183 [i ] into _temp_2184
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2185 = _temp_2184 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2185 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   _temp_2186 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2186 [i ] into _temp_2187
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0SE",r10
!   _temp_2189 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2189 [i ] into _temp_2190
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2188 = _temp_2190		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2191 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2188  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2179:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2177
! END FOR
_Label_2180:
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   _temp_2194 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   _temp_2195 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2197 = &_temp_2196
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2197 = _temp_2197 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2199 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3081:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3081
!   _temp_2199 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2201:
!   Data Move: *_temp_2197 = _temp_2199  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3082:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3082
!   _temp_2197 = _temp_2197 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2198 = _temp_2198 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2198) then goto _Label_2201
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2201
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2202 = &_temp_2196
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3083
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3083:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2195 = *_temp_2202  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3084:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3084
! FOR STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2207 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2208 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2207  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2203:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2208 then goto _Label_2206		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2206
_Label_2204:
	mov	2126,r13		! source line 2126
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   _temp_2209 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2209 [i ] into _temp_2210
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2211 = _temp_2210 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2211 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2213 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2213 [i ] into _temp_2214
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2212 = _temp_2214		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2215 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2212  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2205:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2203
! END FOR
_Label_2206:
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3085:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3085
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   _temp_2217 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2218 = _temp_2217 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2218 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
	mov	2138,r13		! source line 2138
	mov	"\0\0SE",r10
!   _temp_2219 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0SE",r10
!   _temp_2220 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2221
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2222
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2223
	.word	-12
	.word	4
	.word	_Label_2224
	.word	-16
	.word	4
	.word	_Label_2225
	.word	-20
	.word	4
	.word	_Label_2226
	.word	-24
	.word	4
	.word	_Label_2227
	.word	-28
	.word	4
	.word	_Label_2228
	.word	-32
	.word	4
	.word	_Label_2229
	.word	-36
	.word	4
	.word	_Label_2230
	.word	-40
	.word	4
	.word	_Label_2231
	.word	-44
	.word	4
	.word	_Label_2232
	.word	-48
	.word	4
	.word	_Label_2233
	.word	-52
	.word	4
	.word	_Label_2234
	.word	-56
	.word	4
	.word	_Label_2235
	.word	-60
	.word	4
	.word	_Label_2236
	.word	-64
	.word	4
	.word	_Label_2237
	.word	-68
	.word	4
	.word	_Label_2238
	.word	-72
	.word	4
	.word	_Label_2239
	.word	-100
	.word	28
	.word	_Label_2240
	.word	-104
	.word	4
	.word	_Label_2241
	.word	-108
	.word	4
	.word	_Label_2242
	.word	-392
	.word	284
	.word	_Label_2243
	.word	-396
	.word	4
	.word	_Label_2244
	.word	-400
	.word	4
	.word	_Label_2245
	.word	-404
	.word	4
	.word	_Label_2246
	.word	-408
	.word	4
	.word	_Label_2247
	.word	-412
	.word	4
	.word	_Label_2248
	.word	-416
	.word	4
	.word	_Label_2249
	.word	-420
	.word	4
	.word	_Label_2250
	.word	-424
	.word	4
	.word	_Label_2251
	.word	-428
	.word	4
	.word	_Label_2252
	.word	-432
	.word	4
	.word	_Label_2253
	.word	-436
	.word	4
	.word	_Label_2254
	.word	-440
	.word	4
	.word	_Label_2255
	.word	-444
	.word	4
	.word	_Label_2256
	.word	-448
	.word	4
	.word	_Label_2257
	.word	-452
	.word	4
	.word	_Label_2258
	.word	-456
	.word	4
	.word	_Label_2259
	.word	-460
	.word	4
	.word	_Label_2260
	.word	-500
	.word	40
	.word	_Label_2261
	.word	-504
	.word	4
	.word	_Label_2262
	.word	-508
	.word	4
	.word	_Label_2263
	.word	-912
	.word	404
	.word	_Label_2264
	.word	-916
	.word	4
	.word	_Label_2265
	.word	-920
	.word	4
	.word	_Label_2266
	.word	-924
	.word	4
	.word	_Label_2267
	.word	-928
	.word	4
	.word	_Label_2268
	.word	-932
	.word	4
	.word	_Label_2269
	.word	-936
	.word	4
	.word	_Label_2270
	.word	-940
	.word	4
	.word	_Label_2271
	.word	-944
	.word	4
	.word	0
_Label_2221:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2222:
	.ascii	"Pself\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2271:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	2146,r13		! source line 2146
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0SE",r10
!   _temp_2272 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2273 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2273  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2149,r13		! source line 2149
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2278 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2279 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2278  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2274:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2279 then goto _Label_2277		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2277
_Label_2275:
	mov	2150,r13		! source line 2150
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2280 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2152,r13		! source line 2152
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2281 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2281  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2153,r13		! source line 2153
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0SE",r10
!   _temp_2282 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2282 [i ] into _temp_2283
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2276:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2274
! END FOR
_Label_2277:
! CALL STATEMENT...
!   _temp_2284 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2284  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2156,r13		! source line 2156
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_2285 = _function_207_printFCB
	set	_function_207_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2286 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2285  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2158,r13		! source line 2158
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2287 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2287  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2159,r13		! source line 2159
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2292 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2293 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2292  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2288:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2293 then goto _Label_2291		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2291
_Label_2289:
	mov	2160,r13		! source line 2160
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2294 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2294  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2295 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2297 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2297 [i ] into _temp_2298
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2296 = _temp_2298		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2296  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2164,r13		! source line 2164
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2299 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2299  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2165,r13		! source line 2165
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2300 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2300 [i ] into _temp_2301
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2290:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2288
! END FOR
_Label_2291:
! CALL STATEMENT...
!   _temp_2302 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2168,r13		! source line 2168
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2303 = _function_206_printOpen
	set	_function_206_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2304 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2303  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0SE",r10
!   _temp_2305 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2306
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2307
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2308
	.word	-12
	.word	4
	.word	_Label_2309
	.word	-16
	.word	4
	.word	_Label_2310
	.word	-20
	.word	4
	.word	_Label_2311
	.word	-24
	.word	4
	.word	_Label_2312
	.word	-28
	.word	4
	.word	_Label_2313
	.word	-32
	.word	4
	.word	_Label_2314
	.word	-36
	.word	4
	.word	_Label_2315
	.word	-40
	.word	4
	.word	_Label_2316
	.word	-44
	.word	4
	.word	_Label_2317
	.word	-48
	.word	4
	.word	_Label_2318
	.word	-52
	.word	4
	.word	_Label_2319
	.word	-56
	.word	4
	.word	_Label_2320
	.word	-60
	.word	4
	.word	_Label_2321
	.word	-64
	.word	4
	.word	_Label_2322
	.word	-68
	.word	4
	.word	_Label_2323
	.word	-72
	.word	4
	.word	_Label_2324
	.word	-76
	.word	4
	.word	_Label_2325
	.word	-80
	.word	4
	.word	_Label_2326
	.word	-84
	.word	4
	.word	_Label_2327
	.word	-88
	.word	4
	.word	_Label_2328
	.word	-92
	.word	4
	.word	_Label_2329
	.word	-96
	.word	4
	.word	_Label_2330
	.word	-100
	.word	4
	.word	_Label_2331
	.word	-104
	.word	4
	.word	_Label_2332
	.word	-108
	.word	4
	.word	_Label_2333
	.word	-112
	.word	4
	.word	_Label_2334
	.word	-116
	.word	4
	.word	0
_Label_2306:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2307:
	.ascii	"Pself\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	2175,r13		! source line 2175
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2335 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2336
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2336
	jmp	_Label_2337
_Label_2336:
! THEN...
	mov	2193,r13		! source line 2193
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2337:
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2338 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0WH",r10
_Label_2339:
	mov	2198,r13		! source line 2198
	mov	"\0\0SE",r10
!   _temp_2342 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2340 else goto _Label_2341
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2341
	jmp	_Label_2340
_Label_2340:
	mov	2198,r13		! source line 2198
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_2343 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2344 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2343  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2339
_Label_2341:
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
	mov	2201,r13		! source line 2201
	mov	"\0\0SE",r10
!   _temp_2345 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2346 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2346 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2347 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2347 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2348 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2348 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_2349 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2350
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2352
	.word	12
	.word	4
	.word	_Label_2353
	.word	-12
	.word	4
	.word	_Label_2354
	.word	-16
	.word	4
	.word	_Label_2355
	.word	-20
	.word	4
	.word	_Label_2356
	.word	-24
	.word	4
	.word	_Label_2357
	.word	-28
	.word	4
	.word	_Label_2358
	.word	-32
	.word	4
	.word	_Label_2359
	.word	-36
	.word	4
	.word	_Label_2360
	.word	-40
	.word	4
	.word	_Label_2361
	.word	-44
	.word	4
	.word	_Label_2362
	.word	-48
	.word	4
	.word	_Label_2363
	.word	-52
	.word	4
	.word	_Label_2364
	.word	-56
	.word	4
	.word	0
_Label_2350:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2351:
	.ascii	"Pself\0"
	.align
_Label_2352:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2363:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2364:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	2216,r13		! source line 2216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2366		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2366
!	jmp	_Label_2365
_Label_2365:
! THEN...
	mov	2247,r13		! source line 2247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2367 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2247,r13		! source line 2247
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2366:
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0WH",r10
_Label_2368:
!   if numFiles <= 0 then goto _Label_2370		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2370
!	jmp	_Label_2369
_Label_2369:
	mov	2257,r13		! source line 2257
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2371 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2371  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2372 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2372  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2260,r13		! source line 2260
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2373 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2262,r13		! source line 2262
	mov	"\0\0CA",r10
	call	_function_208_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2377 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2377 then goto _Label_2375		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2375
!	jmp	_Label_2376
_Label_2376:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2379
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2378 = _temp_2379		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2378  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2265,r13		! source line 2265
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2374 else goto _Label_2375
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2375
	jmp	_Label_2374
_Label_2374:
! THEN...
	mov	2266,r13		! source line 2266
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0BR",r10
	jmp	_Label_2370
! END IF...
_Label_2375:
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2368
_Label_2370:
! IF STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2381		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2381
!	jmp	_Label_2380
_Label_2380:
! THEN...
	mov	2274,r13		! source line 2274
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2381:
! SEND STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2382 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2387 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2388 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2387  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2383:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2388 then goto _Label_2386		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2386
_Label_2384:
	mov	2279,r13		! source line 2279
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   _temp_2389 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2389 [i ] into _temp_2390
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2390		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2394 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2393 = *_temp_2394  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2393 != start then goto _Label_2392		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2392
!	jmp	_Label_2391
_Label_2391:
! THEN...
	mov	2282,r13		! source line 2282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2398 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2397 = *_temp_2398  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2396 = _temp_2397 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2395 = _temp_2396  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2399 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2392:
!   Increment the FOR-LOOP index variable and jump back
_Label_2385:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2383
! END FOR
_Label_2386:
! WHILE STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0WH",r10
_Label_2400:
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2403 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2401 else goto _Label_2402
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2402
	jmp	_Label_2401
_Label_2401:
	mov	2289,r13		! source line 2289
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_2404 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2405 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2404  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2400
_Label_2402:
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2406 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2407 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2408 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2408 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2409 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2409 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2410 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2410 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2415 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2414 = *_temp_2415  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2414 < 0 then goto _Label_2413		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2413
	jmp	_Label_2411
_Label_2413:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2416 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2416 ) then goto _Label_2412		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2412
!	jmp	_Label_2411
_Label_2411:
! THEN...
	mov	2302,r13		! source line 2302
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2417 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2417  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2302,r13		! source line 2302
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2412:
! RETURN STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2418
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2420
	.word	12
	.word	4
	.word	_Label_2421
	.word	-12
	.word	4
	.word	_Label_2422
	.word	-16
	.word	4
	.word	_Label_2423
	.word	-20
	.word	4
	.word	_Label_2424
	.word	-24
	.word	4
	.word	_Label_2425
	.word	-28
	.word	4
	.word	_Label_2426
	.word	-32
	.word	4
	.word	_Label_2427
	.word	-36
	.word	4
	.word	_Label_2428
	.word	-40
	.word	4
	.word	_Label_2429
	.word	-44
	.word	4
	.word	_Label_2430
	.word	-48
	.word	4
	.word	_Label_2431
	.word	-52
	.word	4
	.word	_Label_2432
	.word	-56
	.word	4
	.word	_Label_2433
	.word	-60
	.word	4
	.word	_Label_2434
	.word	-64
	.word	4
	.word	_Label_2435
	.word	-68
	.word	4
	.word	_Label_2436
	.word	-72
	.word	4
	.word	_Label_2437
	.word	-76
	.word	4
	.word	_Label_2438
	.word	-80
	.word	4
	.word	_Label_2439
	.word	-84
	.word	4
	.word	_Label_2440
	.word	-88
	.word	4
	.word	_Label_2441
	.word	-92
	.word	4
	.word	_Label_2442
	.word	-96
	.word	4
	.word	_Label_2443
	.word	-100
	.word	4
	.word	_Label_2444
	.word	-104
	.word	4
	.word	_Label_2445
	.word	-108
	.word	4
	.word	_Label_2446
	.word	-112
	.word	4
	.word	_Label_2447
	.word	-116
	.word	4
	.word	_Label_2448
	.word	-120
	.word	4
	.word	_Label_2449
	.word	-124
	.word	4
	.word	_Label_2450
	.word	-128
	.word	4
	.word	_Label_2451
	.word	-132
	.word	4
	.word	_Label_2452
	.word	-136
	.word	4
	.word	_Label_2453
	.word	-140
	.word	4
	.word	_Label_2454
	.word	-144
	.word	4
	.word	_Label_2455
	.word	-148
	.word	4
	.word	_Label_2456
	.word	-152
	.word	4
	.word	_Label_2457
	.word	-156
	.word	4
	.word	_Label_2458
	.word	-160
	.word	4
	.word	0
_Label_2418:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2419:
	.ascii	"Pself\0"
	.align
_Label_2420:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2452:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2453:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2454:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2455:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2457:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2458:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	2317,r13		! source line 2317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0IF",r10
!   _temp_2461 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2461 then goto _Label_2460		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2460
!	jmp	_Label_2459
_Label_2459:
! THEN...
	mov	2320,r13		! source line 2320
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2460:
! SEND STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   _temp_2462 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2463 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2464 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2464  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2465 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2468 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2467 = *_temp_2468  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2466 = _temp_2467 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2465 = _temp_2466  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2472 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2471 = *_temp_2472  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2471 > 0 then goto _Label_2470		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2470
!	jmp	_Label_2469
_Label_2469:
! THEN...
	mov	2327,r13		! source line 2327
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2473 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2474 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2475 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2474  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2476 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2479 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2478 = *_temp_2479  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2477 = _temp_2478 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2476 = _temp_2477  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2482 = *_temp_2483  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2482 > 0 then goto _Label_2481		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2481
!	jmp	_Label_2480
_Label_2480:
! THEN...
	mov	2331,r13		! source line 2331
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0SE",r10
!   _temp_2484 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0SE",r10
!   _temp_2485 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2486 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2485  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2481:
! END IF...
_Label_2470:
! SEND STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
!   _temp_2487 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2488
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2490
	.word	12
	.word	4
	.word	_Label_2491
	.word	-12
	.word	4
	.word	_Label_2492
	.word	-16
	.word	4
	.word	_Label_2493
	.word	-20
	.word	4
	.word	_Label_2494
	.word	-24
	.word	4
	.word	_Label_2495
	.word	-28
	.word	4
	.word	_Label_2496
	.word	-32
	.word	4
	.word	_Label_2497
	.word	-36
	.word	4
	.word	_Label_2498
	.word	-40
	.word	4
	.word	_Label_2499
	.word	-44
	.word	4
	.word	_Label_2500
	.word	-48
	.word	4
	.word	_Label_2501
	.word	-52
	.word	4
	.word	_Label_2502
	.word	-56
	.word	4
	.word	_Label_2503
	.word	-60
	.word	4
	.word	_Label_2504
	.word	-64
	.word	4
	.word	_Label_2505
	.word	-68
	.word	4
	.word	_Label_2506
	.word	-72
	.word	4
	.word	_Label_2507
	.word	-76
	.word	4
	.word	_Label_2508
	.word	-80
	.word	4
	.word	_Label_2509
	.word	-84
	.word	4
	.word	_Label_2510
	.word	-88
	.word	4
	.word	_Label_2511
	.word	-92
	.word	4
	.word	_Label_2512
	.word	-96
	.word	4
	.word	_Label_2513
	.word	-100
	.word	4
	.word	_Label_2514
	.word	-104
	.word	4
	.word	0
_Label_2488:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2489:
	.ascii	"Pself\0"
	.align
_Label_2490:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2514:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	2340,r13		! source line 2340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2518 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2517 = *_temp_2518  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2517) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = _temp_2517 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2519 ) then goto _Label_2516		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2516
!	jmp	_Label_2515
_Label_2515:
! THEN...
	mov	2346,r13		! source line 2346
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2524 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2523 = *_temp_2524  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2523) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2525 = _temp_2523 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2522 = *_temp_2525  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2522 >= 0 then goto _Label_2521		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2521
!	jmp	_Label_2520
_Label_2520:
! THEN...
	mov	2347,r13		! source line 2347
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2526 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2526  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2347,r13		! source line 2347
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2521:
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2528 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2527 = *_temp_2528  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2527) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2529 = _temp_2527 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2529 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2533 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2532 = *_temp_2533  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2532) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2534 = _temp_2532 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2531 = *_temp_2534  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2537 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2536 = *_temp_2537  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2536) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2538 = _temp_2536 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2535 = *_temp_2538  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2530 = _temp_2531 + _temp_2535		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2541 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2540 = *_temp_2541  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2540) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2542 = _temp_2540 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2539 = *_temp_2542  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2543 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2530  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2539  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2516:
! RETURN STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2544
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2546
	.word	12
	.word	4
	.word	_Label_2547
	.word	-12
	.word	4
	.word	_Label_2548
	.word	-16
	.word	4
	.word	_Label_2549
	.word	-20
	.word	4
	.word	_Label_2550
	.word	-24
	.word	4
	.word	_Label_2551
	.word	-28
	.word	4
	.word	_Label_2552
	.word	-32
	.word	4
	.word	_Label_2553
	.word	-36
	.word	4
	.word	_Label_2554
	.word	-40
	.word	4
	.word	_Label_2555
	.word	-44
	.word	4
	.word	_Label_2556
	.word	-48
	.word	4
	.word	_Label_2557
	.word	-52
	.word	4
	.word	_Label_2558
	.word	-56
	.word	4
	.word	_Label_2559
	.word	-60
	.word	4
	.word	_Label_2560
	.word	-64
	.word	4
	.word	_Label_2561
	.word	-68
	.word	4
	.word	_Label_2562
	.word	-72
	.word	4
	.word	_Label_2563
	.word	-76
	.word	4
	.word	_Label_2564
	.word	-80
	.word	4
	.word	_Label_2565
	.word	-84
	.word	4
	.word	_Label_2566
	.word	-88
	.word	4
	.word	_Label_2567
	.word	-92
	.word	4
	.word	_Label_2568
	.word	-96
	.word	4
	.word	_Label_2569
	.word	-100
	.word	4
	.word	_Label_2570
	.word	-104
	.word	4
	.word	_Label_2571
	.word	-108
	.word	4
	.word	0
_Label_2544:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2545:
	.ascii	"Pself\0"
	.align
_Label_2546:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	2359,r13		! source line 2359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   _temp_2572 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2578		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2578
!   _temp_2577 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2579
_Label_2578:
!   _temp_2577 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2579:
!   if _temp_2577 then goto _Label_2576 else goto _Label_2573
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2573
	jmp	_Label_2576
_Label_2576:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2582 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2581 = *_temp_2582  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2581 == 0 then goto _Label_2583		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2583
!   _temp_2580 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2584
_Label_2583:
!   _temp_2580 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2584:
!   if _temp_2580 then goto _Label_2575 else goto _Label_2573
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2573
	jmp	_Label_2575
_Label_2575:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2587 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2586 = *_temp_2587  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2586) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2588 = _temp_2586 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2585 = *_temp_2588  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2585 >= 0 then goto _Label_2574		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2574
!	jmp	_Label_2573
_Label_2573:
! THEN...
	mov	2376,r13		! source line 2376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2589 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2589  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2376,r13		! source line 2376
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2574:
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2590 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2590  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0WH",r10
_Label_2591:
!   if numBytes <= 0 then goto _Label_2593		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2593
!	jmp	_Label_2592
_Label_2592:
	mov	2379,r13		! source line 2379
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2597 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2596 = *_temp_2597  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2596 == sector then goto _Label_2595		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2595
!	jmp	_Label_2594
_Label_2594:
! THEN...
	mov	2394,r13		! source line 2394
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2598) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2600 = *_temp_2601  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2599 = sector + _temp_2600		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2603 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2602 = *_temp_2603  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2604 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2599  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2602  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2605 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2605 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2606 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2606 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2595:
! ASSIGNMENT STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2607 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2607 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0AS",r10
!   _temp_2609 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2609  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2403,r13		! source line 2403
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2407,r13		! source line 2407
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2591
_Label_2593:
! SEND STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_2610 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2611
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2613
	.word	12
	.word	4
	.word	_Label_2614
	.word	16
	.word	4
	.word	_Label_2615
	.word	20
	.word	4
	.word	_Label_2616
	.word	24
	.word	4
	.word	_Label_2617
	.word	-16
	.word	4
	.word	_Label_2618
	.word	-20
	.word	4
	.word	_Label_2619
	.word	-24
	.word	4
	.word	_Label_2620
	.word	-28
	.word	4
	.word	_Label_2621
	.word	-32
	.word	4
	.word	_Label_2622
	.word	-36
	.word	4
	.word	_Label_2623
	.word	-40
	.word	4
	.word	_Label_2624
	.word	-44
	.word	4
	.word	_Label_2625
	.word	-48
	.word	4
	.word	_Label_2626
	.word	-52
	.word	4
	.word	_Label_2627
	.word	-56
	.word	4
	.word	_Label_2628
	.word	-60
	.word	4
	.word	_Label_2629
	.word	-64
	.word	4
	.word	_Label_2630
	.word	-68
	.word	4
	.word	_Label_2631
	.word	-72
	.word	4
	.word	_Label_2632
	.word	-76
	.word	4
	.word	_Label_2633
	.word	-80
	.word	4
	.word	_Label_2634
	.word	-84
	.word	4
	.word	_Label_2635
	.word	-88
	.word	4
	.word	_Label_2636
	.word	-92
	.word	4
	.word	_Label_2637
	.word	-96
	.word	4
	.word	_Label_2638
	.word	-100
	.word	4
	.word	_Label_2639
	.word	-104
	.word	4
	.word	_Label_2640
	.word	-9
	.word	1
	.word	_Label_2641
	.word	-10
	.word	1
	.word	_Label_2642
	.word	-108
	.word	4
	.word	_Label_2643
	.word	-112
	.word	4
	.word	_Label_2644
	.word	-116
	.word	4
	.word	_Label_2645
	.word	-120
	.word	4
	.word	_Label_2646
	.word	-124
	.word	4
	.word	_Label_2647
	.word	-128
	.word	4
	.word	0
_Label_2611:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2612:
	.ascii	"Pself\0"
	.align
_Label_2613:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2614:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2615:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2616:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2640:
	.byte	'C'
	.ascii	"_temp_2580\0"
	.align
_Label_2641:
	.byte	'C'
	.ascii	"_temp_2577\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2643:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2644:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2645:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2646:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2647:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	2423,r13		! source line 2423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   _temp_2648 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2654		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2654
!   _temp_2653 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2655
_Label_2654:
!   _temp_2653 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2655:
!   if _temp_2653 then goto _Label_2652 else goto _Label_2649
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2649
	jmp	_Label_2652
_Label_2652:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2657 = *_temp_2658  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2657 == 0 then goto _Label_2659		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2659
!   _temp_2656 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2660
_Label_2659:
!   _temp_2656 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2660:
!   if _temp_2656 then goto _Label_2651 else goto _Label_2649
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2649
	jmp	_Label_2651
_Label_2651:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2663 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2662 = *_temp_2663  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2662) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2664 = _temp_2662 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2661 = *_temp_2664  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2661 >= 0 then goto _Label_2650		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2650
!	jmp	_Label_2649
_Label_2649:
! THEN...
	mov	2441,r13		! source line 2441
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2665 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2441,r13		! source line 2441
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2650:
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2666 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2666  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0WH",r10
_Label_2667:
!   if numBytes <= 0 then goto _Label_2669		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2669
!	jmp	_Label_2668
_Label_2668:
	mov	2444,r13		! source line 2444
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2672 = *_temp_2673  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2672 == sector then goto _Label_2671		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2671
!	jmp	_Label_2670
_Label_2670:
! THEN...
	mov	2460,r13		! source line 2460
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2674) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2671:
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2676 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2675 = *_temp_2676  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2675 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   _temp_2677 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2677  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2463,r13		! source line 2463
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2681 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2680 = *_temp_2681  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2680 != sector then goto _Label_2679		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2679
!	jmp	_Label_2678
_Label_2678:
	jmp	_Label_2682
_Label_2679:
! ELSE...
	mov	2466,r13		! source line 2466
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2685
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2685
	jmp	_Label_2684
_Label_2685:
!   if bytesToMove != 8192 then goto _Label_2684		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2684
!	jmp	_Label_2683
_Label_2683:
	jmp	_Label_2686
_Label_2684:
! ELSE...
	mov	2470,r13		! source line 2470
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2689 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2688 = *_temp_2689  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2687 = sector + _temp_2688		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2691 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2690 = *_temp_2691  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2692 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2687  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2690  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2686:
! END IF...
_Label_2682:
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2693 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2693 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2694 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2694 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2479,r13		! source line 2479
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2667
_Label_2669:
! SEND STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0SE",r10
!   _temp_2695 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2696
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2697
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2698
	.word	12
	.word	4
	.word	_Label_2699
	.word	16
	.word	4
	.word	_Label_2700
	.word	20
	.word	4
	.word	_Label_2701
	.word	24
	.word	4
	.word	_Label_2702
	.word	-16
	.word	4
	.word	_Label_2703
	.word	-20
	.word	4
	.word	_Label_2704
	.word	-24
	.word	4
	.word	_Label_2705
	.word	-28
	.word	4
	.word	_Label_2706
	.word	-32
	.word	4
	.word	_Label_2707
	.word	-36
	.word	4
	.word	_Label_2708
	.word	-40
	.word	4
	.word	_Label_2709
	.word	-44
	.word	4
	.word	_Label_2710
	.word	-48
	.word	4
	.word	_Label_2711
	.word	-52
	.word	4
	.word	_Label_2712
	.word	-56
	.word	4
	.word	_Label_2713
	.word	-60
	.word	4
	.word	_Label_2714
	.word	-64
	.word	4
	.word	_Label_2715
	.word	-68
	.word	4
	.word	_Label_2716
	.word	-72
	.word	4
	.word	_Label_2717
	.word	-76
	.word	4
	.word	_Label_2718
	.word	-80
	.word	4
	.word	_Label_2719
	.word	-84
	.word	4
	.word	_Label_2720
	.word	-88
	.word	4
	.word	_Label_2721
	.word	-92
	.word	4
	.word	_Label_2722
	.word	-96
	.word	4
	.word	_Label_2723
	.word	-100
	.word	4
	.word	_Label_2724
	.word	-104
	.word	4
	.word	_Label_2725
	.word	-108
	.word	4
	.word	_Label_2726
	.word	-112
	.word	4
	.word	_Label_2727
	.word	-9
	.word	1
	.word	_Label_2728
	.word	-10
	.word	1
	.word	_Label_2729
	.word	-116
	.word	4
	.word	_Label_2730
	.word	-120
	.word	4
	.word	_Label_2731
	.word	-124
	.word	4
	.word	_Label_2732
	.word	-128
	.word	4
	.word	_Label_2733
	.word	-132
	.word	4
	.word	_Label_2734
	.word	-136
	.word	4
	.word	0
_Label_2696:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2697:
	.ascii	"Pself\0"
	.align
_Label_2698:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2699:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2700:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2701:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2727:
	.byte	'C'
	.ascii	"_temp_2656\0"
	.align
_Label_2728:
	.byte	'C'
	.ascii	"_temp_2653\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2730:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2732:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2733:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2734:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2735
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2735:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2736
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2736:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	2527,r13		! source line 2527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
!   _temp_2737 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2738
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2740
	.word	-12
	.word	4
	.word	0
_Label_2738:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2739:
	.ascii	"Pself\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	2537,r13		! source line 2537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2741 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2741  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2538,r13		! source line 2538
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2539,r13		! source line 2539
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2742 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2742  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2540,r13		! source line 2540
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2541,r13		! source line 2541
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2743 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2743  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2542,r13		! source line 2542
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2543,r13		! source line 2543
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2744 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2744  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2544,r13		! source line 2544
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2745 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2745  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2746 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2746  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2747
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2748
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2749
	.word	-12
	.word	4
	.word	_Label_2750
	.word	-16
	.word	4
	.word	_Label_2751
	.word	-20
	.word	4
	.word	_Label_2752
	.word	-24
	.word	4
	.word	_Label_2753
	.word	-28
	.word	4
	.word	_Label_2754
	.word	-32
	.word	4
	.word	0
_Label_2747:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2748:
	.ascii	"Pself\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2755
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2755:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2756
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2756:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	2561,r13		! source line 2561
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2757 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2757  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2562,r13		! source line 2562
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2563,r13		! source line 2563
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2758 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2758  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2564,r13		! source line 2564
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2760		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2760
!	jmp	_Label_2759
_Label_2759:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2761
_Label_2760:
! ELSE...
	mov	2568,r13		! source line 2568
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2762 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2568,r13		! source line 2568
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2761:
! RETURN STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2763
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2765
	.word	-12
	.word	4
	.word	_Label_2766
	.word	-16
	.word	4
	.word	_Label_2767
	.word	-20
	.word	4
	.word	0
_Label_2763:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2764:
	.ascii	"Pself\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	2574,r13		! source line 2574
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0SE",r10
!   _temp_2768 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2769 = _temp_2768 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0SE",r10
!   _temp_2770 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2771 = _temp_2770 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0RE",r10
	mov	2588,r13		! source line 2588
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2774 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2773  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2772  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2772  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2775
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2777
	.word	12
	.word	4
	.word	_Label_2778
	.word	16
	.word	4
	.word	_Label_2779
	.word	-16
	.word	4
	.word	_Label_2780
	.word	-20
	.word	4
	.word	_Label_2781
	.word	-9
	.word	1
	.word	_Label_2782
	.word	-24
	.word	4
	.word	_Label_2783
	.word	-28
	.word	4
	.word	_Label_2784
	.word	-32
	.word	4
	.word	_Label_2785
	.word	-36
	.word	4
	.word	_Label_2786
	.word	-40
	.word	4
	.word	0
_Label_2775:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2776:
	.ascii	"Pself\0"
	.align
_Label_2777:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2778:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2781:
	.byte	'C'
	.ascii	"_temp_2772\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	2593,r13		! source line 2593
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0IF",r10
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_2790 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2791) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2790  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2789  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2789 then goto _Label_2788 else goto _Label_2787
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2787
	jmp	_Label_2788
_Label_2787:
! THEN...
	mov	2599,r13		! source line 2599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2792 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2599,r13		! source line 2599
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2788:
! RETURN STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2793
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2794
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2795
	.word	-16
	.word	4
	.word	_Label_2796
	.word	-20
	.word	4
	.word	_Label_2797
	.word	-24
	.word	4
	.word	_Label_2798
	.word	-9
	.word	1
	.word	_Label_2799
	.word	-28
	.word	4
	.word	0
_Label_2793:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2794:
	.ascii	"Pself\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2798:
	.byte	'C'
	.ascii	"_temp_2789\0"
	.align
_Label_2799:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	2606,r13		! source line 2606
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2803 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2802 = *_temp_2803  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2802) then goto _Label_2801
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2801
!	jmp	_Label_2800
_Label_2800:
! THEN...
	mov	2633,r13		! source line 2633
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2804 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2633,r13		! source line 2633
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2801:
! IF STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0IF",r10
	mov	2637,r13		! source line 2637
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2808) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2807  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2807 == 1112300152 then goto _Label_2806		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2806
!	jmp	_Label_2805
_Label_2805:
! THEN...
	mov	2638,r13		! source line 2638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2809 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2806:
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2810) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2811) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2812) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
	mov	2646,r13		! source line 2646
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2813) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
	mov	2647,r13		! source line 2647
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2814) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
	mov	2648,r13		! source line 2648
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2815) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0IF",r10
!   _temp_2818 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2818) then goto _Label_2817
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2817
!	jmp	_Label_2816
_Label_2816:
! THEN...
	mov	2652,r13		! source line 2652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2819 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2819  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2817:
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2821
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2821
!	jmp	_Label_2820
_Label_2820:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2822 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2822  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2660,r13		! source line 2660
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2821:
! IF STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0IF",r10
!   _temp_2825 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2825) then goto _Label_2824
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2824
!	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	2666,r13		! source line 2666
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2826 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2826  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2666,r13		! source line 2666
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2824:
! IF STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0IF",r10
!   _temp_2829 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2829 then goto _Label_2828		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2828
!	jmp	_Label_2827
_Label_2827:
! THEN...
	mov	2670,r13		! source line 2670
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2830 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2828:
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0IF",r10
!   _temp_2833 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2833) then goto _Label_2832
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2832
!	jmp	_Label_2831
_Label_2831:
! THEN...
	mov	2677,r13		! source line 2677
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2834 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2834  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2832:
! IF STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0IF",r10
!   _temp_2837 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2837 then goto _Label_2836		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2836
!	jmp	_Label_2835
_Label_2835:
! THEN...
	mov	2681,r13		! source line 2681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2838 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2681,r13		! source line 2681
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2836:
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   _temp_2841 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2840 = _temp_2841 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2839 = _temp_2840 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2839 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2843		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2703,r13		! source line 2703
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2844 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2844  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2703,r13		! source line 2703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2845 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2704,r13		! source line 2704
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2846 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2846  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2843:
! SEND STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   _temp_2847 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2851) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2850  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2850 == 707406378 then goto _Label_2849		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2849
!	jmp	_Label_2848
_Label_2848:
! THEN...
	mov	2715,r13		! source line 2715
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2852 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2852  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2715,r13		! source line 2715
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_2853 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2849:
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2858 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2859 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2858  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2854:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2859 then goto _Label_2857		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2857
_Label_2855:
	mov	2722,r13		! source line 2722
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2863) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2862  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2862 then goto _Label_2861 else goto _Label_2860
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2860
	jmp	_Label_2861
_Label_2860:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2864 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
!   _temp_2865 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2861:
! SEND STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2856:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2854
! END FOR
_Label_2857:
! IF STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0IF",r10
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2869) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2868  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2868 == 707406378 then goto _Label_2867		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2867
!	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	2737,r13		! source line 2737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2870 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2870  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2737,r13		! source line 2737
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0SE",r10
!   _temp_2871 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2867:
! FOR STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2876 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2877 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2876  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2872:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2877 then goto _Label_2875		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2875
_Label_2873:
	mov	2743,r13		! source line 2743
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0AS",r10
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0IF",r10
	mov	2747,r13		! source line 2747
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2881) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2880  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2880 then goto _Label_2879 else goto _Label_2878
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2878
	jmp	_Label_2879
_Label_2878:
! THEN...
	mov	2748,r13		! source line 2748
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2882 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2882  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2748,r13		! source line 2748
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0SE",r10
!   _temp_2883 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2879:
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2874:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2872
! END FOR
_Label_2875:
! IF STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0IF",r10
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2887) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2886  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2886 == 707406378 then goto _Label_2885		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2885
!	jmp	_Label_2884
_Label_2884:
! THEN...
	mov	2757,r13		! source line 2757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2888 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2888  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2757,r13		! source line 2757
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0SE",r10
!   _temp_2889 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2885:
! ASSIGNMENT STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0AS",r10
	mov	2763,r13		! source line 2763
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2890
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2892
	.word	12
	.word	4
	.word	_Label_2893
	.word	-16
	.word	4
	.word	_Label_2894
	.word	-20
	.word	4
	.word	_Label_2895
	.word	-24
	.word	4
	.word	_Label_2896
	.word	-28
	.word	4
	.word	_Label_2897
	.word	-32
	.word	4
	.word	_Label_2898
	.word	-36
	.word	4
	.word	_Label_2899
	.word	-40
	.word	4
	.word	_Label_2900
	.word	-9
	.word	1
	.word	_Label_2901
	.word	-44
	.word	4
	.word	_Label_2902
	.word	-48
	.word	4
	.word	_Label_2903
	.word	-52
	.word	4
	.word	_Label_2904
	.word	-56
	.word	4
	.word	_Label_2905
	.word	-60
	.word	4
	.word	_Label_2906
	.word	-64
	.word	4
	.word	_Label_2907
	.word	-68
	.word	4
	.word	_Label_2908
	.word	-72
	.word	4
	.word	_Label_2909
	.word	-76
	.word	4
	.word	_Label_2910
	.word	-10
	.word	1
	.word	_Label_2911
	.word	-80
	.word	4
	.word	_Label_2912
	.word	-84
	.word	4
	.word	_Label_2913
	.word	-88
	.word	4
	.word	_Label_2914
	.word	-92
	.word	4
	.word	_Label_2915
	.word	-96
	.word	4
	.word	_Label_2916
	.word	-100
	.word	4
	.word	_Label_2917
	.word	-104
	.word	4
	.word	_Label_2918
	.word	-108
	.word	4
	.word	_Label_2919
	.word	-112
	.word	4
	.word	_Label_2920
	.word	-116
	.word	4
	.word	_Label_2921
	.word	-120
	.word	4
	.word	_Label_2922
	.word	-124
	.word	4
	.word	_Label_2923
	.word	-128
	.word	4
	.word	_Label_2924
	.word	-132
	.word	4
	.word	_Label_2925
	.word	-136
	.word	4
	.word	_Label_2926
	.word	-140
	.word	4
	.word	_Label_2927
	.word	-144
	.word	4
	.word	_Label_2928
	.word	-148
	.word	4
	.word	_Label_2929
	.word	-152
	.word	4
	.word	_Label_2930
	.word	-156
	.word	4
	.word	_Label_2931
	.word	-160
	.word	4
	.word	_Label_2932
	.word	-164
	.word	4
	.word	_Label_2933
	.word	-168
	.word	4
	.word	_Label_2934
	.word	-172
	.word	4
	.word	_Label_2935
	.word	-176
	.word	4
	.word	_Label_2936
	.word	-180
	.word	4
	.word	_Label_2937
	.word	-184
	.word	4
	.word	_Label_2938
	.word	-188
	.word	4
	.word	_Label_2939
	.word	-192
	.word	4
	.word	_Label_2940
	.word	-196
	.word	4
	.word	_Label_2941
	.word	-200
	.word	4
	.word	_Label_2942
	.word	-204
	.word	4
	.word	_Label_2943
	.word	-208
	.word	4
	.word	_Label_2944
	.word	-212
	.word	4
	.word	_Label_2945
	.word	-216
	.word	4
	.word	_Label_2946
	.word	-220
	.word	4
	.word	_Label_2947
	.word	-224
	.word	4
	.word	_Label_2948
	.word	-228
	.word	4
	.word	_Label_2949
	.word	-232
	.word	4
	.word	_Label_2950
	.word	-236
	.word	4
	.word	_Label_2951
	.word	-240
	.word	4
	.word	_Label_2952
	.word	-244
	.word	4
	.word	_Label_2953
	.word	-248
	.word	4
	.word	_Label_2954
	.word	-252
	.word	4
	.word	_Label_2955
	.word	-256
	.word	4
	.word	_Label_2956
	.word	-260
	.word	4
	.word	_Label_2957
	.word	-264
	.word	4
	.word	_Label_2958
	.word	-268
	.word	4
	.word	0
_Label_2890:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2891:
	.ascii	"Pself\0"
	.align
_Label_2892:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2900:
	.byte	'C'
	.ascii	"_temp_2880\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2910:
	.byte	'C'
	.ascii	"_temp_2862\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2947:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2948:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2949:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2950:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2951:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2952:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2953:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
