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
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
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
	.skip	1440
_P_Kernel_threadManager:
	.skip	45860
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_196:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_194:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_193:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_192:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_191:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_190:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_189:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_188:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_186:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_184:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_183:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_182:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_181:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_180:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_179:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_178:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_177:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_176:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_175:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_174:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_173:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_172:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_171:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_170:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_169:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_168:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_167:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_166:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_165:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_164:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_163:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_162:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_161:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_159:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_158:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_157:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_156:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_155:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_154:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_153:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_152:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_151:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_150:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_149:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_148:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_147:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_146:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_141:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_135:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_132:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_131:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_130:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_126:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_125:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_124:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_123:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_122:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_121:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_120:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_119:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_118:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_115:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_114:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_111:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_110:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_109:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_108:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_107:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_106:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_105:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_104:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_103:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_102:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_101:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_100:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_97:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_96:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_95:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_94:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_93:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_92:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_88:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_87:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_86:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_85:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_84:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_83:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_82:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_76:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_75:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_74:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_73:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_72:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_71:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_70:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_69:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_67:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_66:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_65:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_64:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_63:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_62:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_61:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_60:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_59:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_57:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_54:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_52:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_51:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_50:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_48:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_47:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_46:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_45:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_43:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_42:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_40:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_39:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_38:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_37:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
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
	set	0xe0ab8cc5,r4		! myHashVal = -525628219
	cmp	r3,r4
	be	_Label_207
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
_Label_207:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_208
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_208
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_208
_Label_208:
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_209 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_209  sizeInBytes=4
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
_Label_3334:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3334
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_213 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_214 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_213  sizeInBytes=4
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
!   _temp_215 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_216 = _temp_215 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_216 = 3  (sizeInBytes=4)
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
_Label_3335:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3335
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_218 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_219 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
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
!   _temp_220 = _function_206_IdleFunction
	set	_function_206_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_221 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=4
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
	.word	_Label_222
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_223
	.word	-12
	.word	4
	.word	_Label_224
	.word	-16
	.word	4
	.word	_Label_225
	.word	-20
	.word	4
	.word	_Label_226
	.word	-24
	.word	4
	.word	_Label_227
	.word	-28
	.word	4
	.word	_Label_228
	.word	-32
	.word	4
	.word	_Label_229
	.word	-36
	.word	4
	.word	_Label_230
	.word	-40
	.word	4
	.word	_Label_231
	.word	-44
	.word	4
	.word	_Label_232
	.word	-48
	.word	4
	.word	_Label_233
	.word	-52
	.word	4
	.word	_Label_234
	.word	-56
	.word	4
	.word	_Label_235
	.word	-60
	.word	4
	.word	0
_Label_222:
	.ascii	"InitializeScheduler\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_206_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_236:
!	jmp	_Label_237
_Label_237:
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
!   _temp_241 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_239 else goto _Label_240
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_240
	jmp	_Label_239
_Label_239:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_242
_Label_240:
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
_Label_242:
! END WHILE...
	jmp	_Label_236
_Label_238:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_IdleFunction:
	.word	_sourceFileName
	.word	_Label_243
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_244
	.word	8
	.word	4
	.word	_Label_245
	.word	-12
	.word	4
	.word	_Label_246
	.word	-16
	.word	4
	.word	0
_Label_243:
	.ascii	"IdleFunction\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_246:
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
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
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
!   _temp_249 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_249 ) then goto _Label_248		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_248
!	jmp	_Label_247
_Label_247:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_251 [0 ] into _temp_252
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
!   _temp_250 = _temp_252		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_248:
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
!   _temp_253 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_253 = 3  (sizeInBytes=4)
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
_Label_254:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_258 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_257  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_257 then goto _Label_256 else goto _Label_255
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_255
	jmp	_Label_256
_Label_255:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_259 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_260 = &_P_Kernel_threadManager
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
	jmp	_Label_254
_Label_256:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_263 ) then goto _Label_262		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_262
!	jmp	_Label_261
_Label_261:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_265 [0 ] into _temp_266
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
!   _temp_264 = _temp_266		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
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
!   _temp_268 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_267 = *_temp_268  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_267) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = _temp_267 + 32
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
_Label_262:
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
	.word	_Label_270
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_271
	.word	8
	.word	4
	.word	_Label_272
	.word	-16
	.word	4
	.word	_Label_273
	.word	-20
	.word	4
	.word	_Label_274
	.word	-24
	.word	4
	.word	_Label_275
	.word	-28
	.word	4
	.word	_Label_276
	.word	-32
	.word	4
	.word	_Label_277
	.word	-36
	.word	4
	.word	_Label_278
	.word	-40
	.word	4
	.word	_Label_279
	.word	-44
	.word	4
	.word	_Label_280
	.word	-48
	.word	4
	.word	_Label_281
	.word	-52
	.word	4
	.word	_Label_282
	.word	-9
	.word	1
	.word	_Label_283
	.word	-56
	.word	4
	.word	_Label_284
	.word	-60
	.word	4
	.word	_Label_285
	.word	-64
	.word	4
	.word	_Label_286
	.word	-68
	.word	4
	.word	_Label_287
	.word	-72
	.word	4
	.word	_Label_288
	.word	-76
	.word	4
	.word	_Label_289
	.word	-80
	.word	4
	.word	0
_Label_270:
	.ascii	"Run\0"
	.align
_Label_271:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_282:
	.byte	'C'
	.ascii	"_temp_257\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_288:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_289:
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
_Label_3338:
	push	r0
	sub	r1,1,r1
	bne	_Label_3338
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
!   _temp_290 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_291 = _function_204_ThreadPrintShort
	set	_function_204_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_292 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_291  sizeInBytes=4
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
	.word	_Label_293
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_294
	.word	-12
	.word	4
	.word	_Label_295
	.word	-16
	.word	4
	.word	_Label_296
	.word	-20
	.word	4
	.word	_Label_297
	.word	-24
	.word	4
	.word	0
_Label_293:
	.ascii	"PrintReadyList\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_297:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
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
!   _temp_298 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_298  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_300 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_299 = *_temp_300  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
!   _temp_301 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
	.word	_Label_302
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_303
	.word	-12
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	_Label_306
	.word	-24
	.word	4
	.word	_Label_307
	.word	-28
	.word	4
	.word	_Label_308
	.word	-32
	.word	4
	.word	0
_Label_302:
	.ascii	"ThreadStartMain\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_308:
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
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
!   _temp_309 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_310 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
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
	.word	_Label_311
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_312
	.word	-12
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	0
_Label_311:
	.ascii	"ThreadFinish\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_314:
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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
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
!   _temp_315 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_317		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_317
!	jmp	_Label_316
_Label_316:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_318 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
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
!   _temp_320 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_319 = *_temp_320  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_317:
! CALL STATEMENT...
!   _temp_321 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
!   _temp_322 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_323 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
	.word	_Label_324
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-12
	.word	4
	.word	_Label_327
	.word	-16
	.word	4
	.word	_Label_328
	.word	-20
	.word	4
	.word	_Label_329
	.word	-24
	.word	4
	.word	_Label_330
	.word	-28
	.word	4
	.word	_Label_331
	.word	-32
	.word	4
	.word	_Label_332
	.word	-36
	.word	4
	.word	_Label_333
	.word	-40
	.word	4
	.word	0
_Label_324:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_325:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_333:
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
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
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
!   if newStatus != 1 then goto _Label_335		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_335
!	jmp	_Label_334
_Label_334:
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
	jmp	_Label_336
_Label_335:
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
_Label_336:
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
	.word	_Label_337
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_338
	.word	8
	.word	4
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_338:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_339:
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
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_340 = &_P_Kernel_threadManager
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
!   _temp_341 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_341  sizeInBytes=4
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
!   _temp_342 = _function_205_StartUserProcess
	set	_function_205_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_342  sizeInBytes=4
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
	.word	_Label_343
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	_Label_347
	.word	-24
	.word	4
	.word	0
_Label_343:
	.ascii	"InitFirstProcess\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_347:
	.byte	'P'
	.ascii	"userProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_205_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
	mov	213,r13		! source line 213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   _temp_348 = &_P_Kernel_processManager
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
!   _temp_349 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_349 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_350 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_351 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-56]
!   _temp_352 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_351  sizeInBytes=4
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
!   _temp_354 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_353 = _temp_354		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_353  sizeInBytes=4
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
!   _temp_355 = &_P_Kernel_fileManager
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
!   _temp_357 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_358 = _temp_357 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_356 = *_temp_358  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_356 * 8192		(int)
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
!   _temp_359 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_359 [999 ] into _temp_360
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
!   initSystemStackTop = _temp_360		(4 bytes)
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
!   _temp_361 = pcb + 32
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
!   _temp_362 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_362 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_205_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_363
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_364
	.word	8
	.word	4
	.word	_Label_365
	.word	-12
	.word	4
	.word	_Label_366
	.word	-16
	.word	4
	.word	_Label_367
	.word	-20
	.word	4
	.word	_Label_368
	.word	-24
	.word	4
	.word	_Label_369
	.word	-28
	.word	4
	.word	_Label_370
	.word	-32
	.word	4
	.word	_Label_371
	.word	-36
	.word	4
	.word	_Label_372
	.word	-40
	.word	4
	.word	_Label_373
	.word	-44
	.word	4
	.word	_Label_374
	.word	-48
	.word	4
	.word	_Label_375
	.word	-52
	.word	4
	.word	_Label_376
	.word	-56
	.word	4
	.word	_Label_377
	.word	-60
	.word	4
	.word	_Label_378
	.word	-64
	.word	4
	.word	_Label_379
	.word	-68
	.word	4
	.word	_Label_380
	.word	-72
	.word	4
	.word	_Label_381
	.word	-76
	.word	4
	.word	_Label_382
	.word	-80
	.word	4
	.word	_Label_383
	.word	-84
	.word	4
	.word	_Label_384
	.word	-88
	.word	4
	.word	_Label_385
	.word	-92
	.word	4
	.word	0
_Label_363:
	.ascii	"StartUserProcess\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_380:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_381:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_382:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_383:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_384:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_204_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
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
!   if t == 0 then goto _Label_389		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_389
!   _temp_388 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_390
_Label_389:
!   _temp_388 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_390:
!   if _temp_388 then goto _Label_387 else goto _Label_386
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_386
	jmp	_Label_387
_Label_386:
! THEN...
	mov	681,r13		! source line 681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_391 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
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
_Label_387:
! CALL STATEMENT...
!   _temp_392 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
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
!   _temp_394 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_393 = *_temp_394  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_395 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
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
!   _temp_404 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_403 = *_temp_404  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_398
	cmp	r1,2
	be	_Label_399
	cmp	r1,3
	be	_Label_400
	cmp	r1,4
	be	_Label_401
	cmp	r1,5
	be	_Label_402
	jmp	_Label_396
! CASE 1...
_Label_398:
! CALL STATEMENT...
!   _temp_405 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0BR",r10
	jmp	_Label_397
! CASE 2...
_Label_399:
! CALL STATEMENT...
!   _temp_406 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0BR",r10
	jmp	_Label_397
! CASE 3...
_Label_400:
! CALL STATEMENT...
!   _temp_407 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_397
! CASE 4...
_Label_401:
! CALL STATEMENT...
!   _temp_408 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_397
! CASE 5...
_Label_402:
! CALL STATEMENT...
!   _temp_409 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_397
! DEFAULT CASE...
_Label_396:
! CALL STATEMENT...
!   _temp_410 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
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
_Label_397:
! CALL STATEMENT...
!   _temp_411 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_412 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_413 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
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
_RoutineDescriptor__function_204_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_415
	.word	8
	.word	4
	.word	_Label_416
	.word	-16
	.word	4
	.word	_Label_417
	.word	-20
	.word	4
	.word	_Label_418
	.word	-24
	.word	4
	.word	_Label_419
	.word	-28
	.word	4
	.word	_Label_420
	.word	-32
	.word	4
	.word	_Label_421
	.word	-36
	.word	4
	.word	_Label_422
	.word	-40
	.word	4
	.word	_Label_423
	.word	-44
	.word	4
	.word	_Label_424
	.word	-48
	.word	4
	.word	_Label_425
	.word	-52
	.word	4
	.word	_Label_426
	.word	-56
	.word	4
	.word	_Label_427
	.word	-60
	.word	4
	.word	_Label_428
	.word	-64
	.word	4
	.word	_Label_429
	.word	-68
	.word	4
	.word	_Label_430
	.word	-72
	.word	4
	.word	_Label_431
	.word	-76
	.word	4
	.word	_Label_432
	.word	-9
	.word	1
	.word	_Label_433
	.word	-80
	.word	4
	.word	0
_Label_414:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_432:
	.byte	'C'
	.ascii	"_temp_388\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_203_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	1041,r13		! source line 1041
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_434 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_435
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_436
	.word	8
	.word	4
	.word	_Label_437
	.word	-12
	.word	4
	.word	0
_Label_435:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_436:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_434\0"
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
	mov	19,r1
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	1051,r13		! source line 1051
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_439 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_438 = *_temp_439  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_438) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _temp_438 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_440 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_441 = *_temp_442  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_441) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _temp_441 + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_443 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_444 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1063,r13		! source line 1063
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_446 = *_temp_447  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_446) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _temp_446 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_445 = _temp_448		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-44]
!   _temp_449 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_445  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_452 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_450  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_453 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1067,r13		! source line 1067
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_454
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_455
	.word	8
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	_Label_463
	.word	-40
	.word	4
	.word	_Label_464
	.word	-44
	.word	4
	.word	_Label_465
	.word	-48
	.word	4
	.word	_Label_466
	.word	-52
	.word	4
	.word	_Label_467
	.word	-56
	.word	4
	.word	_Label_468
	.word	-60
	.word	4
	.word	_Label_469
	.word	-64
	.word	4
	.word	_Label_470
	.word	-68
	.word	4
	.word	_Label_471
	.word	-72
	.word	4
	.word	_Label_472
	.word	-76
	.word	4
	.word	0
_Label_454:
	.ascii	"ProcessFinish\0"
	.align
_Label_455:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_472:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
	mov	1543,r13		! source line 1543
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1555,r13		! source line 1555
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
	mov	1556,r13		! source line 1556
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1556,r13		! source line 1556
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
	.word	_Label_473
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_473:
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
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
	mov	1561,r13		! source line 1561
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1573,r13		! source line 1573
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0IF",r10
!   _temp_477 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_478 = _temp_477 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_476 = *_temp_478  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_476 == 0 then goto _Label_475		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_475
!	jmp	_Label_474
_Label_474:
! THEN...
	mov	1576,r13		! source line 1576
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0SE",r10
!   _temp_480 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_481 = _temp_480 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_479 = *_temp_481  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_479) then goto _runtimeErrorNullPointer
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
_Label_475:
! RETURN STATEMENT...
	mov	1575,r13		! source line 1575
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
	.word	_Label_482
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_483
	.word	-12
	.word	4
	.word	_Label_484
	.word	-16
	.word	4
	.word	_Label_485
	.word	-20
	.word	4
	.word	_Label_486
	.word	-24
	.word	4
	.word	_Label_487
	.word	-28
	.word	4
	.word	_Label_488
	.word	-32
	.word	4
	.word	0
_Label_482:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_476\0"
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
	mov	1583,r13		! source line 1583
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1592,r13		! source line 1592
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_489:
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
	mov	1597,r13		! source line 1597
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1604,r13		! source line 1604
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
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
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
	mov	1609,r13		! source line 1609
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1616,r13		! source line 1616
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
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
	mov	1621,r13		! source line 1621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1628,r13		! source line 1628
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
	mov	1633,r13		! source line 1633
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
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
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	1645,r13		! source line 1645
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1652,r13		! source line 1652
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1652,r13		! source line 1652
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	1657,r13		! source line 1657
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1664,r13		! source line 1664
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	1669,r13		! source line 1669
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_508 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_function_202_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
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
	.word	_Label_509
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_510
	.word	-12
	.word	4
	.word	0
_Label_509:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_202_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	1681,r13		! source line 1681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_511 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_512 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_516 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_515 = *_temp_516  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_515 == 0 then goto _Label_514		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_514
!	jmp	_Label_513
_Label_513:
! THEN...
	mov	1692,r13		! source line 1692
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_518 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_517 = *_temp_518  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_517) then goto _runtimeErrorNullPointer
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
	jmp	_Label_519
_Label_514:
! ELSE...
	mov	1694,r13		! source line 1694
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_520 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_519:
! SEND STATEMENT...
	mov	1696,r13		! source line 1696
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
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	-12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	_Label_525
	.word	-20
	.word	4
	.word	_Label_526
	.word	-24
	.word	4
	.word	_Label_527
	.word	-28
	.word	4
	.word	_Label_528
	.word	-32
	.word	4
	.word	_Label_529
	.word	-36
	.word	4
	.word	0
_Label_521:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_522:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_511\0"
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	1707,r13		! source line 1707
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1728,r13		! source line 1728
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3359
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_530
_Label_3359:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_530
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_530
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_544,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_544:
	jmp	_Label_536	! 1:	
	jmp	_Label_543	! 2:	
	jmp	_Label_533	! 3:	
	jmp	_Label_532	! 4:	
	jmp	_Label_535	! 5:	
	jmp	_Label_534	! 6:	
	jmp	_Label_537	! 7:	
	jmp	_Label_538	! 8:	
	jmp	_Label_539	! 9:	
	jmp	_Label_540	! 10:	
	jmp	_Label_541	! 11:	
	jmp	_Label_542	! 12:	
! CASE 4...
_Label_532:
! RETURN STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0RE",r10
!   Call the function
	mov	1730,r13		! source line 1730
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_533:
! CALL STATEMENT...
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_534:
! RETURN STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1735,r13		! source line 1735
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_535:
! RETURN STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1737,r13		! source line 1737
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_536:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_537:
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_538:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_539:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
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
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_540:
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
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
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_541:
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_542:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_543:
! CALL STATEMENT...
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_530:
! CALL STATEMENT...
!   _temp_553 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_554 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1761,r13		! source line 1761
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_531:
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
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
	.word	_Label_555
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_556
	.word	8
	.word	4
	.word	_Label_557
	.word	12
	.word	4
	.word	_Label_558
	.word	16
	.word	4
	.word	_Label_559
	.word	20
	.word	4
	.word	_Label_560
	.word	24
	.word	4
	.word	_Label_561
	.word	-12
	.word	4
	.word	_Label_562
	.word	-16
	.word	4
	.word	_Label_563
	.word	-20
	.word	4
	.word	_Label_564
	.word	-24
	.word	4
	.word	_Label_565
	.word	-28
	.word	4
	.word	_Label_566
	.word	-32
	.word	4
	.word	_Label_567
	.word	-36
	.word	4
	.word	_Label_568
	.word	-40
	.word	4
	.word	_Label_569
	.word	-44
	.word	4
	.word	_Label_570
	.word	-48
	.word	4
	.word	0
_Label_555:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_545\0"
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
	mov	1,r1
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	1768,r13		! source line 1768
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_571
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_572
	.word	8
	.word	4
	.word	0
_Label_571:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"returnStatus\0"
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	1774,r13		! source line 1774
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_573 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1775,r13		! source line 1775
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_574
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_575
	.word	-12
	.word	4
	.word	0
_Label_574:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_573\0"
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
	mov	1,r1
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1781,r13		! source line 1781
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
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_576
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Yield\0"
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
	mov	55,r1
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0AS",r10
	mov	1792,r13		! source line 1792
	mov	"\0\0SE",r10
!   _temp_577 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-196]
!   Send message GetANewThread
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
	mov	1795,r13		! source line 1795
	mov	"\0\0SE",r10
!   _temp_578 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message GetANewProcess
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = pcb + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_579 = th  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = pcb + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_582 = *_temp_583  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_582) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = _temp_582 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_581 = *_temp_584  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_580 = _temp_581  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = th + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_585 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = th + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_586 = pcb  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = th + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_588 [0 ] into _temp_589
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   _temp_587 = _temp_589		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = th + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = th + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_592 [999 ] into _temp_593
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-132]
!   _temp_591 = _temp_593		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_590 = _temp_591  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = pcb + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_594 = _temp_595		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_597 = *_temp_598  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _temp_597 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_600 = _temp_599 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_596 = *_temp_600  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_601 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_594  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_596  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_606 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_609 = *_temp_610  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_609) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = _temp_609 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_612 = _temp_611 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_608 = *_temp_612  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_607 = _temp_608 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_606  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-212]
_Label_602:
!   Perform the FOR-LOOP termination test
!   if i > _temp_607 then goto _Label_605		
	load	[r14+-212],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_605
_Label_603:
	mov	1807,r13		! source line 1807
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = pcb + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_613  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1808,r13		! source line 1808
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_616 = *_temp_617  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_616) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _temp_616 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_615  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_615  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0IF",r10
	mov	1809,r13		! source line 1809
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_622 = *_temp_623  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_622) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _temp_622 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_621  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_621 then goto _Label_620 else goto _Label_619
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_619
	jmp	_Label_620
_Label_619:
! THEN...
	mov	1810,r13		! source line 1810
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = pcb + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_626
_Label_620:
! ELSE...
	mov	1812,r13		! source line 1812
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = pcb + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_626:
!   Increment the FOR-LOOP index variable and jump back
_Label_604:
!   i = i + 1
	load	[r14+-212],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
	jmp	_Label_602
! END FOR
_Label_605:
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! SEND STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   _temp_628 = _function_201_ResumeChildAfterFork
	set	_function_201_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_628  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = pcb + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_629 = *_temp_630  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_629  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,224,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_631
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_632
	.word	-16
	.word	4
	.word	_Label_633
	.word	-20
	.word	4
	.word	_Label_634
	.word	-24
	.word	4
	.word	_Label_635
	.word	-28
	.word	4
	.word	_Label_636
	.word	-32
	.word	4
	.word	_Label_637
	.word	-36
	.word	4
	.word	_Label_638
	.word	-40
	.word	4
	.word	_Label_639
	.word	-44
	.word	4
	.word	_Label_640
	.word	-9
	.word	1
	.word	_Label_641
	.word	-48
	.word	4
	.word	_Label_642
	.word	-52
	.word	4
	.word	_Label_643
	.word	-56
	.word	4
	.word	_Label_644
	.word	-60
	.word	4
	.word	_Label_645
	.word	-64
	.word	4
	.word	_Label_646
	.word	-68
	.word	4
	.word	_Label_647
	.word	-72
	.word	4
	.word	_Label_648
	.word	-76
	.word	4
	.word	_Label_649
	.word	-80
	.word	4
	.word	_Label_650
	.word	-84
	.word	4
	.word	_Label_651
	.word	-88
	.word	4
	.word	_Label_652
	.word	-92
	.word	4
	.word	_Label_653
	.word	-96
	.word	4
	.word	_Label_654
	.word	-100
	.word	4
	.word	_Label_655
	.word	-104
	.word	4
	.word	_Label_656
	.word	-108
	.word	4
	.word	_Label_657
	.word	-112
	.word	4
	.word	_Label_658
	.word	-116
	.word	4
	.word	_Label_659
	.word	-120
	.word	4
	.word	_Label_660
	.word	-124
	.word	4
	.word	_Label_661
	.word	-128
	.word	4
	.word	_Label_662
	.word	-132
	.word	4
	.word	_Label_663
	.word	-136
	.word	4
	.word	_Label_664
	.word	-140
	.word	4
	.word	_Label_665
	.word	-144
	.word	4
	.word	_Label_666
	.word	-148
	.word	4
	.word	_Label_667
	.word	-152
	.word	4
	.word	_Label_668
	.word	-156
	.word	4
	.word	_Label_669
	.word	-160
	.word	4
	.word	_Label_670
	.word	-164
	.word	4
	.word	_Label_671
	.word	-168
	.word	4
	.word	_Label_672
	.word	-172
	.word	4
	.word	_Label_673
	.word	-176
	.word	4
	.word	_Label_674
	.word	-180
	.word	4
	.word	_Label_675
	.word	-184
	.word	4
	.word	_Label_676
	.word	-188
	.word	4
	.word	_Label_677
	.word	-192
	.word	4
	.word	_Label_678
	.word	-196
	.word	4
	.word	_Label_679
	.word	-200
	.word	4
	.word	_Label_680
	.word	-204
	.word	4
	.word	_Label_681
	.word	-208
	.word	4
	.word	_Label_682
	.word	-212
	.word	4
	.word	_Label_683
	.word	-216
	.word	4
	.word	0
_Label_631:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_640:
	.byte	'C'
	.ascii	"_temp_621\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_679:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_680:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_681:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_682:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_683:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_201_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	1821,r13		! source line 1821
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_684 = *_temp_685  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_684) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = _temp_684 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_688 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_688 [0 ] into _temp_689
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
!   _temp_687 = _temp_689		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_690 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_691 [14 ] into _temp_692
!     make sure index expr is >= 0
	mov	14,r2
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
!   Data Move: initUserStackTop = *_temp_692  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_693 [999 ] into _temp_694
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_694		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=oldUserPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_695
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_696
	.word	8
	.word	4
	.word	_Label_697
	.word	-12
	.word	4
	.word	_Label_698
	.word	-16
	.word	4
	.word	_Label_699
	.word	-20
	.word	4
	.word	_Label_700
	.word	-24
	.word	4
	.word	_Label_701
	.word	-28
	.word	4
	.word	_Label_702
	.word	-32
	.word	4
	.word	_Label_703
	.word	-36
	.word	4
	.word	_Label_704
	.word	-40
	.word	4
	.word	_Label_705
	.word	-44
	.word	4
	.word	_Label_706
	.word	-48
	.word	4
	.word	_Label_707
	.word	-52
	.word	4
	.word	_Label_708
	.word	-56
	.word	4
	.word	_Label_709
	.word	-60
	.word	4
	.word	_Label_710
	.word	-64
	.word	4
	.word	0
_Label_695:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_708:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_710:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
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
	mov	30,r1
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	1836,r13		! source line 1836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_715 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_716 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_715  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_711:
!   Perform the FOR-LOOP termination test
!   if i > _temp_716 then goto _Label_714		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_714
_Label_712:
	mov	1839,r13		! source line 1839
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0IF",r10
!   _temp_722 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_723 = _temp_722 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_723 [i ] into _temp_724
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
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
	store	r2,[r14+-92]
!   _temp_725 = _temp_724 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_721 = *_temp_725  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_721 != processID then goto _Label_718		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_718
!	jmp	_Label_720
_Label_720:
!   _temp_727 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_728 = _temp_727 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_728 [i ] into _temp_729
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
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
	store	r2,[r14+-72]
!   _temp_730 = _temp_729 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_726 = *_temp_730  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_732 = *_temp_733  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _temp_732 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_731 = *_temp_734  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_726 != _temp_731 then goto _Label_718		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_718
!	jmp	_Label_719
_Label_719:
!   _temp_736 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_737 = _temp_736 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_737 [i ] into _temp_738
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_739 = _temp_738 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_735 = *_temp_739  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_735 == 3 then goto _Label_718		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_718
!	jmp	_Label_717
_Label_717:
! THEN...
	mov	1841,r13		! source line 1841
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_741 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_742 = _temp_741 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_742 [i ] into _temp_743
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
!   _temp_740 = _temp_743		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_744 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_740  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=exitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_718:
!   Increment the FOR-LOOP index variable and jump back
_Label_713:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_711
! END FOR
_Label_714:
! RETURN STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_745
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_746
	.word	8
	.word	4
	.word	_Label_747
	.word	-12
	.word	4
	.word	_Label_748
	.word	-16
	.word	4
	.word	_Label_749
	.word	-20
	.word	4
	.word	_Label_750
	.word	-24
	.word	4
	.word	_Label_751
	.word	-28
	.word	4
	.word	_Label_752
	.word	-32
	.word	4
	.word	_Label_753
	.word	-36
	.word	4
	.word	_Label_754
	.word	-40
	.word	4
	.word	_Label_755
	.word	-44
	.word	4
	.word	_Label_756
	.word	-48
	.word	4
	.word	_Label_757
	.word	-52
	.word	4
	.word	_Label_758
	.word	-56
	.word	4
	.word	_Label_759
	.word	-60
	.word	4
	.word	_Label_760
	.word	-64
	.word	4
	.word	_Label_761
	.word	-68
	.word	4
	.word	_Label_762
	.word	-72
	.word	4
	.word	_Label_763
	.word	-76
	.word	4
	.word	_Label_764
	.word	-80
	.word	4
	.word	_Label_765
	.word	-84
	.word	4
	.word	_Label_766
	.word	-88
	.word	4
	.word	_Label_767
	.word	-92
	.word	4
	.word	_Label_768
	.word	-96
	.word	4
	.word	_Label_769
	.word	-100
	.word	4
	.word	_Label_770
	.word	-104
	.word	4
	.word	_Label_771
	.word	-108
	.word	4
	.word	_Label_772
	.word	-112
	.word	4
	.word	_Label_773
	.word	-116
	.word	4
	.word	_Label_774
	.word	-120
	.word	4
	.word	0
_Label_745:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_773:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_774:
	.byte	'I'
	.ascii	"exitStatus\0"
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	1850,r13		! source line 1850
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
	mov	1860,r13		! source line 1860
	mov	"\0\0SE",r10
!   _temp_775 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-112]
!   _temp_776 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_778 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_777 = *_temp_778  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = _temp_777 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_775  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_776  sizeInBytes=4
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
	mov	1861,r13		! source line 1861
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_781		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_781
!	jmp	_Label_780
_Label_780:
! THEN...
	mov	1861,r13		! source line 1861
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_781:
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3367:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3367
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0SE",r10
!   _temp_783 = &newAddrSpace
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
	mov	1866,r13		! source line 1866
	mov	"\0\0AS",r10
	mov	1866,r13		! source line 1866
	mov	"\0\0SE",r10
!   _temp_784 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_785 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_784  sizeInBytes=4
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
	mov	1867,r13		! source line 1867
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_786
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_786
	jmp	_Label_787
_Label_786:
! THEN...
	mov	1867,r13		! source line 1867
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_787:
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
	mov	1870,r13		! source line 1870
	mov	"\0\0SE",r10
!   _temp_788 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_788  sizeInBytes=4
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
	mov	1871,r13		! source line 1871
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_790		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_790
!	jmp	_Label_789
_Label_789:
! THEN...
	mov	1871,r13		! source line 1871
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_790:
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_791 = *_temp_792  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_791) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = _temp_791 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_793 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3368:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3368
! SEND STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_795 = *_temp_796  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_795) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = _temp_795 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_794 = _temp_797		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_798 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_794  sizeInBytes=4
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
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_799 = &_P_Kernel_fileManager
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
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   _temp_801 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_802 = _temp_801 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_800 = *_temp_802  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_800 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_803 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_803 [999 ] into _temp_804
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
!   initSystemStackTop = _temp_804		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0SE",r10
!   _temp_805 = &newAddrSpace
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
	mov	1882,r13		! source line 1882
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_806 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_806 = 1  (sizeInBytes=1)
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
	mov	1883,r13		! source line 1883
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
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
	.word	_Label_807
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_808
	.word	8
	.word	4
	.word	_Label_809
	.word	-12
	.word	4
	.word	_Label_810
	.word	-16
	.word	4
	.word	_Label_811
	.word	-20
	.word	4
	.word	_Label_812
	.word	-24
	.word	4
	.word	_Label_813
	.word	-28
	.word	4
	.word	_Label_814
	.word	-32
	.word	4
	.word	_Label_815
	.word	-36
	.word	4
	.word	_Label_816
	.word	-40
	.word	4
	.word	_Label_817
	.word	-44
	.word	4
	.word	_Label_818
	.word	-48
	.word	4
	.word	_Label_819
	.word	-52
	.word	4
	.word	_Label_820
	.word	-56
	.word	4
	.word	_Label_821
	.word	-60
	.word	4
	.word	_Label_822
	.word	-64
	.word	4
	.word	_Label_823
	.word	-68
	.word	4
	.word	_Label_824
	.word	-72
	.word	4
	.word	_Label_825
	.word	-76
	.word	4
	.word	_Label_826
	.word	-80
	.word	4
	.word	_Label_827
	.word	-84
	.word	4
	.word	_Label_828
	.word	-88
	.word	4
	.word	_Label_829
	.word	-92
	.word	4
	.word	_Label_830
	.word	-96
	.word	4
	.word	_Label_831
	.word	-100
	.word	4
	.word	_Label_832
	.word	-104
	.word	4
	.word	_Label_833
	.word	-108
	.word	4
	.word	_Label_834
	.word	-112
	.word	4
	.word	_Label_835
	.word	-204
	.word	92
	.word	_Label_836
	.word	-208
	.word	4
	.word	_Label_837
	.word	-212
	.word	4
	.word	_Label_838
	.word	-236
	.word	24
	.word	_Label_839
	.word	-240
	.word	4
	.word	_Label_840
	.word	-244
	.word	4
	.word	_Label_841
	.word	-248
	.word	4
	.word	0
_Label_807:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_808:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_835:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_836:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_838:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_841:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1890,r13		! source line 1890
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_842 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   _temp_843 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-44]
!   _temp_844 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_845 = *_temp_846  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_845) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_847 = _temp_845 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_843  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_844  sizeInBytes=4
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
	mov	1897,r13		! source line 1897
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_849		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_849
!	jmp	_Label_848
_Label_848:
! THEN...
	mov	1897,r13		! source line 1897
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_849:
! CALL STATEMENT...
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_850 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_851 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_852 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_853 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
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
	.word	_Label_854
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_855
	.word	8
	.word	4
	.word	_Label_856
	.word	-12
	.word	4
	.word	_Label_857
	.word	-16
	.word	4
	.word	_Label_858
	.word	-20
	.word	4
	.word	_Label_859
	.word	-24
	.word	4
	.word	_Label_860
	.word	-28
	.word	4
	.word	_Label_861
	.word	-32
	.word	4
	.word	_Label_862
	.word	-36
	.word	4
	.word	_Label_863
	.word	-40
	.word	4
	.word	_Label_864
	.word	-44
	.word	4
	.word	_Label_865
	.word	-48
	.word	4
	.word	_Label_866
	.word	-52
	.word	4
	.word	_Label_867
	.word	-76
	.word	24
	.word	0
_Label_854:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_855:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_866:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_867:
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1911,r13		! source line 1911
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_868 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_869 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-44]
!   _temp_870 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_872 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_871 = *_temp_872  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_871) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_873 = _temp_871 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_869  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_870  sizeInBytes=4
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
	mov	1918,r13		! source line 1918
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_875		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_875
!	jmp	_Label_874
_Label_874:
! THEN...
	mov	1918,r13		! source line 1918
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_875:
! CALL STATEMENT...
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_876 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_877 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_878 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_879 = &strBuffer
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
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
	.word	_Label_880
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_881
	.word	8
	.word	4
	.word	_Label_882
	.word	-12
	.word	4
	.word	_Label_883
	.word	-16
	.word	4
	.word	_Label_884
	.word	-20
	.word	4
	.word	_Label_885
	.word	-24
	.word	4
	.word	_Label_886
	.word	-28
	.word	4
	.word	_Label_887
	.word	-32
	.word	4
	.word	_Label_888
	.word	-36
	.word	4
	.word	_Label_889
	.word	-40
	.word	4
	.word	_Label_890
	.word	-44
	.word	4
	.word	_Label_891
	.word	-48
	.word	4
	.word	_Label_892
	.word	-52
	.word	4
	.word	_Label_893
	.word	-76
	.word	24
	.word	0
_Label_880:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_881:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_892:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_893:
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1933,r13		! source line 1933
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_894 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_895 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_896 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_897 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
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
	.word	_Label_899
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_900
	.word	8
	.word	4
	.word	_Label_901
	.word	12
	.word	4
	.word	_Label_902
	.word	16
	.word	4
	.word	_Label_903
	.word	-12
	.word	4
	.word	_Label_904
	.word	-16
	.word	4
	.word	_Label_905
	.word	-20
	.word	4
	.word	_Label_906
	.word	-24
	.word	4
	.word	_Label_907
	.word	-28
	.word	4
	.word	0
_Label_899:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_900:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_901:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_894\0"
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1952,r13		! source line 1952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_908 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_909 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_910 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_911 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1961,r13		! source line 1961
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_912 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1966,r13		! source line 1966
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
	.word	_Label_913
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_914
	.word	8
	.word	4
	.word	_Label_915
	.word	12
	.word	4
	.word	_Label_916
	.word	16
	.word	4
	.word	_Label_917
	.word	-12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	0
_Label_913:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_914:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_915:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_916:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_908\0"
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1971,r13		! source line 1971
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_922 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_923 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_924 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
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
	.word	_Label_925
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_926
	.word	8
	.word	4
	.word	_Label_927
	.word	12
	.word	4
	.word	_Label_928
	.word	-12
	.word	4
	.word	_Label_929
	.word	-16
	.word	4
	.word	_Label_930
	.word	-20
	.word	4
	.word	0
_Label_925:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_926:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_927:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_922\0"
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1987,r13		! source line 1987
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_931 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_932 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1993,r13		! source line 1993
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
	.word	_Label_933
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_934
	.word	8
	.word	4
	.word	_Label_935
	.word	-12
	.word	4
	.word	_Label_936
	.word	-16
	.word	4
	.word	0
_Label_933:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_934:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_200_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	2585,r13		! source line 2585
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_937 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_937  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   _temp_938 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_938) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_940 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_939 = *_temp_940  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_938 = _temp_939  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   _temp_941 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_941) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_942 = *_temp_943  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_941 = _temp_942  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   _temp_944 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_944) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_946 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_946) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_945 = *_temp_946  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_944 = _temp_945  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_947
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_948
	.word	8
	.word	4
	.word	_Label_949
	.word	12
	.word	4
	.word	_Label_950
	.word	-16
	.word	4
	.word	_Label_951
	.word	-9
	.word	1
	.word	_Label_952
	.word	-20
	.word	4
	.word	_Label_953
	.word	-24
	.word	4
	.word	_Label_954
	.word	-10
	.word	1
	.word	_Label_955
	.word	-28
	.word	4
	.word	_Label_956
	.word	-32
	.word	4
	.word	_Label_957
	.word	-11
	.word	1
	.word	_Label_958
	.word	-36
	.word	4
	.word	_Label_959
	.word	-12
	.word	1
	.word	_Label_960
	.word	-40
	.word	4
	.word	_Label_961
	.word	-44
	.word	4
	.word	0
_Label_947:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_951:
	.byte	'C'
	.ascii	"_temp_945\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_954:
	.byte	'C'
	.ascii	"_temp_942\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_957:
	.byte	'C'
	.ascii	"_temp_939\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_959:
	.byte	'C'
	.ascii	"_temp_937\0"
	.align
_Label_960:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_961:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_199_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_printFCB,r1
	push	r1
	mov	3,r1
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	2595,r13		! source line 2595
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_963 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_962 = *_temp_963  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2596,r13		! source line 2596
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2597,r13		! source line 2597
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_printFCB:
	.word	_sourceFileName
	.word	_Label_964
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_965
	.word	8
	.word	4
	.word	_Label_966
	.word	-12
	.word	4
	.word	_Label_967
	.word	-16
	.word	4
	.word	0
_Label_964:
	.ascii	"printFCB\0"
	.align
_Label_965:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_198_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_printOpen,r1
	push	r1
	mov	4,r1
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	2600,r13		! source line 2600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_968 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2601,r13		! source line 2601
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_969 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_970 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_970  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2603,r13		! source line 2603
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2604,r13		! source line 2604
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
	mov	2604,r13		! source line 2604
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_printOpen:
	.word	_sourceFileName
	.word	_Label_971
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_972
	.word	8
	.word	4
	.word	_Label_973
	.word	-12
	.word	4
	.word	_Label_974
	.word	-16
	.word	4
	.word	_Label_975
	.word	-20
	.word	4
	.word	0
_Label_971:
	.ascii	"printOpen\0"
	.align
_Label_972:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_976
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_976:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_977
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_977:
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_979		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_980 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
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
_Label_979:
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
	.word	_Label_982
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_984
	.word	12
	.word	4
	.word	_Label_985
	.word	-12
	.word	4
	.word	_Label_986
	.word	-16
	.word	4
	.word	0
_Label_982:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_983:
	.ascii	"Pself\0"
	.align
_Label_984:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_980\0"
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
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
!   if count != 2147483647 then goto _Label_988		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_988
!	jmp	_Label_987
_Label_987:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_989 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
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
_Label_988:
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
!   if count > 0 then goto _Label_991		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_991
!	jmp	_Label_990
_Label_990:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_992 = &waitingThreads
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
!   _temp_993 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_993 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_994 = &_P_Kernel_readyList
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
_Label_991:
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
	.word	_Label_995
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_997
	.word	-12
	.word	4
	.word	_Label_998
	.word	-16
	.word	4
	.word	_Label_999
	.word	-20
	.word	4
	.word	_Label_1000
	.word	-24
	.word	4
	.word	_Label_1001
	.word	-28
	.word	4
	.word	_Label_1002
	.word	-32
	.word	4
	.word	0
_Label_995:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_996:
	.ascii	"Pself\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1002:
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
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
!   if count != -2147483648 then goto _Label_1004		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1004
!	jmp	_Label_1003
_Label_1003:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1005 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1005  sizeInBytes=4
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
_Label_1004:
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
!   if count >= 0 then goto _Label_1007		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1007
!	jmp	_Label_1006
_Label_1006:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_1008 = &waitingThreads
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
_Label_1007:
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
	.word	_Label_1009
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1011
	.word	-12
	.word	4
	.word	_Label_1012
	.word	-16
	.word	4
	.word	_Label_1013
	.word	-20
	.word	4
	.word	0
_Label_1009:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1010:
	.ascii	"Pself\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1013:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1014
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1014:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1015
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1015:
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
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
	.word	_Label_1017
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1019
	.word	-12
	.word	4
	.word	0
_Label_1017:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1018:
	.ascii	"Pself\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1016\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1021		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1022 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
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
_Label_1021:
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
!   if heldBy == 0 then goto _Label_1026		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1026
!   _temp_1025 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1027
_Label_1026:
!   _temp_1025 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1027:
!   if _temp_1025 then goto _Label_1024 else goto _Label_1023
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1023
	jmp	_Label_1024
_Label_1023:
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
	jmp	_Label_1028
_Label_1024:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_1029 = &waitingThreads
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
_Label_1028:
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
	.word	_Label_1030
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1032
	.word	-16
	.word	4
	.word	_Label_1033
	.word	-9
	.word	1
	.word	_Label_1034
	.word	-20
	.word	4
	.word	_Label_1035
	.word	-24
	.word	4
	.word	0
_Label_1030:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1031:
	.ascii	"Pself\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1033:
	.byte	'C'
	.ascii	"_temp_1025\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1035:
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1037		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1038 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
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
_Label_1037:
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
!   _temp_1039 = &waitingThreads
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
!   if t == 0 then goto _Label_1041		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1041
!	jmp	_Label_1040
_Label_1040:
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
!   _temp_1042 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1042 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_1043 = &_P_Kernel_readyList
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
	jmp	_Label_1044
_Label_1041:
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
_Label_1044:
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
	.word	_Label_1045
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1047
	.word	-12
	.word	4
	.word	_Label_1048
	.word	-16
	.word	4
	.word	_Label_1049
	.word	-20
	.word	4
	.word	_Label_1050
	.word	-24
	.word	4
	.word	_Label_1051
	.word	-28
	.word	4
	.word	_Label_1052
	.word	-32
	.word	4
	.word	0
_Label_1045:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1046:
	.ascii	"Pself\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1051:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1052:
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1055		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1055
!	jmp	_Label_1054
_Label_1054:
!   _temp_1053 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1056
_Label_1055:
!   _temp_1053 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1056:
!   ReturnResult: _temp_1053  (sizeInBytes=1)
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
	.word	_Label_1057
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1059
	.word	-9
	.word	1
	.word	0
_Label_1057:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1058:
	.ascii	"Pself\0"
	.align
_Label_1059:
	.byte	'C'
	.ascii	"_temp_1053\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1060
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1060:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1061
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1061:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
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
	.word	_Label_1063
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1065
	.word	-12
	.word	4
	.word	0
_Label_1063:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1064:
	.ascii	"Pself\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1062\0"
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
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
!   Retrieve Result: targetName=_temp_1068  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1068 then goto _Label_1067 else goto _Label_1066
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1066
	jmp	_Label_1067
_Label_1066:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1069 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
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
_Label_1067:
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
!   _temp_1070 = &waitingThreads
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
	.word	_Label_1071
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1073
	.word	12
	.word	4
	.word	_Label_1074
	.word	-16
	.word	4
	.word	_Label_1075
	.word	-20
	.word	4
	.word	_Label_1076
	.word	-9
	.word	1
	.word	_Label_1077
	.word	-24
	.word	4
	.word	0
_Label_1071:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1072:
	.ascii	"Pself\0"
	.align
_Label_1073:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1076:
	.byte	'C'
	.ascii	"_temp_1068\0"
	.align
_Label_1077:
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
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
!   Retrieve Result: targetName=_temp_1080  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1080 then goto _Label_1079 else goto _Label_1078
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1078
	jmp	_Label_1079
_Label_1078:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1081 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
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
_Label_1079:
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
!   _temp_1082 = &waitingThreads
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
!   if t == 0 then goto _Label_1084		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1084
!	jmp	_Label_1083
_Label_1083:
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
!   _temp_1085 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1085 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_1086 = &_P_Kernel_readyList
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
_Label_1084:
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
	.word	_Label_1087
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1089
	.word	12
	.word	4
	.word	_Label_1090
	.word	-16
	.word	4
	.word	_Label_1091
	.word	-20
	.word	4
	.word	_Label_1092
	.word	-24
	.word	4
	.word	_Label_1093
	.word	-28
	.word	4
	.word	_Label_1094
	.word	-9
	.word	1
	.word	_Label_1095
	.word	-32
	.word	4
	.word	_Label_1096
	.word	-36
	.word	4
	.word	0
_Label_1087:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1088:
	.ascii	"Pself\0"
	.align
_Label_1089:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1094:
	.byte	'C'
	.ascii	"_temp_1080\0"
	.align
_Label_1095:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1096:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
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
!   Retrieve Result: targetName=_temp_1099  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1099 then goto _Label_1098 else goto _Label_1097
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1097
	jmp	_Label_1098
_Label_1097:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1100 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
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
_Label_1098:
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
_Label_1101:
!	jmp	_Label_1102
_Label_1102:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_1104 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1105
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1105
	jmp	_Label_1106
_Label_1105:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_1103
! END IF...
_Label_1106:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1107 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_1108 = &_P_Kernel_readyList
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
	jmp	_Label_1101
_Label_1103:
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
	.word	_Label_1109
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1111
	.word	12
	.word	4
	.word	_Label_1112
	.word	-16
	.word	4
	.word	_Label_1113
	.word	-20
	.word	4
	.word	_Label_1114
	.word	-24
	.word	4
	.word	_Label_1115
	.word	-28
	.word	4
	.word	_Label_1116
	.word	-9
	.word	1
	.word	_Label_1117
	.word	-32
	.word	4
	.word	_Label_1118
	.word	-36
	.word	4
	.word	0
_Label_1109:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1110:
	.ascii	"Pself\0"
	.align
_Label_1111:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1116:
	.byte	'C'
	.ascii	"_temp_1099\0"
	.align
_Label_1117:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1118:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1119
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
_Label_1119:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1120
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1120:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
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
!   _temp_1121 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1121) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1121 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_1122 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1122 [0 ] into _temp_1123
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
!   Data Move: *_temp_1123 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_1124 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1124 [999 ] into _temp_1125
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
!   Data Move: *_temp_1125 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_1126 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1126 [999 ] into _temp_1127
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
!   stackTop = _temp_1127		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_1128 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1130 = &_temp_1129
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1130 = _temp_1130 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1132:
!   Data Move: *_temp_1130 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1130 = _temp_1130 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1131 = _temp_1131 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1131) then goto _Label_1132
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1132
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1133 = &_temp_1129
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3390
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3390:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1128 = *_temp_1133  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3391:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3391
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
!   _temp_1134 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1136 = &_temp_1135
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1136 = _temp_1136 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1138:
!   Data Move: *_temp_1136 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1136 = _temp_1136 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1137 = _temp_1137 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1137) then goto _Label_1138
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1138
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1139 = &_temp_1135
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3392
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3392:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1134 = *_temp_1139  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3393:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3393
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
	.word	_Label_1140
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1142
	.word	12
	.word	4
	.word	_Label_1143
	.word	-12
	.word	4
	.word	_Label_1144
	.word	-16
	.word	4
	.word	_Label_1145
	.word	-20
	.word	4
	.word	_Label_1146
	.word	-84
	.word	64
	.word	_Label_1147
	.word	-88
	.word	4
	.word	_Label_1148
	.word	-92
	.word	4
	.word	_Label_1149
	.word	-96
	.word	4
	.word	_Label_1150
	.word	-100
	.word	4
	.word	_Label_1151
	.word	-156
	.word	56
	.word	_Label_1152
	.word	-160
	.word	4
	.word	_Label_1153
	.word	-164
	.word	4
	.word	_Label_1154
	.word	-168
	.word	4
	.word	_Label_1155
	.word	-172
	.word	4
	.word	_Label_1156
	.word	-176
	.word	4
	.word	_Label_1157
	.word	-180
	.word	4
	.word	_Label_1158
	.word	-184
	.word	4
	.word	_Label_1159
	.word	-188
	.word	4
	.word	0
_Label_1140:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1141:
	.ascii	"Pself\0"
	.align
_Label_1142:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1121\0"
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
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
!   _temp_1160 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1160  (sizeInBytes=4)
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
!   _temp_1162 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1161  sizeInBytes=4
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
	.word	_Label_1163
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1164
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1165
	.word	12
	.word	4
	.word	_Label_1166
	.word	16
	.word	4
	.word	_Label_1167
	.word	-12
	.word	4
	.word	_Label_1168
	.word	-16
	.word	4
	.word	_Label_1169
	.word	-20
	.word	4
	.word	_Label_1170
	.word	-24
	.word	4
	.word	_Label_1171
	.word	-28
	.word	4
	.word	0
_Label_1163:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1164:
	.ascii	"Pself\0"
	.align
_Label_1165:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1166:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1170:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1171:
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1174 == _P_Kernel_currentThread then goto _Label_1173		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1173
!	jmp	_Label_1172
_Label_1172:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1175 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
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
_Label_1173:
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
!   _temp_1176 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1178		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1178
!	jmp	_Label_1177
_Label_1177:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1180		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1180
!	jmp	_Label_1179
_Label_1179:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1181 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
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
_Label_1180:
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
!   _temp_1183 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1182  sizeInBytes=4
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
_Label_1178:
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
	.word	_Label_1184
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1186
	.word	-12
	.word	4
	.word	_Label_1187
	.word	-16
	.word	4
	.word	_Label_1188
	.word	-20
	.word	4
	.word	_Label_1189
	.word	-24
	.word	4
	.word	_Label_1190
	.word	-28
	.word	4
	.word	_Label_1191
	.word	-32
	.word	4
	.word	_Label_1192
	.word	-36
	.word	4
	.word	_Label_1193
	.word	-40
	.word	4
	.word	_Label_1194
	.word	-44
	.word	4
	.word	0
_Label_1184:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1185:
	.ascii	"Pself\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1192:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1193:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1194:
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1196		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1196
!	jmp	_Label_1195
_Label_1195:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1197 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
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
_Label_1196:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1200 == _P_Kernel_currentThread then goto _Label_1199		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1199
!	jmp	_Label_1198
_Label_1198:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1201 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
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
_Label_1199:
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
!   _temp_1202 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1203
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1203
	jmp	_Label_1204
_Label_1203:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1205 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
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
_Label_1204:
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
	.word	_Label_1206
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1207
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1208
	.word	-12
	.word	4
	.word	_Label_1209
	.word	-16
	.word	4
	.word	_Label_1210
	.word	-20
	.word	4
	.word	_Label_1211
	.word	-24
	.word	4
	.word	_Label_1212
	.word	-28
	.word	4
	.word	_Label_1213
	.word	-32
	.word	4
	.word	0
_Label_1206:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1207:
	.ascii	"Pself\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1213:
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_1217 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1217 [0 ] into _temp_1218
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
!   Data Move: _temp_1216 = *_temp_1218  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1216 == 606348324 then goto _Label_1215		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1215
!	jmp	_Label_1214
_Label_1214:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1219 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
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
	jmp	_Label_1220
_Label_1215:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_1224 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1224 [999 ] into _temp_1225
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
!   Data Move: _temp_1223 = *_temp_1225  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1223 == 606348324 then goto _Label_1222		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1222
!	jmp	_Label_1221
_Label_1221:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1226 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
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
_Label_1222:
! END IF...
_Label_1220:
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
	.word	_Label_1227
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1228
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1229
	.word	-12
	.word	4
	.word	_Label_1230
	.word	-16
	.word	4
	.word	_Label_1231
	.word	-20
	.word	4
	.word	_Label_1232
	.word	-24
	.word	4
	.word	_Label_1233
	.word	-28
	.word	4
	.word	_Label_1234
	.word	-32
	.word	4
	.word	_Label_1235
	.word	-36
	.word	4
	.word	_Label_1236
	.word	-40
	.word	4
	.word	0
_Label_1227:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1228:
	.ascii	"Pself\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1216\0"
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
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
!   _temp_1237 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
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
!   _temp_1238 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1240 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1241 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
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
!   _temp_1246 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1247 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1246  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1242:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1247 then goto _Label_1245		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1245
_Label_1243:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1248 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1249 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1250 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1252 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1252 [i ] into _temp_1253
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
!   Data Move: _temp_1251 = *_temp_1253  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1254 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1256 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1256 [i ] into _temp_1257
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
!   Data Move: _temp_1255 = *_temp_1257  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1258 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1244:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1242
! END FOR
_Label_1245:
! CALL STATEMENT...
!   _temp_1259 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-116]
!   _temp_1260 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1261 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-108]
!   _temp_1263 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1263 [0 ] into _temp_1264
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
!   _temp_1262 = _temp_1264		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1262  sizeInBytes=4
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
	be	_Label_1267
	cmp	r1,2
	be	_Label_1268
	cmp	r1,3
	be	_Label_1269
	cmp	r1,4
	be	_Label_1270
	cmp	r1,5
	be	_Label_1271
	jmp	_Label_1265
! CASE 1...
_Label_1267:
! CALL STATEMENT...
!   _temp_1272 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1272  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_1266
! CASE 2...
_Label_1268:
! CALL STATEMENT...
!   _temp_1273 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_1266
! CASE 3...
_Label_1269:
! CALL STATEMENT...
!   _temp_1274 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_1266
! CASE 4...
_Label_1270:
! CALL STATEMENT...
!   _temp_1275 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_1266
! CASE 5...
_Label_1271:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1266
! DEFAULT CASE...
_Label_1265:
! CALL STATEMENT...
!   _temp_1277 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
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
_Label_1266:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
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
!   _temp_1279 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
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
!   _temp_1284 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1285 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1284  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1280:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1285 then goto _Label_1283		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1283
_Label_1281:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1286 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1287 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1288 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1290 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1290 [i ] into _temp_1291
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
!   Data Move: _temp_1289 = *_temp_1291  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1292 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1294 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1294 [i ] into _temp_1295
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
!   Data Move: _temp_1293 = *_temp_1295  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1296 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1282:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1280
! END FOR
_Label_1283:
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
	.word	_Label_1297
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1299
	.word	-12
	.word	4
	.word	_Label_1300
	.word	-16
	.word	4
	.word	_Label_1301
	.word	-20
	.word	4
	.word	_Label_1302
	.word	-24
	.word	4
	.word	_Label_1303
	.word	-28
	.word	4
	.word	_Label_1304
	.word	-32
	.word	4
	.word	_Label_1305
	.word	-36
	.word	4
	.word	_Label_1306
	.word	-40
	.word	4
	.word	_Label_1307
	.word	-44
	.word	4
	.word	_Label_1308
	.word	-48
	.word	4
	.word	_Label_1309
	.word	-52
	.word	4
	.word	_Label_1310
	.word	-56
	.word	4
	.word	_Label_1311
	.word	-60
	.word	4
	.word	_Label_1312
	.word	-64
	.word	4
	.word	_Label_1313
	.word	-68
	.word	4
	.word	_Label_1314
	.word	-72
	.word	4
	.word	_Label_1315
	.word	-76
	.word	4
	.word	_Label_1316
	.word	-80
	.word	4
	.word	_Label_1317
	.word	-84
	.word	4
	.word	_Label_1318
	.word	-88
	.word	4
	.word	_Label_1319
	.word	-92
	.word	4
	.word	_Label_1320
	.word	-96
	.word	4
	.word	_Label_1321
	.word	-100
	.word	4
	.word	_Label_1322
	.word	-104
	.word	4
	.word	_Label_1323
	.word	-108
	.word	4
	.word	_Label_1324
	.word	-112
	.word	4
	.word	_Label_1325
	.word	-116
	.word	4
	.word	_Label_1326
	.word	-120
	.word	4
	.word	_Label_1327
	.word	-124
	.word	4
	.word	_Label_1328
	.word	-128
	.word	4
	.word	_Label_1329
	.word	-132
	.word	4
	.word	_Label_1330
	.word	-136
	.word	4
	.word	_Label_1331
	.word	-140
	.word	4
	.word	_Label_1332
	.word	-144
	.word	4
	.word	_Label_1333
	.word	-148
	.word	4
	.word	_Label_1334
	.word	-152
	.word	4
	.word	_Label_1335
	.word	-156
	.word	4
	.word	_Label_1336
	.word	-160
	.word	4
	.word	_Label_1337
	.word	-164
	.word	4
	.word	_Label_1338
	.word	-168
	.word	4
	.word	_Label_1339
	.word	-172
	.word	4
	.word	_Label_1340
	.word	-176
	.word	4
	.word	_Label_1341
	.word	-180
	.word	4
	.word	_Label_1342
	.word	-184
	.word	4
	.word	_Label_1343
	.word	-188
	.word	4
	.word	_Label_1344
	.word	-192
	.word	4
	.word	_Label_1345
	.word	-196
	.word	4
	.word	0
_Label_1297:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1298:
	.ascii	"Pself\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1344:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1345:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1346
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1346:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1347
	.word	_sourceFileName
	.word	191		! line number
	.word	45860		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1347:
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
	mov	12519,r1
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1348 = _StringConst_96
	set	_StringConst_96,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
	set	-50072,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   _temp_1349 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50068,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1351 = &_temp_1350
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1351 = _temp_1351 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1353 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3400:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3400
!   _temp_1353 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	11,r1
	store	r1,[r14+-4252]
_Label_1355:
!   Data Move: *_temp_1351 = _temp_1353  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3401:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3401
!   _temp_1351 = _temp_1351 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1352 = _temp_1352 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1352) then goto _Label_1355
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1355
!   Initialize the array size...
	mov	11,r1
	set	-50064,r2
	store	r1,[r14+r2]
!   _temp_1356 = &_temp_1350
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 11
	set	-50068,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3402
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3402:
!   make sure array has size 11
	load	[r14+-80],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1349 = *_temp_1356  (sizeInBytes=45808)
	load	[r14+-80],r5
	set	-50068,r4
	load	[r14+r4],r4
	mov	11452,r3
_Label_3403:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3403
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	45812,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	45812,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: tmLock = zeros  (sizeInBytes=20)
	set	45824,r11
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
	set	45824,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0SE",r10
!   _temp_1359 = &tmLock
	set	45824,r11
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
	set	45844,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   threadFreed = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	45844,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	733,r13		! source line 733
	mov	"\0\0SE",r10
!   _temp_1361 = &threadFreed
	set	45844,r11
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
!   _temp_1366 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1367 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1366  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-50076,r2
	store	r1,[r14+r2]
_Label_1362:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1367 then goto _Label_1365		
	set	-50076,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1365
_Label_1363:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_1368 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   _temp_1369 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1369 [i ] into _temp_1370
!     make sure index expr is >= 0
	set	-50076,r2
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
!   Prepare Argument: offset=12  value=_temp_1368  sizeInBytes=4
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
!   _temp_1371 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1371 [i ] into _temp_1372
!     make sure index expr is >= 0
	set	-50076,r2
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
!   _temp_1373 = _temp_1372 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1373 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_1375 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1375 [i ] into _temp_1376
!     make sure index expr is >= 0
	set	-50076,r2
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
!   _temp_1374 = _temp_1376		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1377 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1374  sizeInBytes=4
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
_Label_1364:
!   i = i + 1
	set	-50076,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
	jmp	_Label_1362
! END FOR
_Label_1365:
! RETURN STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0RE",r10
	set	50080,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1378
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_1379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1380
	.word	-12
	.word	4
	.word	_Label_1381
	.word	-16
	.word	4
	.word	_Label_1382
	.word	-20
	.word	4
	.word	_Label_1383
	.word	-24
	.word	4
	.word	_Label_1384
	.word	-28
	.word	4
	.word	_Label_1385
	.word	-32
	.word	4
	.word	_Label_1386
	.word	-36
	.word	4
	.word	_Label_1387
	.word	-40
	.word	4
	.word	_Label_1388
	.word	-44
	.word	4
	.word	_Label_1389
	.word	-48
	.word	4
	.word	_Label_1390
	.word	-52
	.word	4
	.word	_Label_1391
	.word	-56
	.word	4
	.word	_Label_1392
	.word	-60
	.word	4
	.word	_Label_1393
	.word	-64
	.word	4
	.word	_Label_1394
	.word	-68
	.word	4
	.word	_Label_1395
	.word	-72
	.word	4
	.word	_Label_1396
	.word	-76
	.word	4
	.word	_Label_1397
	.word	-80
	.word	4
	.word	_Label_1398
	.word	-84
	.word	4
	.word	_Label_1399
	.word	-4248
	.word	4164
	.word	_Label_1400
	.word	-4252
	.word	4
	.word	_Label_1401
	.word	-4256
	.word	4
	.word	_Label_1402
	.word	-50064
	.word	45808
	.word	_Label_1403
	.word	-50068
	.word	4
	.word	_Label_1404
	.word	-50072
	.word	4
	.word	_Label_1405
	.word	-50076
	.word	4
	.word	0
_Label_1378:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1379:
	.ascii	"Pself\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1405:
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
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
!   _temp_1406 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1406  sizeInBytes=4
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
!   _temp_1411 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1412 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1411  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1407:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1412 then goto _Label_1410		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1410
_Label_1408:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1413 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
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
!   _temp_1414 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1416 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1416 [i ] into _temp_1417
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
!   _temp_1415 = _temp_1417		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_204_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1409:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1407
! END FOR
_Label_1410:
! CALL STATEMENT...
!   _temp_1418 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1419 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1420 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1419  sizeInBytes=4
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
	.word	_Label_1421
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1422
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1423
	.word	-12
	.word	4
	.word	_Label_1424
	.word	-16
	.word	4
	.word	_Label_1425
	.word	-20
	.word	4
	.word	_Label_1426
	.word	-24
	.word	4
	.word	_Label_1427
	.word	-28
	.word	4
	.word	_Label_1428
	.word	-32
	.word	4
	.word	_Label_1429
	.word	-36
	.word	4
	.word	_Label_1430
	.word	-40
	.word	4
	.word	_Label_1431
	.word	-44
	.word	4
	.word	_Label_1432
	.word	-48
	.word	4
	.word	_Label_1433
	.word	-52
	.word	4
	.word	_Label_1434
	.word	-56
	.word	4
	.word	_Label_1435
	.word	-60
	.word	4
	.word	0
_Label_1421:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1422:
	.ascii	"Pself\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1434:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1435:
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1436 = &tmLock
	set	45824,r11
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
_Label_1437:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1440 = &freeList
	set	45812,r11
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
!   if result==true then goto _Label_1438 else goto _Label_1439
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1439
	jmp	_Label_1438
_Label_1438:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_1441 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1442 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1441  sizeInBytes=4
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
	jmp	_Label_1437
_Label_1439:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1443 = &freeList
	set	45812,r11
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
!   _temp_1444 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1444 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1445 = &tmLock
	set	45824,r11
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
	.word	_Label_1446
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1448
	.word	-12
	.word	4
	.word	_Label_1449
	.word	-16
	.word	4
	.word	_Label_1450
	.word	-20
	.word	4
	.word	_Label_1451
	.word	-24
	.word	4
	.word	_Label_1452
	.word	-28
	.word	4
	.word	_Label_1453
	.word	-32
	.word	4
	.word	_Label_1454
	.word	-36
	.word	4
	.word	_Label_1455
	.word	-40
	.word	4
	.word	0
_Label_1446:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1447:
	.ascii	"Pself\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1455:
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1456 = &tmLock
	set	45824,r11
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
!   _temp_1457 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1457 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1458 = &freeList
	set	45812,r11
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
!   _temp_1459 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1460 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1459  sizeInBytes=4
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
!   _temp_1461 = &tmLock
	set	45824,r11
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
	.word	_Label_1462
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1464
	.word	12
	.word	4
	.word	_Label_1465
	.word	-12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-20
	.word	4
	.word	_Label_1468
	.word	-24
	.word	4
	.word	_Label_1469
	.word	-28
	.word	4
	.word	_Label_1470
	.word	-32
	.word	4
	.word	0
_Label_1462:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1463:
	.ascii	"Pself\0"
	.align
_Label_1464:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1471
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1471:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1472
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1472:
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
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
_Label_3408:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3408
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1474 = &addrSpace
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
	.word	_Label_1475
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1477
	.word	-12
	.word	4
	.word	_Label_1478
	.word	-16
	.word	4
	.word	0
_Label_1475:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1476:
	.ascii	"Pself\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1473\0"
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1479) then goto _runtimeErrorNullPointer
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
!   _temp_1480 = &addrSpace
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
!   _temp_1481 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1481  sizeInBytes=4
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
	call	_function_204_ThreadPrintShort
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
	.word	_Label_1482
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1484
	.word	-12
	.word	4
	.word	_Label_1485
	.word	-16
	.word	4
	.word	_Label_1486
	.word	-20
	.word	4
	.word	0
_Label_1482:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1483:
	.ascii	"Pself\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1479\0"
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1487 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1489 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
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
!   _temp_1490 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1492		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1492
!	jmp	_Label_1491
_Label_1491:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1493 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1494
_Label_1492:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1496		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1496
!	jmp	_Label_1495
_Label_1495:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1497 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1498
_Label_1496:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1500		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1500
!	jmp	_Label_1499
_Label_1499:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1502
_Label_1500:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1503 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
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
_Label_1502:
! END IF...
_Label_1498:
! END IF...
_Label_1494:
! CALL STATEMENT...
!   _temp_1504 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1504  sizeInBytes=4
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
!   _temp_1505 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
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
	.word	_Label_1506
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1507
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1508
	.word	-12
	.word	4
	.word	_Label_1509
	.word	-16
	.word	4
	.word	_Label_1510
	.word	-20
	.word	4
	.word	_Label_1511
	.word	-24
	.word	4
	.word	_Label_1512
	.word	-28
	.word	4
	.word	_Label_1513
	.word	-32
	.word	4
	.word	_Label_1514
	.word	-36
	.word	4
	.word	_Label_1515
	.word	-40
	.word	4
	.word	_Label_1516
	.word	-44
	.word	4
	.word	_Label_1517
	.word	-48
	.word	4
	.word	0
_Label_1506:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1507:
	.ascii	"Pself\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1518
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_1518:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1519
	.word	_sourceFileName
	.word	232		! line number
	.word	1440		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1519:
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
	mov	399,r1
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	880,r13		! source line 880
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   _temp_1520 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1592]
!   NEW ARRAY Constructor...
!   _temp_1522 = &_temp_1521
	add	r14,-1588,r1
	store	r1,[r14+-220]
!   _temp_1522 = _temp_1522 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1524 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3412:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3412
!   _temp_1524 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	11,r1
	store	r1,[r14+-216]
_Label_1526:
!   Data Move: *_temp_1522 = _temp_1524  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3413:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3413
!   _temp_1522 = _temp_1522 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1523 = _temp_1523 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1523) then goto _Label_1526
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1526
!   Initialize the array size...
	mov	11,r1
	store	r1,[r14+-1588]
!   _temp_1527 = &_temp_1521
	add	r14,-1588,r1
	store	r1,[r14+-84]
!   make sure array has size 11
	load	[r14+-1592],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3414
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3414:
!   make sure array has size 11
	load	[r14+-84],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1520 = *_temp_1527  (sizeInBytes=1368)
	load	[r14+-84],r5
	load	[r14+-1592],r4
	mov	342,r3
_Label_3415:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3415
! ASSIGNMENT STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1372,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1372]
! SEND STATEMENT...
	mov	889,r13		! source line 889
	mov	"\0\0SE",r10
!   _temp_1529 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
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
	mov	890,r13		! source line 890
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1392,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1392]
! SEND STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0SE",r10
!   _temp_1531 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1392,r1
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
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1408,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1408]
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1420,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1420]
! SEND STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0SE",r10
!   _temp_1534 = &aProcessDied
	load	[r14+8],r1
	add	r1,1420,r1
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
	mov	895,r13		! source line 895
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1539 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1540 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1539  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1596]
_Label_1535:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1540 then goto _Label_1538		
	load	[r14+-1596],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1538
_Label_1536:
	mov	895,r13		! source line 895
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_1541 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1541 [i ] into _temp_1542
!     make sure index expr is >= 0
	load	[r14+-1596],r2
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
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1544 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1544 [i ] into _temp_1545
!     make sure index expr is >= 0
	load	[r14+-1596],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1543 = _temp_1545		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1546 = &freeList
	load	[r14+8],r1
	add	r1,1408,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1543  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1547 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1547 [i ] into _temp_1548
!     make sure index expr is >= 0
	load	[r14+-1596],r2
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
!   _temp_1549 = _temp_1548 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_1549 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1537:
!   i = i + 1
	load	[r14+-1596],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1596]
	jmp	_Label_1535
! END FOR
_Label_1538:
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1436]
! RETURN STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0RE",r10
	add	r15,1600,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1550
	.word	4		! total size of parameters
	.word	1596		! frame size = 1596
	.word	_Label_1551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1552
	.word	-12
	.word	4
	.word	_Label_1553
	.word	-16
	.word	4
	.word	_Label_1554
	.word	-20
	.word	4
	.word	_Label_1555
	.word	-24
	.word	4
	.word	_Label_1556
	.word	-28
	.word	4
	.word	_Label_1557
	.word	-32
	.word	4
	.word	_Label_1558
	.word	-36
	.word	4
	.word	_Label_1559
	.word	-40
	.word	4
	.word	_Label_1560
	.word	-44
	.word	4
	.word	_Label_1561
	.word	-48
	.word	4
	.word	_Label_1562
	.word	-52
	.word	4
	.word	_Label_1563
	.word	-56
	.word	4
	.word	_Label_1564
	.word	-60
	.word	4
	.word	_Label_1565
	.word	-64
	.word	4
	.word	_Label_1566
	.word	-68
	.word	4
	.word	_Label_1567
	.word	-72
	.word	4
	.word	_Label_1568
	.word	-76
	.word	4
	.word	_Label_1569
	.word	-80
	.word	4
	.word	_Label_1570
	.word	-84
	.word	4
	.word	_Label_1571
	.word	-88
	.word	4
	.word	_Label_1572
	.word	-212
	.word	124
	.word	_Label_1573
	.word	-216
	.word	4
	.word	_Label_1574
	.word	-220
	.word	4
	.word	_Label_1575
	.word	-1588
	.word	1368
	.word	_Label_1576
	.word	-1592
	.word	4
	.word	_Label_1577
	.word	-1596
	.word	4
	.word	0
_Label_1550:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1551:
	.ascii	"Pself\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1577:
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	906,r13		! source line 906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1578 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1578  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1583 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1584 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1583  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1579:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1584 then goto _Label_1582		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1582
_Label_1580:
	mov	915,r13		! source line 915
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1585 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1586 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1587 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1587 [i ] into _temp_1588
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
_Label_1581:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1579
! END FOR
_Label_1582:
! CALL STATEMENT...
!   _temp_1589 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0SE",r10
!   _temp_1590 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1591 = &freeList
	load	[r14+8],r1
	add	r1,1408,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1590  sizeInBytes=4
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
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	924,r13		! source line 924
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
	.word	_Label_1592
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1594
	.word	-12
	.word	4
	.word	_Label_1595
	.word	-16
	.word	4
	.word	_Label_1596
	.word	-20
	.word	4
	.word	_Label_1597
	.word	-24
	.word	4
	.word	_Label_1598
	.word	-28
	.word	4
	.word	_Label_1599
	.word	-32
	.word	4
	.word	_Label_1600
	.word	-36
	.word	4
	.word	_Label_1601
	.word	-40
	.word	4
	.word	_Label_1602
	.word	-44
	.word	4
	.word	_Label_1603
	.word	-48
	.word	4
	.word	_Label_1604
	.word	-52
	.word	4
	.word	_Label_1605
	.word	-56
	.word	4
	.word	0
_Label_1592:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1593:
	.ascii	"Pself\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1604:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1605:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1606 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1606  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1611 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1612 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1611  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1607:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1612 then goto _Label_1610		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1610
_Label_1608:
	mov	938,r13		! source line 938
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1613 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1613  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0SE",r10
!   _temp_1614 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1614 [i ] into _temp_1615
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
_Label_1609:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1607
! END FOR
_Label_1610:
! CALL STATEMENT...
!   _temp_1616 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1616  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0SE",r10
!   _temp_1617 = _function_203_PrintObjectAddr
	set	_function_203_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1618 = &freeList
	load	[r14+8],r1
	add	r1,1408,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1617  sizeInBytes=4
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
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	946,r13		! source line 946
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
	.word	_Label_1619
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	_Label_1627
	.word	-36
	.word	4
	.word	_Label_1628
	.word	-40
	.word	4
	.word	_Label_1629
	.word	-44
	.word	4
	.word	_Label_1630
	.word	-48
	.word	4
	.word	_Label_1631
	.word	-52
	.word	4
	.word	0
_Label_1619:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1630:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1631:
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	951,r13		! source line 951
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1632 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
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
	mov	959,r13		! source line 959
	mov	"\0\0WH",r10
_Label_1633:
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1636 = &freeList
	load	[r14+8],r1
	add	r1,1408,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1634 else goto _Label_1635
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1635
	jmp	_Label_1634
_Label_1634:
	mov	959,r13		! source line 959
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	960,r13		! source line 960
	mov	"\0\0SE",r10
!   _temp_1637 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
	store	r1,[r14+-32]
!   _temp_1638 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1392,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1637  sizeInBytes=4
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
	jmp	_Label_1633
_Label_1635:
! ASSIGNMENT STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0AS",r10
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1639 = &freeList
	load	[r14+8],r1
	add	r1,1408,r1
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
	mov	963,r13		! source line 963
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1436],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1436]
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1640 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1641 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1641 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1436],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_1642 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
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
	mov	967,r13		! source line 967
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
	.word	_Label_1643
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1645
	.word	-12
	.word	4
	.word	_Label_1646
	.word	-16
	.word	4
	.word	_Label_1647
	.word	-20
	.word	4
	.word	_Label_1648
	.word	-24
	.word	4
	.word	_Label_1649
	.word	-28
	.word	4
	.word	_Label_1650
	.word	-32
	.word	4
	.word	_Label_1651
	.word	-36
	.word	4
	.word	_Label_1652
	.word	-40
	.word	4
	.word	_Label_1653
	.word	-44
	.word	4
	.word	0
_Label_1643:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1644:
	.ascii	"Pself\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1653:
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	972,r13		! source line 972
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1654 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
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
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1655 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1656 = &freeList
	load	[r14+8],r1
	add	r1,1408,r1
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
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1657 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
	store	r1,[r14+-20]
!   _temp_1658 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1392,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1657  sizeInBytes=4
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
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_1659 = &processManagerLock
	load	[r14+8],r1
	add	r1,1372,r1
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
	mov	981,r13		! source line 981
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
	.word	_Label_1660
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1661
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1662
	.word	12
	.word	4
	.word	_Label_1663
	.word	-12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-32
	.word	4
	.word	0
_Label_1660:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1661:
	.ascii	"Pself\0"
	.align
_Label_1662:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	63,r1
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0SE",r10
!   _temp_1669 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_1670 = _temp_1669 + 1372
	load	[r14+-244],r1
	add	r1,1372,r1
	store	r1,[r14+-240]
!   Send message Lock
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1675 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1676 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1675  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_1671:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1676 then goto _Label_1674		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1674
_Label_1672:
	mov	993,r13		! source line 993
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0IF",r10
!   _temp_1680 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_1681 = _temp_1680 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_1681 [i ] into _temp_1682
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
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
	store	r2,[r14+-216]
!   _temp_1683 = _temp_1682 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_1679 = *_temp_1683  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1685 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1684 = *_temp_1685  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_1679 != _temp_1684 then goto _Label_1678		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_1678
!	jmp	_Label_1677
_Label_1677:
! THEN...
	mov	996,r13		! source line 996
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   _temp_1686 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_1687 = _temp_1686 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_1687 [i ] into _temp_1688
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
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
	store	r2,[r14+-192]
!   parent = _temp_1688		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_1678:
! IF STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
!   _temp_1693 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_1694 = _temp_1693 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_1694 [i ] into _temp_1695
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
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
	store	r2,[r14+-176]
!   _temp_1696 = _temp_1695 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1692 = *_temp_1696  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_1692 != 2 then goto _Label_1690		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1690
!	jmp	_Label_1691
_Label_1691:
!   _temp_1698 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_1699 = _temp_1698 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1699 [i ] into _temp_1700
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
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
	store	r2,[r14+-156]
!   _temp_1701 = _temp_1700 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1697 = *_temp_1701  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1703 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_1702 = *_temp_1703  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_1697 != _temp_1702 then goto _Label_1690		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_1690
!	jmp	_Label_1689
_Label_1689:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   _temp_1704 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_1705 = _temp_1704 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1705 [i ] into _temp_1706
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-132]
!   _temp_1707 = _temp_1706 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_1707 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1709 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_1710 = _temp_1709 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_1710 [i ] into _temp_1711
!     make sure index expr is >= 0
	load	[r14+-248],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
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
	store	r2,[r14+-112]
!   _temp_1708 = _temp_1711		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_1712 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_1713 = _temp_1712 + 1408
	load	[r14+-108],r1
	add	r1,1408,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1708  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1715 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_1716 = _temp_1715 + 1372
	load	[r14+-96],r1
	add	r1,1372,r1
	store	r1,[r14+-92]
!   _temp_1714 = _temp_1716		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_1717 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1718 = _temp_1717 + 1392
	load	[r14+-88],r1
	add	r1,1392,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1714  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1690:
!   Increment the FOR-LOOP index variable and jump back
_Label_1673:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_1671
! END FOR
_Label_1674:
! IF STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0IF",r10
!   if intIsZero (parent) then goto _Label_1720
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_1720
!	jmp	_Label_1721
_Label_1721:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1723 = parent + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1722 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1722 != 1 then goto _Label_1720		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1720
!	jmp	_Label_1719
_Label_1719:
! THEN...
	mov	1007,r13		! source line 1007
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1724 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_1724 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_1726 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1727 = _temp_1726 + 1372
	load	[r14+-64],r1
	add	r1,1372,r1
	store	r1,[r14+-60]
!   _temp_1725 = _temp_1727		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1729 = _temp_1728 + 1420
	load	[r14+-56],r1
	add	r1,1420,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1725  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_1730
_Label_1720:
! ELSE...
	mov	1010,r13		! source line 1010
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1731 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1731 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_1732 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1733 = _temp_1732 + 1408
	load	[r14+-44],r1
	add	r1,1408,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0SE",r10
!   _temp_1735 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1736 = _temp_1735 + 1372
	load	[r14+-32],r1
	add	r1,1372,r1
	store	r1,[r14+-28]
!   _temp_1734 = _temp_1736		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1738 = _temp_1737 + 1392
	load	[r14+-24],r1
	add	r1,1392,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1734  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1730:
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_1739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1740 = _temp_1739 + 1372
	load	[r14+-16],r1
	add	r1,1372,r1
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
	mov	1015,r13		! source line 1015
	mov	"\0\0RE",r10
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_1741
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	12
	.word	4
	.word	_Label_1744
	.word	-12
	.word	4
	.word	_Label_1745
	.word	-16
	.word	4
	.word	_Label_1746
	.word	-20
	.word	4
	.word	_Label_1747
	.word	-24
	.word	4
	.word	_Label_1748
	.word	-28
	.word	4
	.word	_Label_1749
	.word	-32
	.word	4
	.word	_Label_1750
	.word	-36
	.word	4
	.word	_Label_1751
	.word	-40
	.word	4
	.word	_Label_1752
	.word	-44
	.word	4
	.word	_Label_1753
	.word	-48
	.word	4
	.word	_Label_1754
	.word	-52
	.word	4
	.word	_Label_1755
	.word	-56
	.word	4
	.word	_Label_1756
	.word	-60
	.word	4
	.word	_Label_1757
	.word	-64
	.word	4
	.word	_Label_1758
	.word	-68
	.word	4
	.word	_Label_1759
	.word	-72
	.word	4
	.word	_Label_1760
	.word	-76
	.word	4
	.word	_Label_1761
	.word	-80
	.word	4
	.word	_Label_1762
	.word	-84
	.word	4
	.word	_Label_1763
	.word	-88
	.word	4
	.word	_Label_1764
	.word	-92
	.word	4
	.word	_Label_1765
	.word	-96
	.word	4
	.word	_Label_1766
	.word	-100
	.word	4
	.word	_Label_1767
	.word	-104
	.word	4
	.word	_Label_1768
	.word	-108
	.word	4
	.word	_Label_1769
	.word	-112
	.word	4
	.word	_Label_1770
	.word	-116
	.word	4
	.word	_Label_1771
	.word	-120
	.word	4
	.word	_Label_1772
	.word	-124
	.word	4
	.word	_Label_1773
	.word	-128
	.word	4
	.word	_Label_1774
	.word	-132
	.word	4
	.word	_Label_1775
	.word	-136
	.word	4
	.word	_Label_1776
	.word	-140
	.word	4
	.word	_Label_1777
	.word	-144
	.word	4
	.word	_Label_1778
	.word	-148
	.word	4
	.word	_Label_1779
	.word	-152
	.word	4
	.word	_Label_1780
	.word	-156
	.word	4
	.word	_Label_1781
	.word	-160
	.word	4
	.word	_Label_1782
	.word	-164
	.word	4
	.word	_Label_1783
	.word	-168
	.word	4
	.word	_Label_1784
	.word	-172
	.word	4
	.word	_Label_1785
	.word	-176
	.word	4
	.word	_Label_1786
	.word	-180
	.word	4
	.word	_Label_1787
	.word	-184
	.word	4
	.word	_Label_1788
	.word	-188
	.word	4
	.word	_Label_1789
	.word	-192
	.word	4
	.word	_Label_1790
	.word	-196
	.word	4
	.word	_Label_1791
	.word	-200
	.word	4
	.word	_Label_1792
	.word	-204
	.word	4
	.word	_Label_1793
	.word	-208
	.word	4
	.word	_Label_1794
	.word	-212
	.word	4
	.word	_Label_1795
	.word	-216
	.word	4
	.word	_Label_1796
	.word	-220
	.word	4
	.word	_Label_1797
	.word	-224
	.word	4
	.word	_Label_1798
	.word	-228
	.word	4
	.word	_Label_1799
	.word	-232
	.word	4
	.word	_Label_1800
	.word	-236
	.word	4
	.word	_Label_1801
	.word	-240
	.word	4
	.word	_Label_1802
	.word	-244
	.word	4
	.word	_Label_1803
	.word	-248
	.word	4
	.word	_Label_1804
	.word	-252
	.word	4
	.word	0
_Label_1741:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1804:
	.byte	'P'
	.ascii	"parent\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	22,r1
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	1020,r13		! source line 1020
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1805 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_1806 = _temp_1805 + 1372
	load	[r14+-84],r1
	add	r1,1372,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0WH",r10
_Label_1807:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1811 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1810 = *_temp_1811  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_1810 == 2 then goto _Label_1809		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1809
!	jmp	_Label_1808
_Label_1808:
	mov	1024,r13		! source line 1024
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_1813 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1814 = _temp_1813 + 1372
	load	[r14+-64],r1
	add	r1,1372,r1
	store	r1,[r14+-60]
!   _temp_1812 = _temp_1814		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_1815 = &aProcessDied
	load	[r14+8],r1
	add	r1,1420,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1812  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1807
_Label_1809:
! ASSIGNMENT STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1816 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_1816  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1817 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1817 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1818 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1819 = _temp_1818 + 1408
	load	[r14+-44],r1
	add	r1,1408,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1821 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1822 = _temp_1821 + 1372
	load	[r14+-32],r1
	add	r1,1372,r1
	store	r1,[r14+-28]
!   _temp_1820 = _temp_1822		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1823 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1824 = _temp_1823 + 1392
	load	[r14+-24],r1
	add	r1,1392,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1820  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1825 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1826 = _temp_1825 + 1372
	load	[r14+-16],r1
	add	r1,1372,r1
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
	mov	1034,r13		! source line 1034
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_1827
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_1828
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1829
	.word	12
	.word	4
	.word	_Label_1830
	.word	-12
	.word	4
	.word	_Label_1831
	.word	-16
	.word	4
	.word	_Label_1832
	.word	-20
	.word	4
	.word	_Label_1833
	.word	-24
	.word	4
	.word	_Label_1834
	.word	-28
	.word	4
	.word	_Label_1835
	.word	-32
	.word	4
	.word	_Label_1836
	.word	-36
	.word	4
	.word	_Label_1837
	.word	-40
	.word	4
	.word	_Label_1838
	.word	-44
	.word	4
	.word	_Label_1839
	.word	-48
	.word	4
	.word	_Label_1840
	.word	-52
	.word	4
	.word	_Label_1841
	.word	-56
	.word	4
	.word	_Label_1842
	.word	-60
	.word	4
	.word	_Label_1843
	.word	-64
	.word	4
	.word	_Label_1844
	.word	-68
	.word	4
	.word	_Label_1845
	.word	-72
	.word	4
	.word	_Label_1846
	.word	-76
	.word	4
	.word	_Label_1847
	.word	-80
	.word	4
	.word	_Label_1848
	.word	-84
	.word	4
	.word	_Label_1849
	.word	-88
	.word	4
	.word	0
_Label_1827:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1828:
	.ascii	"Pself\0"
	.align
_Label_1829:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1849:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1850
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1850:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1851
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1851:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	1076,r13		! source line 1076
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1852 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1082,r13		! source line 1082
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
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
	mov	1084,r13		! source line 1084
	mov	"\0\0SE",r10
!   _temp_1854 = &framesInUse
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
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
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
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1856 = &frameManagerLock
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
	mov	1088,r13		! source line 1088
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
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1858 = &newFramesAvailable
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
	mov	1095,r13		! source line 1095
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1863 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1864 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1863  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1859:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1864 then goto _Label_1862		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1862
_Label_1860:
	mov	1095,r13		! source line 1095
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1867 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1867) then goto _Label_1866
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1866
!	jmp	_Label_1865
_Label_1865:
! THEN...
	mov	1099,r13		! source line 1099
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1868 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1868  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1099,r13		! source line 1099
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1866:
!   Increment the FOR-LOOP index variable and jump back
_Label_1861:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1859
! END FOR
_Label_1862:
! RETURN STATEMENT...
	mov	1095,r13		! source line 1095
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
	.word	_Label_1869
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1871
	.word	-12
	.word	4
	.word	_Label_1872
	.word	-16
	.word	4
	.word	_Label_1873
	.word	-20
	.word	4
	.word	_Label_1874
	.word	-24
	.word	4
	.word	_Label_1875
	.word	-28
	.word	4
	.word	_Label_1876
	.word	-32
	.word	4
	.word	_Label_1877
	.word	-36
	.word	4
	.word	_Label_1878
	.word	-40
	.word	4
	.word	_Label_1879
	.word	-44
	.word	4
	.word	_Label_1880
	.word	-48
	.word	4
	.word	_Label_1881
	.word	-52
	.word	4
	.word	_Label_1882
	.word	-56
	.word	4
	.word	0
_Label_1869:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1870:
	.ascii	"Pself\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1882:
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	1106,r13		! source line 1106
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1883 = &frameManagerLock
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
!   _temp_1884 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1885 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1885  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1886 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1886  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_1887 = &framesInUse
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
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1888 = &frameManagerLock
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
	mov	1115,r13		! source line 1115
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
	.word	_Label_1889
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1891
	.word	-12
	.word	4
	.word	_Label_1892
	.word	-16
	.word	4
	.word	_Label_1893
	.word	-20
	.word	4
	.word	_Label_1894
	.word	-24
	.word	4
	.word	_Label_1895
	.word	-28
	.word	4
	.word	_Label_1896
	.word	-32
	.word	4
	.word	0
_Label_1889:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1890:
	.ascii	"Pself\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1883\0"
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	1120,r13		! source line 1120
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1128,r13		! source line 1128
	mov	"\0\0SE",r10
!   _temp_1897 = &frameManagerLock
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
	mov	1131,r13		! source line 1131
	mov	"\0\0WH",r10
_Label_1898:
!   if numberFreeFrames >= 1 then goto _Label_1900		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1900
!	jmp	_Label_1899
_Label_1899:
	mov	1131,r13		! source line 1131
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1901 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1902 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1901  sizeInBytes=4
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
	jmp	_Label_1898
_Label_1900:
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1903 = &framesInUse
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
	mov	1137,r13		! source line 1137
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
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1904 = &frameManagerLock
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
	mov	1143,r13		! source line 1143
	mov	"\0\0AS",r10
!   _temp_1905 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1905		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1145,r13		! source line 1145
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
	.word	_Label_1906
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1908
	.word	-12
	.word	4
	.word	_Label_1909
	.word	-16
	.word	4
	.word	_Label_1910
	.word	-20
	.word	4
	.word	_Label_1911
	.word	-24
	.word	4
	.word	_Label_1912
	.word	-28
	.word	4
	.word	_Label_1913
	.word	-32
	.word	4
	.word	_Label_1914
	.word	-36
	.word	4
	.word	_Label_1915
	.word	-40
	.word	4
	.word	0
_Label_1906:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1907:
	.ascii	"Pself\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1914:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1915:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	1150,r13		! source line 1150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1916 = &frameManagerLock
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
	mov	1154,r13		! source line 1154
	mov	"\0\0WH",r10
_Label_1917:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1919		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1919
!	jmp	_Label_1918
_Label_1918:
	mov	1154,r13		! source line 1154
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1920 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1921 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1920  sizeInBytes=4
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
	jmp	_Label_1917
_Label_1919:
! FOR STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1926 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1927 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1926  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1922:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1927 then goto _Label_1925		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1925
_Label_1923:
	mov	1157,r13		! source line 1157
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1928 = &framesInUse
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
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   _temp_1929 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1929		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1160,r13		! source line 1160
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
_Label_1924:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1922
! END FOR
_Label_1925:
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
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
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1930 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1930 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1931 = &frameManagerLock
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
	mov	1164,r13		! source line 1164
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
	.word	_Label_1932
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1934
	.word	12
	.word	4
	.word	_Label_1935
	.word	16
	.word	4
	.word	_Label_1936
	.word	-12
	.word	4
	.word	_Label_1937
	.word	-16
	.word	4
	.word	_Label_1938
	.word	-20
	.word	4
	.word	_Label_1939
	.word	-24
	.word	4
	.word	_Label_1940
	.word	-28
	.word	4
	.word	_Label_1941
	.word	-32
	.word	4
	.word	_Label_1942
	.word	-36
	.word	4
	.word	_Label_1943
	.word	-40
	.word	4
	.word	_Label_1944
	.word	-44
	.word	4
	.word	_Label_1945
	.word	-48
	.word	4
	.word	_Label_1946
	.word	-52
	.word	4
	.word	_Label_1947
	.word	-56
	.word	4
	.word	0
_Label_1932:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1933:
	.ascii	"Pself\0"
	.align
_Label_1934:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1935:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1945:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1947:
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
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	1169,r13		! source line 1169
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_1948 = &frameManagerLock
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
	mov	1173,r13		! source line 1173
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1953 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1956 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1955 = *_temp_1956  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1954 = _temp_1955 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1953  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1949:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1954 then goto _Label_1952		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1952
_Label_1950:
	mov	1173,r13		! source line 1173
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
	mov	1174,r13		! source line 1174
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
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   _temp_1957 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1957 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1958 = &framesInUse
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
_Label_1951:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1949
! END FOR
_Label_1952:
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1960 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1959 = *_temp_1960  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1959		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1961 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1962 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1961  sizeInBytes=4
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
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_1963 = &frameManagerLock
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
	mov	1180,r13		! source line 1180
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
	.word	_Label_1964
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1966
	.word	12
	.word	4
	.word	_Label_1967
	.word	-12
	.word	4
	.word	_Label_1968
	.word	-16
	.word	4
	.word	_Label_1969
	.word	-20
	.word	4
	.word	_Label_1970
	.word	-24
	.word	4
	.word	_Label_1971
	.word	-28
	.word	4
	.word	_Label_1972
	.word	-32
	.word	4
	.word	_Label_1973
	.word	-36
	.word	4
	.word	_Label_1974
	.word	-40
	.word	4
	.word	_Label_1975
	.word	-44
	.word	4
	.word	_Label_1976
	.word	-48
	.word	4
	.word	_Label_1977
	.word	-52
	.word	4
	.word	_Label_1978
	.word	-56
	.word	4
	.word	_Label_1979
	.word	-60
	.word	4
	.word	_Label_1980
	.word	-64
	.word	4
	.word	_Label_1981
	.word	-68
	.word	4
	.word	0
_Label_1964:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1965:
	.ascii	"Pself\0"
	.align
_Label_1966:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1979:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1980:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1982
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
_Label_1982:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1983
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1983:
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	1191,r13		! source line 1191
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   _temp_1984 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1986 = &_temp_1985
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1986 = _temp_1986 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1988:
!   Data Move: *_temp_1986 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1986 = _temp_1986 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1987 = _temp_1987 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1987) then goto _Label_1988
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1988
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1989 = &_temp_1985
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3428
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3428:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1984 = *_temp_1989  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3429:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3429
! RETURN STATEMENT...
	mov	1196,r13		! source line 1196
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
	.word	_Label_1990
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1992
	.word	-12
	.word	4
	.word	_Label_1993
	.word	-16
	.word	4
	.word	_Label_1994
	.word	-20
	.word	4
	.word	_Label_1995
	.word	-104
	.word	84
	.word	_Label_1996
	.word	-108
	.word	4
	.word	0
_Label_1990:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1991:
	.ascii	"Pself\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1984\0"
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	1201,r13		! source line 1201
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1997 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1997  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1998 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1998  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1207,r13		! source line 1207
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2003 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2004 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2003  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1999:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2004 then goto _Label_2002		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2002
_Label_2000:
	mov	1208,r13		! source line 1208
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2005 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2007 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2007 [i ] into _temp_2008
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
!   _temp_2006 = _temp_2008		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2009 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2009  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2011 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2011 [i ] into _temp_2012
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
!   Data Move: _temp_2010 = *_temp_2012  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2013 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2014 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2015 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2017) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2016  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2018 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2018  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0IF",r10
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2022) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2021  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2021) then goto _Label_2020
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2020
!	jmp	_Label_2019
_Label_2019:
! THEN...
	mov	1219,r13		! source line 1219
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2024) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2023  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2023  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2025
_Label_2020:
! ELSE...
	mov	1221,r13		! source line 1221
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2026 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2025:
! CALL STATEMENT...
!   _temp_2027 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2027  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0IF",r10
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2030) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2028 else goto _Label_2029
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2029
	jmp	_Label_2028
_Label_2028:
! THEN...
	mov	1225,r13		! source line 1225
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2031 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2032
_Label_2029:
! ELSE...
	mov	1227,r13		! source line 1227
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2033 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2032:
! CALL STATEMENT...
!   _temp_2034 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0IF",r10
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2037) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2035 else goto _Label_2036
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2036
	jmp	_Label_2035
_Label_2035:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2038 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2039
_Label_2036:
! ELSE...
	mov	1233,r13		! source line 1233
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2040 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2040  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2039:
! CALL STATEMENT...
!   _temp_2041 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2041  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0IF",r10
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2044) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2042 else goto _Label_2043
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2043
	jmp	_Label_2042
_Label_2042:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2045 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2046
_Label_2043:
! ELSE...
	mov	1239,r13		! source line 1239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2047 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2047  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2046:
! CALL STATEMENT...
!   _temp_2048 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0IF",r10
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2051) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2049 else goto _Label_2050
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2050
	jmp	_Label_2049
_Label_2049:
! THEN...
	mov	1243,r13		! source line 1243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2052 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2052  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2053
_Label_2050:
! ELSE...
	mov	1245,r13		! source line 1245
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2054 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2053:
! CALL STATEMENT...
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2001:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1999
! END FOR
_Label_2002:
! RETURN STATEMENT...
	mov	1208,r13		! source line 1208
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
	.word	_Label_2055
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2056
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2057
	.word	-12
	.word	4
	.word	_Label_2058
	.word	-16
	.word	4
	.word	_Label_2059
	.word	-20
	.word	4
	.word	_Label_2060
	.word	-24
	.word	4
	.word	_Label_2061
	.word	-28
	.word	4
	.word	_Label_2062
	.word	-32
	.word	4
	.word	_Label_2063
	.word	-36
	.word	4
	.word	_Label_2064
	.word	-40
	.word	4
	.word	_Label_2065
	.word	-44
	.word	4
	.word	_Label_2066
	.word	-48
	.word	4
	.word	_Label_2067
	.word	-52
	.word	4
	.word	_Label_2068
	.word	-56
	.word	4
	.word	_Label_2069
	.word	-60
	.word	4
	.word	_Label_2070
	.word	-64
	.word	4
	.word	_Label_2071
	.word	-68
	.word	4
	.word	_Label_2072
	.word	-72
	.word	4
	.word	_Label_2073
	.word	-76
	.word	4
	.word	_Label_2074
	.word	-80
	.word	4
	.word	_Label_2075
	.word	-84
	.word	4
	.word	_Label_2076
	.word	-88
	.word	4
	.word	_Label_2077
	.word	-92
	.word	4
	.word	_Label_2078
	.word	-96
	.word	4
	.word	_Label_2079
	.word	-100
	.word	4
	.word	_Label_2080
	.word	-104
	.word	4
	.word	_Label_2081
	.word	-108
	.word	4
	.word	_Label_2082
	.word	-112
	.word	4
	.word	_Label_2083
	.word	-116
	.word	4
	.word	_Label_2084
	.word	-120
	.word	4
	.word	_Label_2085
	.word	-124
	.word	4
	.word	_Label_2086
	.word	-128
	.word	4
	.word	_Label_2087
	.word	-132
	.word	4
	.word	_Label_2088
	.word	-136
	.word	4
	.word	_Label_2089
	.word	-140
	.word	4
	.word	_Label_2090
	.word	-144
	.word	4
	.word	_Label_2091
	.word	-148
	.word	4
	.word	_Label_2092
	.word	-152
	.word	4
	.word	_Label_2093
	.word	-156
	.word	4
	.word	_Label_2094
	.word	-160
	.word	4
	.word	_Label_2095
	.word	-164
	.word	4
	.word	_Label_2096
	.word	-168
	.word	4
	.word	0
_Label_2055:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2056:
	.ascii	"Pself\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2096:
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	1253,r13		! source line 1253
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0RE",r10
!   _temp_2099 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2099 [entry ] into _temp_2100
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
!   Data Move: _temp_2098 = *_temp_2100  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2097 = _temp_2098 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2097  (sizeInBytes=4)
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
	.word	_Label_2101
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2103
	.word	12
	.word	4
	.word	_Label_2104
	.word	-12
	.word	4
	.word	_Label_2105
	.word	-16
	.word	4
	.word	_Label_2106
	.word	-20
	.word	4
	.word	_Label_2107
	.word	-24
	.word	4
	.word	0
_Label_2101:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2102:
	.ascii	"Pself\0"
	.align
_Label_2103:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2097\0"
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	1263,r13		! source line 1263
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0RE",r10
!   _temp_2110 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2110 [entry ] into _temp_2111
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
!   Data Move: _temp_2109 = *_temp_2111  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2108 = _temp_2109 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2108  (sizeInBytes=4)
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
	.word	_Label_2112
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2114
	.word	12
	.word	4
	.word	_Label_2115
	.word	-12
	.word	4
	.word	_Label_2116
	.word	-16
	.word	4
	.word	_Label_2117
	.word	-20
	.word	4
	.word	_Label_2118
	.word	-24
	.word	4
	.word	0
_Label_2112:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2113:
	.ascii	"Pself\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2108\0"
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
!   _temp_2119 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2119 [entry ] into _temp_2120
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
!   _temp_2124 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2124 [entry ] into _temp_2125
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
!   Data Move: _temp_2123 = *_temp_2125  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2122 = _temp_2123 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2121 = _temp_2122 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2120 = _temp_2121  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1277,r13		! source line 1277
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
	.word	_Label_2126
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2127
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2128
	.word	12
	.word	4
	.word	_Label_2129
	.word	16
	.word	4
	.word	_Label_2130
	.word	-12
	.word	4
	.word	_Label_2131
	.word	-16
	.word	4
	.word	_Label_2132
	.word	-20
	.word	4
	.word	_Label_2133
	.word	-24
	.word	4
	.word	_Label_2134
	.word	-28
	.word	4
	.word	_Label_2135
	.word	-32
	.word	4
	.word	_Label_2136
	.word	-36
	.word	4
	.word	0
_Label_2126:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2127:
	.ascii	"Pself\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2129:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2119\0"
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
	mov	1282,r13		! source line 1282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0RE",r10
!   _temp_2140 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2140 [entry ] into _temp_2141
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
!   Data Move: _temp_2139 = *_temp_2141  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2138 = _temp_2139 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2138) then goto _Label_2142
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2142
!   _temp_2137 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2143
_Label_2142:
!   _temp_2137 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2143:
!   ReturnResult: _temp_2137  (sizeInBytes=1)
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
	.word	_Label_2144
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2145
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2146
	.word	12
	.word	4
	.word	_Label_2147
	.word	-16
	.word	4
	.word	_Label_2148
	.word	-20
	.word	4
	.word	_Label_2149
	.word	-24
	.word	4
	.word	_Label_2150
	.word	-28
	.word	4
	.word	_Label_2151
	.word	-9
	.word	1
	.word	0
_Label_2144:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2145:
	.ascii	"Pself\0"
	.align
_Label_2146:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2151:
	.byte	'C'
	.ascii	"_temp_2137\0"
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	1291,r13		! source line 1291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0RE",r10
!   _temp_2155 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2155 [entry ] into _temp_2156
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
!   Data Move: _temp_2154 = *_temp_2156  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2153 = _temp_2154 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2153) then goto _Label_2157
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2157
!   _temp_2152 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2158
_Label_2157:
!   _temp_2152 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2158:
!   ReturnResult: _temp_2152  (sizeInBytes=1)
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
	.word	_Label_2159
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2161
	.word	12
	.word	4
	.word	_Label_2162
	.word	-16
	.word	4
	.word	_Label_2163
	.word	-20
	.word	4
	.word	_Label_2164
	.word	-24
	.word	4
	.word	_Label_2165
	.word	-28
	.word	4
	.word	_Label_2166
	.word	-9
	.word	1
	.word	0
_Label_2159:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2160:
	.ascii	"Pself\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2166:
	.byte	'C'
	.ascii	"_temp_2152\0"
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
_Label_3436:
	push	r0
	sub	r1,1,r1
	bne	_Label_3436
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0RE",r10
!   _temp_2170 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2170 [entry ] into _temp_2171
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
!   Data Move: _temp_2169 = *_temp_2171  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2168 = _temp_2169 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2168) then goto _Label_2172
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2172
!   _temp_2167 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2173
_Label_2172:
!   _temp_2167 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2173:
!   ReturnResult: _temp_2167  (sizeInBytes=1)
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
	.word	_Label_2174
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2175
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2176
	.word	12
	.word	4
	.word	_Label_2177
	.word	-16
	.word	4
	.word	_Label_2178
	.word	-20
	.word	4
	.word	_Label_2179
	.word	-24
	.word	4
	.word	_Label_2180
	.word	-28
	.word	4
	.word	_Label_2181
	.word	-9
	.word	1
	.word	0
_Label_2174:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2175:
	.ascii	"Pself\0"
	.align
_Label_2176:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2181:
	.byte	'C'
	.ascii	"_temp_2167\0"
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0RE",r10
!   _temp_2185 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2185 [entry ] into _temp_2186
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
!   Data Move: _temp_2184 = *_temp_2186  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2183 = _temp_2184 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2183) then goto _Label_2187
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2187
!   _temp_2182 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2188
_Label_2187:
!   _temp_2182 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2188:
!   ReturnResult: _temp_2182  (sizeInBytes=1)
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
	.word	_Label_2189
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2190
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2191
	.word	12
	.word	4
	.word	_Label_2192
	.word	-16
	.word	4
	.word	_Label_2193
	.word	-20
	.word	4
	.word	_Label_2194
	.word	-24
	.word	4
	.word	_Label_2195
	.word	-28
	.word	4
	.word	_Label_2196
	.word	-9
	.word	1
	.word	0
_Label_2189:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2190:
	.ascii	"Pself\0"
	.align
_Label_2191:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2196:
	.byte	'C'
	.ascii	"_temp_2182\0"
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   _temp_2197 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2197 [entry ] into _temp_2198
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
!   _temp_2201 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2201 [entry ] into _temp_2202
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
!   Data Move: _temp_2200 = *_temp_2202  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2199 = _temp_2200 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2198 = _temp_2199  (sizeInBytes=4)
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2203
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2205
	.word	12
	.word	4
	.word	_Label_2206
	.word	-12
	.word	4
	.word	_Label_2207
	.word	-16
	.word	4
	.word	_Label_2208
	.word	-20
	.word	4
	.word	_Label_2209
	.word	-24
	.word	4
	.word	_Label_2210
	.word	-28
	.word	4
	.word	_Label_2211
	.word	-32
	.word	4
	.word	0
_Label_2203:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2204:
	.ascii	"Pself\0"
	.align
_Label_2205:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2197\0"
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
!   _temp_2212 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2212 [entry ] into _temp_2213
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
!   _temp_2216 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2216 [entry ] into _temp_2217
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
!   Data Move: _temp_2215 = *_temp_2217  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2214 = _temp_2215 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2213 = _temp_2214  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1331,r13		! source line 1331
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
	.word	_Label_2218
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2219
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2220
	.word	12
	.word	4
	.word	_Label_2221
	.word	-12
	.word	4
	.word	_Label_2222
	.word	-16
	.word	4
	.word	_Label_2223
	.word	-20
	.word	4
	.word	_Label_2224
	.word	-24
	.word	4
	.word	_Label_2225
	.word	-28
	.word	4
	.word	_Label_2226
	.word	-32
	.word	4
	.word	0
_Label_2218:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2219:
	.ascii	"Pself\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2212\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	1336,r13		! source line 1336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
!   _temp_2227 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2227 [entry ] into _temp_2228
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
!   _temp_2231 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2231 [entry ] into _temp_2232
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
!   Data Move: _temp_2230 = *_temp_2232  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2229 = _temp_2230 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2228 = _temp_2229  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1340,r13		! source line 1340
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
	.word	_Label_2233
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2234
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2235
	.word	12
	.word	4
	.word	_Label_2236
	.word	-12
	.word	4
	.word	_Label_2237
	.word	-16
	.word	4
	.word	_Label_2238
	.word	-20
	.word	4
	.word	_Label_2239
	.word	-24
	.word	4
	.word	_Label_2240
	.word	-28
	.word	4
	.word	_Label_2241
	.word	-32
	.word	4
	.word	0
_Label_2233:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2234:
	.ascii	"Pself\0"
	.align
_Label_2235:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2227\0"
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	1345,r13		! source line 1345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0AS",r10
!   _temp_2242 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2242 [entry ] into _temp_2243
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
!   _temp_2246 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2246 [entry ] into _temp_2247
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
!   Data Move: _temp_2245 = *_temp_2247  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2244 = _temp_2245 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2243 = _temp_2244  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1349,r13		! source line 1349
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
	.word	_Label_2248
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2250
	.word	12
	.word	4
	.word	_Label_2251
	.word	-12
	.word	4
	.word	_Label_2252
	.word	-16
	.word	4
	.word	_Label_2253
	.word	-20
	.word	4
	.word	_Label_2254
	.word	-24
	.word	4
	.word	_Label_2255
	.word	-28
	.word	4
	.word	_Label_2256
	.word	-32
	.word	4
	.word	0
_Label_2248:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2249:
	.ascii	"Pself\0"
	.align
_Label_2250:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2242\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	1354,r13		! source line 1354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
!   _temp_2257 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2257 [entry ] into _temp_2258
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
!   _temp_2261 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2261 [entry ] into _temp_2262
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
!   Data Move: _temp_2260 = *_temp_2262  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2259 = _temp_2260 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2258 = _temp_2259  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1358,r13		! source line 1358
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
	.word	_Label_2263
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2264
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2265
	.word	12
	.word	4
	.word	_Label_2266
	.word	-12
	.word	4
	.word	_Label_2267
	.word	-16
	.word	4
	.word	_Label_2268
	.word	-20
	.word	4
	.word	_Label_2269
	.word	-24
	.word	4
	.word	_Label_2270
	.word	-28
	.word	4
	.word	_Label_2271
	.word	-32
	.word	4
	.word	0
_Label_2263:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2264:
	.ascii	"Pself\0"
	.align
_Label_2265:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2257\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1363,r13		! source line 1363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0AS",r10
!   _temp_2272 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2272 [entry ] into _temp_2273
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
!   _temp_2276 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2276 [entry ] into _temp_2277
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
!   Data Move: _temp_2275 = *_temp_2277  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2274 = _temp_2275 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2273 = _temp_2274  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
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
	.word	_Label_2278
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2279
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2280
	.word	12
	.word	4
	.word	_Label_2281
	.word	-12
	.word	4
	.word	_Label_2282
	.word	-16
	.word	4
	.word	_Label_2283
	.word	-20
	.word	4
	.word	_Label_2284
	.word	-24
	.word	4
	.word	_Label_2285
	.word	-28
	.word	4
	.word	_Label_2286
	.word	-32
	.word	4
	.word	0
_Label_2278:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2279:
	.ascii	"Pself\0"
	.align
_Label_2280:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2272\0"
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   _temp_2287 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2287 [entry ] into _temp_2288
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
!   _temp_2291 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2291 [entry ] into _temp_2292
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
!   Data Move: _temp_2290 = *_temp_2292  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2289 = _temp_2290 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2288 = _temp_2289  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
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
	.word	_Label_2293
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2294
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2295
	.word	12
	.word	4
	.word	_Label_2296
	.word	-12
	.word	4
	.word	_Label_2297
	.word	-16
	.word	4
	.word	_Label_2298
	.word	-20
	.word	4
	.word	_Label_2299
	.word	-24
	.word	4
	.word	_Label_2300
	.word	-28
	.word	4
	.word	_Label_2301
	.word	-32
	.word	4
	.word	0
_Label_2293:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2294:
	.ascii	"Pself\0"
	.align
_Label_2295:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2287\0"
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1381,r13		! source line 1381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   _temp_2302 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2302 [entry ] into _temp_2303
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
!   _temp_2306 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2306 [entry ] into _temp_2307
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
!   Data Move: _temp_2305 = *_temp_2307  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2304 = _temp_2305 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2303 = _temp_2304  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
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
	.word	_Label_2308
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2309
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2310
	.word	12
	.word	4
	.word	_Label_2311
	.word	-12
	.word	4
	.word	_Label_2312
	.word	-16
	.word	4
	.word	_Label_2313
	.word	-20
	.word	4
	.word	_Label_2314
	.word	-24
	.word	4
	.word	_Label_2315
	.word	-28
	.word	4
	.word	_Label_2316
	.word	-32
	.word	4
	.word	0
_Label_2308:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2309:
	.ascii	"Pself\0"
	.align
_Label_2310:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2302\0"
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2318 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2318 [0 ] into _temp_2319
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
!   _temp_2317 = _temp_2319		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2320 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2317  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
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
	.word	_Label_2321
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2322
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2323
	.word	-12
	.word	4
	.word	_Label_2324
	.word	-16
	.word	4
	.word	_Label_2325
	.word	-20
	.word	4
	.word	_Label_2326
	.word	-24
	.word	4
	.word	0
_Label_2321:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2322:
	.ascii	"Pself\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2317\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	1401,r13		! source line 1401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2327
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2327
	jmp	_Label_2328
_Label_2327:
! THEN...
	mov	1417,r13		! source line 1417
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2329
_Label_2328:
! ELSE...
	mov	1418,r13		! source line 1418
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2331		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2331
!	jmp	_Label_2330
_Label_2330:
! THEN...
	mov	1419,r13		! source line 1419
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2331:
! END IF...
_Label_2329:
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
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
	mov	1422,r13		! source line 1422
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
	mov	1425,r13		! source line 1425
	mov	"\0\0WH",r10
_Label_2332:
!	jmp	_Label_2333
_Label_2333:
	mov	1425,r13		! source line 1425
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2336		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2336
!	jmp	_Label_2335
_Label_2335:
! THEN...
	mov	1427,r13		! source line 1427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2337 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1427,r13		! source line 1427
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2336:
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
	mov	1430,r13		! source line 1430
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2341) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2340  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2340 then goto _Label_2339 else goto _Label_2338
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2338
	jmp	_Label_2339
_Label_2338:
! THEN...
	mov	1431,r13		! source line 1431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2342 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2342  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2339:
! ASSIGNMENT STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0AS",r10
	mov	1434,r13		! source line 1434
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2344) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2343  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2343 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0WH",r10
_Label_2345:
!   if offset >= 8192 then goto _Label_2347		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2347
!	jmp	_Label_2346
_Label_2346:
	mov	1436,r13		! source line 1436
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2348 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2348  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2350		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2350
!	jmp	_Label_2349
_Label_2349:
! THEN...
	mov	1445,r13		! source line 1445
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2350:
! END WHILE...
	jmp	_Label_2345
_Label_2347:
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2332
_Label_2334:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2351
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2352
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2353
	.word	12
	.word	4
	.word	_Label_2354
	.word	16
	.word	4
	.word	_Label_2355
	.word	20
	.word	4
	.word	_Label_2356
	.word	-9
	.word	1
	.word	_Label_2357
	.word	-16
	.word	4
	.word	_Label_2358
	.word	-20
	.word	4
	.word	_Label_2359
	.word	-24
	.word	4
	.word	_Label_2360
	.word	-28
	.word	4
	.word	_Label_2361
	.word	-10
	.word	1
	.word	_Label_2362
	.word	-32
	.word	4
	.word	_Label_2363
	.word	-36
	.word	4
	.word	_Label_2364
	.word	-40
	.word	4
	.word	_Label_2365
	.word	-44
	.word	4
	.word	_Label_2366
	.word	-48
	.word	4
	.word	0
_Label_2351:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2352:
	.ascii	"Pself\0"
	.align
_Label_2353:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2354:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2355:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2356:
	.byte	'C'
	.ascii	"_temp_2348\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2361:
	.byte	'C'
	.ascii	"_temp_2340\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2363:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2364:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2365:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2366:
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1455,r13		! source line 1455
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2367
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2367
	jmp	_Label_2368
_Label_2367:
! THEN...
	mov	1467,r13		! source line 1467
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2369
_Label_2368:
! ELSE...
	mov	1468,r13		! source line 1468
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2371		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2371
!	jmp	_Label_2370
_Label_2370:
! THEN...
	mov	1469,r13		! source line 1469
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2371:
! END IF...
_Label_2369:
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
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
	mov	1472,r13		! source line 1472
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
	mov	1473,r13		! source line 1473
	mov	"\0\0WH",r10
_Label_2372:
!	jmp	_Label_2373
_Label_2373:
	mov	1473,r13		! source line 1473
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2378		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2378
	jmp	_Label_2375
_Label_2378:
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2380) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2379  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2379 then goto _Label_2377 else goto _Label_2375
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2375
	jmp	_Label_2377
_Label_2377:
	mov	1476,r13		! source line 1476
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2382) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2381  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2381 then goto _Label_2376 else goto _Label_2375
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2375
	jmp	_Label_2376
_Label_2375:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2376:
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
	mov	1479,r13		! source line 1479
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2384) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2383 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0WH",r10
_Label_2385:
!   if offset >= 8192 then goto _Label_2387		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2387
!	jmp	_Label_2386
_Label_2386:
	mov	1480,r13		! source line 1480
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2388 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2388  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2390		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2390
!	jmp	_Label_2389
_Label_2389:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2390:
! END WHILE...
	jmp	_Label_2385
_Label_2387:
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2372
_Label_2374:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2391
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2393
	.word	12
	.word	4
	.word	_Label_2394
	.word	16
	.word	4
	.word	_Label_2395
	.word	20
	.word	4
	.word	_Label_2396
	.word	-9
	.word	1
	.word	_Label_2397
	.word	-16
	.word	4
	.word	_Label_2398
	.word	-20
	.word	4
	.word	_Label_2399
	.word	-24
	.word	4
	.word	_Label_2400
	.word	-10
	.word	1
	.word	_Label_2401
	.word	-28
	.word	4
	.word	_Label_2402
	.word	-11
	.word	1
	.word	_Label_2403
	.word	-32
	.word	4
	.word	_Label_2404
	.word	-36
	.word	4
	.word	_Label_2405
	.word	-40
	.word	4
	.word	_Label_2406
	.word	-44
	.word	4
	.word	0
_Label_2391:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2392:
	.ascii	"Pself\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2395:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2396:
	.byte	'C'
	.ascii	"_temp_2388\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2400:
	.byte	'C'
	.ascii	"_temp_2381\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2402:
	.byte	'C'
	.ascii	"_temp_2379\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2404:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2405:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2406:
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1497,r13		! source line 1497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0IF",r10
	mov	1521,r13		! source line 1521
	mov	"\0\0SE",r10
!   _temp_2410 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2411) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2410  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2409  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2409 >= 4 then goto _Label_2408		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2408
!	jmp	_Label_2407
_Label_2407:
! THEN...
	mov	1524,r13		! source line 1524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2408:
! IF STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2413		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2413
!	jmp	_Label_2412
_Label_2412:
! THEN...
	mov	1529,r13		! source line 1529
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2413:
! ASSIGNMENT STATEMENT...
	mov	1532,r13		! source line 1532
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
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
	mov	1534,r13		! source line 1534
	mov	"\0\0SE",r10
!   _temp_2416 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2415 = _temp_2416 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2417 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2418) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2415  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2417  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2414  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2414  (sizeInBytes=4)
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
	.word	_Label_2419
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2421
	.word	12
	.word	4
	.word	_Label_2422
	.word	16
	.word	4
	.word	_Label_2423
	.word	20
	.word	4
	.word	_Label_2424
	.word	-12
	.word	4
	.word	_Label_2425
	.word	-16
	.word	4
	.word	_Label_2426
	.word	-20
	.word	4
	.word	_Label_2427
	.word	-24
	.word	4
	.word	_Label_2428
	.word	-28
	.word	4
	.word	_Label_2429
	.word	-32
	.word	4
	.word	_Label_2430
	.word	-36
	.word	4
	.word	_Label_2431
	.word	-40
	.word	4
	.word	_Label_2432
	.word	-44
	.word	4
	.word	0
_Label_2419:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2420:
	.ascii	"Pself\0"
	.align
_Label_2421:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2432:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2433
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2433:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2434
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2434:
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	2021,r13		! source line 2021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2435 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2435  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
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
	mov	2030,r13		! source line 2030
	mov	"\0\0SE",r10
!   _temp_2437 = &semUsedInSynchMethods
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
	mov	2031,r13		! source line 2031
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
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_2439 = &diskBusy
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
	mov	2032,r13		! source line 2032
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
	.word	_Label_2440
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2442
	.word	-12
	.word	4
	.word	_Label_2443
	.word	-16
	.word	4
	.word	_Label_2444
	.word	-20
	.word	4
	.word	_Label_2445
	.word	-24
	.word	4
	.word	_Label_2446
	.word	-28
	.word	4
	.word	0
_Label_2440:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2441:
	.ascii	"Pself\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2435\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	2037,r13		! source line 2037
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_2447 = &diskBusy
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
	mov	2051,r13		! source line 2051
	mov	"\0\0WH",r10
_Label_2448:
!	jmp	_Label_2449
_Label_2449:
	mov	2051,r13		! source line 2051
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   _temp_2451 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2452) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2451  sizeInBytes=4
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
	mov	2055,r13		! source line 2055
	mov	"\0\0SE",r10
!   _temp_2453 = &semUsedInSynchMethods
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
	mov	2058,r13		! source line 2058
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2462 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2456
	cmp	r1,2
	be	_Label_2457
	cmp	r1,3
	be	_Label_2458
	cmp	r1,4
	be	_Label_2459
	cmp	r1,5
	be	_Label_2460
	cmp	r1,6
	be	_Label_2461
	jmp	_Label_2454
! CASE 1...
_Label_2456:
! SEND STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0SE",r10
!   _temp_2463 = &diskBusy
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
	mov	2061,r13		! source line 2061
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2457:
! CALL STATEMENT...
!   _temp_2464 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2464  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2063,r13		! source line 2063
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2458:
! CALL STATEMENT...
!   _temp_2465 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2065,r13		! source line 2065
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2459:
! CALL STATEMENT...
!   _temp_2466 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2466  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2067,r13		! source line 2067
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2460:
! BREAK STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0BR",r10
	jmp	_Label_2455
! CASE 6...
_Label_2461:
! CALL STATEMENT...
!   _temp_2467 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2467  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2073,r13		! source line 2073
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2454:
! CALL STATEMENT...
!   _temp_2468 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2075,r13		! source line 2075
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2455:
! END WHILE...
	jmp	_Label_2448
_Label_2450:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2469
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2471
	.word	12
	.word	4
	.word	_Label_2472
	.word	16
	.word	4
	.word	_Label_2473
	.word	20
	.word	4
	.word	_Label_2474
	.word	-12
	.word	4
	.word	_Label_2475
	.word	-16
	.word	4
	.word	_Label_2476
	.word	-20
	.word	4
	.word	_Label_2477
	.word	-24
	.word	4
	.word	_Label_2478
	.word	-28
	.word	4
	.word	_Label_2479
	.word	-32
	.word	4
	.word	_Label_2480
	.word	-36
	.word	4
	.word	_Label_2481
	.word	-40
	.word	4
	.word	_Label_2482
	.word	-44
	.word	4
	.word	_Label_2483
	.word	-48
	.word	4
	.word	_Label_2484
	.word	-52
	.word	4
	.word	0
_Label_2469:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2470:
	.ascii	"Pself\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2473:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2447\0"
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
	mov	2084,r13		! source line 2084
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
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
	mov	2103,r13		! source line 2103
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
	mov	2104,r13		! source line 2104
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
	mov	2105,r13		! source line 2105
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
	mov	2105,r13		! source line 2105
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
	.word	_Label_2485
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2487
	.word	12
	.word	4
	.word	_Label_2488
	.word	16
	.word	4
	.word	_Label_2489
	.word	20
	.word	4
	.word	_Label_2490
	.word	24
	.word	4
	.word	0
_Label_2485:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2486:
	.ascii	"Pself\0"
	.align
_Label_2487:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2488:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2489:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2490:
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	2110,r13		! source line 2110
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_2491 = &diskBusy
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
	mov	2123,r13		! source line 2123
	mov	"\0\0WH",r10
_Label_2492:
!	jmp	_Label_2493
_Label_2493:
	mov	2123,r13		! source line 2123
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_2495 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2496) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2495  sizeInBytes=4
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
	mov	2126,r13		! source line 2126
	mov	"\0\0SE",r10
!   _temp_2497 = &semUsedInSynchMethods
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
	mov	2129,r13		! source line 2129
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2506 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2500
	cmp	r1,2
	be	_Label_2501
	cmp	r1,3
	be	_Label_2502
	cmp	r1,4
	be	_Label_2503
	cmp	r1,5
	be	_Label_2504
	cmp	r1,6
	be	_Label_2505
	jmp	_Label_2498
! CASE 1...
_Label_2500:
! SEND STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   _temp_2507 = &diskBusy
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
	mov	2132,r13		! source line 2132
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2501:
! CALL STATEMENT...
!   _temp_2508 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2508  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2134,r13		! source line 2134
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2502:
! CALL STATEMENT...
!   _temp_2509 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2509  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2136,r13		! source line 2136
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2503:
! CALL STATEMENT...
!   _temp_2510 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2510  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2138,r13		! source line 2138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2504:
! BREAK STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0BR",r10
	jmp	_Label_2499
! CASE 6...
_Label_2505:
! CALL STATEMENT...
!   _temp_2511 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2511  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2144,r13		! source line 2144
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2498:
! CALL STATEMENT...
!   _temp_2512 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2146,r13		! source line 2146
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2499:
! END WHILE...
	jmp	_Label_2492
_Label_2494:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2513
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2515
	.word	12
	.word	4
	.word	_Label_2516
	.word	16
	.word	4
	.word	_Label_2517
	.word	20
	.word	4
	.word	_Label_2518
	.word	-12
	.word	4
	.word	_Label_2519
	.word	-16
	.word	4
	.word	_Label_2520
	.word	-20
	.word	4
	.word	_Label_2521
	.word	-24
	.word	4
	.word	_Label_2522
	.word	-28
	.word	4
	.word	_Label_2523
	.word	-32
	.word	4
	.word	_Label_2524
	.word	-36
	.word	4
	.word	_Label_2525
	.word	-40
	.word	4
	.word	_Label_2526
	.word	-44
	.word	4
	.word	_Label_2527
	.word	-48
	.word	4
	.word	_Label_2528
	.word	-52
	.word	4
	.word	0
_Label_2513:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2514:
	.ascii	"Pself\0"
	.align
_Label_2515:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2516:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2517:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2491\0"
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
	mov	2155,r13		! source line 2155
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
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
	mov	2173,r13		! source line 2173
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
	mov	2174,r13		! source line 2174
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
	mov	2175,r13		! source line 2175
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
	mov	2175,r13		! source line 2175
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
	.word	_Label_2529
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2531
	.word	12
	.word	4
	.word	_Label_2532
	.word	16
	.word	4
	.word	_Label_2533
	.word	20
	.word	4
	.word	_Label_2534
	.word	24
	.word	4
	.word	0
_Label_2529:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2530:
	.ascii	"Pself\0"
	.align
_Label_2531:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2532:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2533:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2534:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2535
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
_Label_2535:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2536
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2536:
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	2186,r13		! source line 2186
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2537 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2193,r13		! source line 2193
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
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
	mov	2195,r13		! source line 2195
	mov	"\0\0SE",r10
!   _temp_2539 = &fileManagerLock
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
	mov	2198,r13		! source line 2198
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
	mov	2199,r13		! source line 2199
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
	mov	2200,r13		! source line 2200
	mov	"\0\0SE",r10
!   _temp_2542 = &anFCBBecameFree
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
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   _temp_2543 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2545 = &_temp_2544
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2545 = _temp_2545 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2547 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3454:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3454
!   _temp_2547 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2549:
!   Data Move: *_temp_2545 = _temp_2547  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3455:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3455
!   _temp_2545 = _temp_2545 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2546 = _temp_2546 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2546) then goto _Label_2549
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2549
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2550 = &_temp_2544
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3456
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3456:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2543 = *_temp_2550  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3457:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3457
! FOR STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2555 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2556 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2555  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2551:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2556 then goto _Label_2554		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2554
_Label_2552:
	mov	2203,r13		! source line 2203
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   _temp_2557 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2557 [i ] into _temp_2558
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
!   _temp_2559 = _temp_2558 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2559 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0SE",r10
!   _temp_2560 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2560 [i ] into _temp_2561
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
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2563 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2563 [i ] into _temp_2564
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
!   _temp_2562 = _temp_2564		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2565 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2562  sizeInBytes=4
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
_Label_2553:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2551
! END FOR
_Label_2554:
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
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
	mov	2211,r13		! source line 2211
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
	mov	2212,r13		! source line 2212
	mov	"\0\0SE",r10
!   _temp_2568 = &anOpenFileBecameFree
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
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   _temp_2569 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2571 = &_temp_2570
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2571 = _temp_2571 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2573 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3458:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3458
!   _temp_2573 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2575:
!   Data Move: *_temp_2571 = _temp_2573  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3459:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3459
!   _temp_2571 = _temp_2571 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2572 = _temp_2572 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2572) then goto _Label_2575
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2575
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2576 = &_temp_2570
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3460
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3460:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2569 = *_temp_2576  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3461:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3461
! FOR STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2581 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2582 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2581  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2577:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2582 then goto _Label_2580		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2580
_Label_2578:
	mov	2215,r13		! source line 2215
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   _temp_2583 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2583 [i ] into _temp_2584
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
!   _temp_2585 = _temp_2584 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2585 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0SE",r10
!   _temp_2587 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2587 [i ] into _temp_2588
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
!   _temp_2586 = _temp_2588		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2589 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2586  sizeInBytes=4
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
_Label_2579:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2577
! END FOR
_Label_2580:
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3462:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3462
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   _temp_2591 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2592 = _temp_2591 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2592 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   _temp_2593 = &_P_Kernel_frameManager
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
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_2594 = &_P_Kernel_diskDriver
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
	mov	2228,r13		! source line 2228
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
	.word	_Label_2595
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2597
	.word	-12
	.word	4
	.word	_Label_2598
	.word	-16
	.word	4
	.word	_Label_2599
	.word	-20
	.word	4
	.word	_Label_2600
	.word	-24
	.word	4
	.word	_Label_2601
	.word	-28
	.word	4
	.word	_Label_2602
	.word	-32
	.word	4
	.word	_Label_2603
	.word	-36
	.word	4
	.word	_Label_2604
	.word	-40
	.word	4
	.word	_Label_2605
	.word	-44
	.word	4
	.word	_Label_2606
	.word	-48
	.word	4
	.word	_Label_2607
	.word	-52
	.word	4
	.word	_Label_2608
	.word	-56
	.word	4
	.word	_Label_2609
	.word	-60
	.word	4
	.word	_Label_2610
	.word	-64
	.word	4
	.word	_Label_2611
	.word	-68
	.word	4
	.word	_Label_2612
	.word	-72
	.word	4
	.word	_Label_2613
	.word	-100
	.word	28
	.word	_Label_2614
	.word	-104
	.word	4
	.word	_Label_2615
	.word	-108
	.word	4
	.word	_Label_2616
	.word	-392
	.word	284
	.word	_Label_2617
	.word	-396
	.word	4
	.word	_Label_2618
	.word	-400
	.word	4
	.word	_Label_2619
	.word	-404
	.word	4
	.word	_Label_2620
	.word	-408
	.word	4
	.word	_Label_2621
	.word	-412
	.word	4
	.word	_Label_2622
	.word	-416
	.word	4
	.word	_Label_2623
	.word	-420
	.word	4
	.word	_Label_2624
	.word	-424
	.word	4
	.word	_Label_2625
	.word	-428
	.word	4
	.word	_Label_2626
	.word	-432
	.word	4
	.word	_Label_2627
	.word	-436
	.word	4
	.word	_Label_2628
	.word	-440
	.word	4
	.word	_Label_2629
	.word	-444
	.word	4
	.word	_Label_2630
	.word	-448
	.word	4
	.word	_Label_2631
	.word	-452
	.word	4
	.word	_Label_2632
	.word	-456
	.word	4
	.word	_Label_2633
	.word	-460
	.word	4
	.word	_Label_2634
	.word	-500
	.word	40
	.word	_Label_2635
	.word	-504
	.word	4
	.word	_Label_2636
	.word	-508
	.word	4
	.word	_Label_2637
	.word	-912
	.word	404
	.word	_Label_2638
	.word	-916
	.word	4
	.word	_Label_2639
	.word	-920
	.word	4
	.word	_Label_2640
	.word	-924
	.word	4
	.word	_Label_2641
	.word	-928
	.word	4
	.word	_Label_2642
	.word	-932
	.word	4
	.word	_Label_2643
	.word	-936
	.word	4
	.word	_Label_2644
	.word	-940
	.word	4
	.word	_Label_2645
	.word	-944
	.word	4
	.word	0
_Label_2595:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2596:
	.ascii	"Pself\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2645:
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	2235,r13		! source line 2235
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0SE",r10
!   _temp_2646 = &fileManagerLock
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
!   _temp_2647 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2647  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2238,r13		! source line 2238
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2652 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2653 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2652  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2648:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2653 then goto _Label_2651		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2651
_Label_2649:
	mov	2239,r13		! source line 2239
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2654 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2654  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2240,r13		! source line 2240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2241,r13		! source line 2241
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2655 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2655  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2242,r13		! source line 2242
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   _temp_2656 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2656 [i ] into _temp_2657
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
_Label_2650:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2648
! END FOR
_Label_2651:
! CALL STATEMENT...
!   _temp_2658 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2658  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2245,r13		! source line 2245
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2659 = _function_199_printFCB
	set	_function_199_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2660 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2659  sizeInBytes=4
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
	mov	2247,r13		! source line 2247
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2661 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2248,r13		! source line 2248
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2666 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2667 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2666  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2662:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2667 then goto _Label_2665		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2665
_Label_2663:
	mov	2249,r13		! source line 2249
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2668 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2668  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2250,r13		! source line 2250
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2251,r13		! source line 2251
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2669 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2669  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2252,r13		! source line 2252
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2671 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2671 [i ] into _temp_2672
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
!   _temp_2670 = _temp_2672		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2670  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2673 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2673  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_2674 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2674 [i ] into _temp_2675
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
_Label_2664:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2662
! END FOR
_Label_2665:
! CALL STATEMENT...
!   _temp_2676 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2257,r13		! source line 2257
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_2677 = _function_198_printOpen
	set	_function_198_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2678 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2677  sizeInBytes=4
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
	mov	2259,r13		! source line 2259
	mov	"\0\0SE",r10
!   _temp_2679 = &fileManagerLock
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
	mov	2259,r13		! source line 2259
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
	.word	_Label_2680
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2682
	.word	-12
	.word	4
	.word	_Label_2683
	.word	-16
	.word	4
	.word	_Label_2684
	.word	-20
	.word	4
	.word	_Label_2685
	.word	-24
	.word	4
	.word	_Label_2686
	.word	-28
	.word	4
	.word	_Label_2687
	.word	-32
	.word	4
	.word	_Label_2688
	.word	-36
	.word	4
	.word	_Label_2689
	.word	-40
	.word	4
	.word	_Label_2690
	.word	-44
	.word	4
	.word	_Label_2691
	.word	-48
	.word	4
	.word	_Label_2692
	.word	-52
	.word	4
	.word	_Label_2693
	.word	-56
	.word	4
	.word	_Label_2694
	.word	-60
	.word	4
	.word	_Label_2695
	.word	-64
	.word	4
	.word	_Label_2696
	.word	-68
	.word	4
	.word	_Label_2697
	.word	-72
	.word	4
	.word	_Label_2698
	.word	-76
	.word	4
	.word	_Label_2699
	.word	-80
	.word	4
	.word	_Label_2700
	.word	-84
	.word	4
	.word	_Label_2701
	.word	-88
	.word	4
	.word	_Label_2702
	.word	-92
	.word	4
	.word	_Label_2703
	.word	-96
	.word	4
	.word	_Label_2704
	.word	-100
	.word	4
	.word	_Label_2705
	.word	-104
	.word	4
	.word	_Label_2706
	.word	-108
	.word	4
	.word	_Label_2707
	.word	-112
	.word	4
	.word	_Label_2708
	.word	-116
	.word	4
	.word	0
_Label_2680:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2681:
	.ascii	"Pself\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2708:
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	2264,r13		! source line 2264
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2709 = &_P_Kernel_fileManager
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
	mov	2281,r13		! source line 2281
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2710
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2710
	jmp	_Label_2711
_Label_2710:
! THEN...
	mov	2282,r13		! source line 2282
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2711:
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_2712 = &fileManagerLock
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
	mov	2287,r13		! source line 2287
	mov	"\0\0WH",r10
_Label_2713:
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2716 = &openFileFreeList
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
!   if result==true then goto _Label_2714 else goto _Label_2715
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2715
	jmp	_Label_2714
_Label_2714:
	mov	2287,r13		! source line 2287
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2288,r13		! source line 2288
	mov	"\0\0SE",r10
!   _temp_2717 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2718 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2717  sizeInBytes=4
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
	jmp	_Label_2713
_Label_2715:
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_2719 = &openFileFreeList
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
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2720 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2721 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2721 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2722 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_2723 = &fileManagerLock
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
	mov	2300,r13		! source line 2300
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
	.word	_Label_2724
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2726
	.word	12
	.word	4
	.word	_Label_2727
	.word	-12
	.word	4
	.word	_Label_2728
	.word	-16
	.word	4
	.word	_Label_2729
	.word	-20
	.word	4
	.word	_Label_2730
	.word	-24
	.word	4
	.word	_Label_2731
	.word	-28
	.word	4
	.word	_Label_2732
	.word	-32
	.word	4
	.word	_Label_2733
	.word	-36
	.word	4
	.word	_Label_2734
	.word	-40
	.word	4
	.word	_Label_2735
	.word	-44
	.word	4
	.word	_Label_2736
	.word	-48
	.word	4
	.word	_Label_2737
	.word	-52
	.word	4
	.word	_Label_2738
	.word	-56
	.word	4
	.word	0
_Label_2724:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2725:
	.ascii	"Pself\0"
	.align
_Label_2726:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2737:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2738:
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	2305,r13		! source line 2305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
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
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2740		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2740
!	jmp	_Label_2739
_Label_2739:
! THEN...
	mov	2336,r13		! source line 2336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2741 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2741  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2336,r13		! source line 2336
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2740:
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
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
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
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
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0WH",r10
_Label_2742:
!   if numFiles <= 0 then goto _Label_2744		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2744
!	jmp	_Label_2743
_Label_2743:
	mov	2346,r13		! source line 2346
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2745 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2745  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2347,r13		! source line 2347
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2746 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2746  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2349,r13		! source line 2349
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2747 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2747  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2351,r13		! source line 2351
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2751 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2751 then goto _Label_2749		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2749
!	jmp	_Label_2750
_Label_2750:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2753
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
!   _temp_2752 = _temp_2753		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2752  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2354,r13		! source line 2354
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2748 else goto _Label_2749
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2749
	jmp	_Label_2748
_Label_2748:
! THEN...
	mov	2355,r13		! source line 2355
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0BR",r10
	jmp	_Label_2744
! END IF...
_Label_2749:
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2742
_Label_2744:
! IF STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2755		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2755
!	jmp	_Label_2754
_Label_2754:
! THEN...
	mov	2363,r13		! source line 2363
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2755:
! SEND STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_2756 = &fileManagerLock
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
	mov	2368,r13		! source line 2368
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2761 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2762 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2761  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2757:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2762 then goto _Label_2760		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2760
_Label_2758:
	mov	2368,r13		! source line 2368
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   _temp_2763 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2763 [i ] into _temp_2764
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
!   fcb = _temp_2764		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2767 != start then goto _Label_2766		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2766
!	jmp	_Label_2765
_Label_2765:
! THEN...
	mov	2371,r13		! source line 2371
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2770 = _temp_2771 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2769 = _temp_2770  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0SE",r10
!   _temp_2773 = &fileManagerLock
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
	mov	2373,r13		! source line 2373
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2766:
!   Increment the FOR-LOOP index variable and jump back
_Label_2759:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2757
! END FOR
_Label_2760:
! WHILE STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0WH",r10
_Label_2774:
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_2777 = &fcbFreeList
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
!   if result==true then goto _Label_2775 else goto _Label_2776
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2776
	jmp	_Label_2775
_Label_2775:
	mov	2378,r13		! source line 2378
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0SE",r10
!   _temp_2778 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2779 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2778  sizeInBytes=4
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
	jmp	_Label_2774
_Label_2776:
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2780 = &fcbFreeList
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
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2781 = &fileManagerLock
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
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2782 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2782 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2783 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2783 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2784 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2784 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2789 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2788 = *_temp_2789  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2788 < 0 then goto _Label_2787		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2787
	jmp	_Label_2785
_Label_2787:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2790 ) then goto _Label_2786		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2786
!	jmp	_Label_2785
_Label_2785:
! THEN...
	mov	2391,r13		! source line 2391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2791 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2791  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2391,r13		! source line 2391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2786:
! RETURN STATEMENT...
	mov	2393,r13		! source line 2393
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
	.word	_Label_2792
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2794
	.word	12
	.word	4
	.word	_Label_2795
	.word	-12
	.word	4
	.word	_Label_2796
	.word	-16
	.word	4
	.word	_Label_2797
	.word	-20
	.word	4
	.word	_Label_2798
	.word	-24
	.word	4
	.word	_Label_2799
	.word	-28
	.word	4
	.word	_Label_2800
	.word	-32
	.word	4
	.word	_Label_2801
	.word	-36
	.word	4
	.word	_Label_2802
	.word	-40
	.word	4
	.word	_Label_2803
	.word	-44
	.word	4
	.word	_Label_2804
	.word	-48
	.word	4
	.word	_Label_2805
	.word	-52
	.word	4
	.word	_Label_2806
	.word	-56
	.word	4
	.word	_Label_2807
	.word	-60
	.word	4
	.word	_Label_2808
	.word	-64
	.word	4
	.word	_Label_2809
	.word	-68
	.word	4
	.word	_Label_2810
	.word	-72
	.word	4
	.word	_Label_2811
	.word	-76
	.word	4
	.word	_Label_2812
	.word	-80
	.word	4
	.word	_Label_2813
	.word	-84
	.word	4
	.word	_Label_2814
	.word	-88
	.word	4
	.word	_Label_2815
	.word	-92
	.word	4
	.word	_Label_2816
	.word	-96
	.word	4
	.word	_Label_2817
	.word	-100
	.word	4
	.word	_Label_2818
	.word	-104
	.word	4
	.word	_Label_2819
	.word	-108
	.word	4
	.word	_Label_2820
	.word	-112
	.word	4
	.word	_Label_2821
	.word	-116
	.word	4
	.word	_Label_2822
	.word	-120
	.word	4
	.word	_Label_2823
	.word	-124
	.word	4
	.word	_Label_2824
	.word	-128
	.word	4
	.word	_Label_2825
	.word	-132
	.word	4
	.word	_Label_2826
	.word	-136
	.word	4
	.word	_Label_2827
	.word	-140
	.word	4
	.word	_Label_2828
	.word	-144
	.word	4
	.word	_Label_2829
	.word	-148
	.word	4
	.word	_Label_2830
	.word	-152
	.word	4
	.word	_Label_2831
	.word	-156
	.word	4
	.word	_Label_2832
	.word	-160
	.word	4
	.word	0
_Label_2792:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2793:
	.ascii	"Pself\0"
	.align
_Label_2794:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2826:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2827:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2828:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2830:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2831:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2832:
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
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	2406,r13		! source line 2406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0IF",r10
!   _temp_2835 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2835 then goto _Label_2834		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2834
!	jmp	_Label_2833
_Label_2833:
! THEN...
	mov	2409,r13		! source line 2409
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2834:
! SEND STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0SE",r10
!   _temp_2836 = &fileManagerLock
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
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2837 = &_P_Kernel_fileManager
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
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2838 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2838  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2839 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2842 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2841 = *_temp_2842  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2840 = _temp_2841 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2839 = _temp_2840  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2846 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2845 = *_temp_2846  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2845 > 0 then goto _Label_2844		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2844
!	jmp	_Label_2843
_Label_2843:
! THEN...
	mov	2416,r13		! source line 2416
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_2847 = &openFileFreeList
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
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_2848 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2849 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2848  sizeInBytes=4
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
	mov	2418,r13		! source line 2418
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2850 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2853 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2852 = *_temp_2853  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2851 = _temp_2852 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2850 = _temp_2851  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2857 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2856 = *_temp_2857  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2856 > 0 then goto _Label_2855		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2855
!	jmp	_Label_2854
_Label_2854:
! THEN...
	mov	2420,r13		! source line 2420
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2858 = &fcbFreeList
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
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2859 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2860 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2859  sizeInBytes=4
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
_Label_2855:
! END IF...
_Label_2844:
! SEND STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2861 = &fileManagerLock
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
	mov	2424,r13		! source line 2424
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
	.word	_Label_2862
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2864
	.word	12
	.word	4
	.word	_Label_2865
	.word	-12
	.word	4
	.word	_Label_2866
	.word	-16
	.word	4
	.word	_Label_2867
	.word	-20
	.word	4
	.word	_Label_2868
	.word	-24
	.word	4
	.word	_Label_2869
	.word	-28
	.word	4
	.word	_Label_2870
	.word	-32
	.word	4
	.word	_Label_2871
	.word	-36
	.word	4
	.word	_Label_2872
	.word	-40
	.word	4
	.word	_Label_2873
	.word	-44
	.word	4
	.word	_Label_2874
	.word	-48
	.word	4
	.word	_Label_2875
	.word	-52
	.word	4
	.word	_Label_2876
	.word	-56
	.word	4
	.word	_Label_2877
	.word	-60
	.word	4
	.word	_Label_2878
	.word	-64
	.word	4
	.word	_Label_2879
	.word	-68
	.word	4
	.word	_Label_2880
	.word	-72
	.word	4
	.word	_Label_2881
	.word	-76
	.word	4
	.word	_Label_2882
	.word	-80
	.word	4
	.word	_Label_2883
	.word	-84
	.word	4
	.word	_Label_2884
	.word	-88
	.word	4
	.word	_Label_2885
	.word	-92
	.word	4
	.word	_Label_2886
	.word	-96
	.word	4
	.word	_Label_2887
	.word	-100
	.word	4
	.word	_Label_2888
	.word	-104
	.word	4
	.word	0
_Label_2862:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2863:
	.ascii	"Pself\0"
	.align
_Label_2864:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2888:
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
_Label_3467:
	push	r0
	sub	r1,1,r1
	bne	_Label_3467
	mov	2429,r13		! source line 2429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2892 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2891 = *_temp_2892  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2891) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2893 = _temp_2891 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2893 ) then goto _Label_2890		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2890
!	jmp	_Label_2889
_Label_2889:
! THEN...
	mov	2435,r13		! source line 2435
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2898 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2897 = *_temp_2898  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = _temp_2897 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2896 = *_temp_2899  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2896 >= 0 then goto _Label_2895		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2895
!	jmp	_Label_2894
_Label_2894:
! THEN...
	mov	2436,r13		! source line 2436
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2436,r13		! source line 2436
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2895:
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2902 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2901 = *_temp_2902  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2901) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2903 = _temp_2901 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2903 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2907 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2906 = *_temp_2907  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2906) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = _temp_2906 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2905 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2910 = *_temp_2911  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2910) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2912 = _temp_2910 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2909 = *_temp_2912  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2904 = _temp_2905 + _temp_2909		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2915 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2914 = *_temp_2915  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2914) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2916 = _temp_2914 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2913 = *_temp_2916  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2917 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2904  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2913  sizeInBytes=4
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
_Label_2890:
! RETURN STATEMENT...
	mov	2434,r13		! source line 2434
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
	.word	_Label_2918
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2919
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2920
	.word	12
	.word	4
	.word	_Label_2921
	.word	-12
	.word	4
	.word	_Label_2922
	.word	-16
	.word	4
	.word	_Label_2923
	.word	-20
	.word	4
	.word	_Label_2924
	.word	-24
	.word	4
	.word	_Label_2925
	.word	-28
	.word	4
	.word	_Label_2926
	.word	-32
	.word	4
	.word	_Label_2927
	.word	-36
	.word	4
	.word	_Label_2928
	.word	-40
	.word	4
	.word	_Label_2929
	.word	-44
	.word	4
	.word	_Label_2930
	.word	-48
	.word	4
	.word	_Label_2931
	.word	-52
	.word	4
	.word	_Label_2932
	.word	-56
	.word	4
	.word	_Label_2933
	.word	-60
	.word	4
	.word	_Label_2934
	.word	-64
	.word	4
	.word	_Label_2935
	.word	-68
	.word	4
	.word	_Label_2936
	.word	-72
	.word	4
	.word	_Label_2937
	.word	-76
	.word	4
	.word	_Label_2938
	.word	-80
	.word	4
	.word	_Label_2939
	.word	-84
	.word	4
	.word	_Label_2940
	.word	-88
	.word	4
	.word	_Label_2941
	.word	-92
	.word	4
	.word	_Label_2942
	.word	-96
	.word	4
	.word	_Label_2943
	.word	-100
	.word	4
	.word	_Label_2944
	.word	-104
	.word	4
	.word	_Label_2945
	.word	-108
	.word	4
	.word	0
_Label_2918:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2919:
	.ascii	"Pself\0"
	.align
_Label_2920:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2891\0"
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	2448,r13		! source line 2448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_2946 = &fileManagerLock
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
	mov	2464,r13		! source line 2464
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2952		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2952
!   _temp_2951 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2953
_Label_2952:
!   _temp_2951 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2953:
!   if _temp_2951 then goto _Label_2950 else goto _Label_2947
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2947
	jmp	_Label_2950
_Label_2950:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2956 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2955 = *_temp_2956  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2955 == 0 then goto _Label_2957		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2957
!   _temp_2954 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2958
_Label_2957:
!   _temp_2954 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2958:
!   if _temp_2954 then goto _Label_2949 else goto _Label_2947
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2947
	jmp	_Label_2949
_Label_2949:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2961 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2960 = *_temp_2961  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2960) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2962 = _temp_2960 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2959 = *_temp_2962  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2959 >= 0 then goto _Label_2948		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2948
!	jmp	_Label_2947
_Label_2947:
! THEN...
	mov	2465,r13		! source line 2465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2963 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2963  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2465,r13		! source line 2465
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2948:
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2964 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2964  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0WH",r10
_Label_2965:
!   if numBytes <= 0 then goto _Label_2967		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2967
!	jmp	_Label_2966
_Label_2966:
	mov	2468,r13		! source line 2468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2477,r13		! source line 2477
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
	mov	2478,r13		! source line 2478
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
	mov	2482,r13		! source line 2482
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2971 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2970 = *_temp_2971  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2970 == sector then goto _Label_2969		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2969
!	jmp	_Label_2968
_Label_2968:
! THEN...
	mov	2483,r13		! source line 2483
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2972) then goto _runtimeErrorNullPointer
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
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2975 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2974 = *_temp_2975  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2973 = sector + _temp_2974		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2977 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2976 = *_temp_2977  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2978 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2973  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2976  sizeInBytes=4
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
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2979 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2979 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2980 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2980 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2969:
! ASSIGNMENT STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2982 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2981 = *_temp_2982  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2981 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   _temp_2983 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2983  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2492,r13		! source line 2492
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
	mov	2496,r13		! source line 2496
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2965
_Label_2967:
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   _temp_2984 = &fileManagerLock
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
	mov	2507,r13		! source line 2507
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
	.word	_Label_2985
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2987
	.word	12
	.word	4
	.word	_Label_2988
	.word	16
	.word	4
	.word	_Label_2989
	.word	20
	.word	4
	.word	_Label_2990
	.word	24
	.word	4
	.word	_Label_2991
	.word	-16
	.word	4
	.word	_Label_2992
	.word	-20
	.word	4
	.word	_Label_2993
	.word	-24
	.word	4
	.word	_Label_2994
	.word	-28
	.word	4
	.word	_Label_2995
	.word	-32
	.word	4
	.word	_Label_2996
	.word	-36
	.word	4
	.word	_Label_2997
	.word	-40
	.word	4
	.word	_Label_2998
	.word	-44
	.word	4
	.word	_Label_2999
	.word	-48
	.word	4
	.word	_Label_3000
	.word	-52
	.word	4
	.word	_Label_3001
	.word	-56
	.word	4
	.word	_Label_3002
	.word	-60
	.word	4
	.word	_Label_3003
	.word	-64
	.word	4
	.word	_Label_3004
	.word	-68
	.word	4
	.word	_Label_3005
	.word	-72
	.word	4
	.word	_Label_3006
	.word	-76
	.word	4
	.word	_Label_3007
	.word	-80
	.word	4
	.word	_Label_3008
	.word	-84
	.word	4
	.word	_Label_3009
	.word	-88
	.word	4
	.word	_Label_3010
	.word	-92
	.word	4
	.word	_Label_3011
	.word	-96
	.word	4
	.word	_Label_3012
	.word	-100
	.word	4
	.word	_Label_3013
	.word	-104
	.word	4
	.word	_Label_3014
	.word	-9
	.word	1
	.word	_Label_3015
	.word	-10
	.word	1
	.word	_Label_3016
	.word	-108
	.word	4
	.word	_Label_3017
	.word	-112
	.word	4
	.word	_Label_3018
	.word	-116
	.word	4
	.word	_Label_3019
	.word	-120
	.word	4
	.word	_Label_3020
	.word	-124
	.word	4
	.word	_Label_3021
	.word	-128
	.word	4
	.word	0
_Label_2985:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2986:
	.ascii	"Pself\0"
	.align
_Label_2987:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2988:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2989:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2990:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_3014:
	.byte	'C'
	.ascii	"_temp_2954\0"
	.align
_Label_3015:
	.byte	'C'
	.ascii	"_temp_2951\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3017:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3018:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3019:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3020:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3021:
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	2512,r13		! source line 2512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_3022 = &fileManagerLock
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
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3028		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3028
!   _temp_3027 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3029
_Label_3028:
!   _temp_3027 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3029:
!   if _temp_3027 then goto _Label_3026 else goto _Label_3023
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3023
	jmp	_Label_3026
_Label_3026:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3032 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3031 = *_temp_3032  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3031 == 0 then goto _Label_3033		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3033
!   _temp_3030 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3034
_Label_3033:
!   _temp_3030 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3034:
!   if _temp_3030 then goto _Label_3025 else goto _Label_3023
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3023
	jmp	_Label_3025
_Label_3025:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3037 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3036 = *_temp_3037  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3036) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3038 = _temp_3036 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3035 = *_temp_3038  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3035 >= 0 then goto _Label_3024		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3024
!	jmp	_Label_3023
_Label_3023:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3039 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3039  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2530,r13		! source line 2530
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3024:
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3040 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3040  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0WH",r10
_Label_3041:
!   if numBytes <= 0 then goto _Label_3043		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3043
!	jmp	_Label_3042
_Label_3042:
	mov	2533,r13		! source line 2533
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
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
	mov	2543,r13		! source line 2543
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
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3047 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3046 = *_temp_3047  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3046 == sector then goto _Label_3045		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3045
!	jmp	_Label_3044
_Label_3044:
! THEN...
	mov	2549,r13		! source line 2549
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3048) then goto _runtimeErrorNullPointer
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
_Label_3045:
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3050 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3049 = *_temp_3050  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3049 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   _temp_3051 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3051  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3055 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3054 = *_temp_3055  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3054 != sector then goto _Label_3053		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3053
!	jmp	_Label_3052
_Label_3052:
	jmp	_Label_3056
_Label_3053:
! ELSE...
	mov	2555,r13		! source line 2555
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3059
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3059
	jmp	_Label_3058
_Label_3059:
!   if bytesToMove != 8192 then goto _Label_3058		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3058
!	jmp	_Label_3057
_Label_3057:
	jmp	_Label_3060
_Label_3058:
! ELSE...
	mov	2559,r13		! source line 2559
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3063 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3062 = *_temp_3063  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3061 = sector + _temp_3062		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3065 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3064 = *_temp_3065  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3066 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3061  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3064  sizeInBytes=4
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
_Label_3060:
! END IF...
_Label_3056:
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3067 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3067 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3068 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3068 = 1  (sizeInBytes=1)
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
	mov	2568,r13		! source line 2568
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3041
_Label_3043:
! SEND STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_3069 = &fileManagerLock
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
	mov	2580,r13		! source line 2580
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
	.word	_Label_3070
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3071
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3072
	.word	12
	.word	4
	.word	_Label_3073
	.word	16
	.word	4
	.word	_Label_3074
	.word	20
	.word	4
	.word	_Label_3075
	.word	24
	.word	4
	.word	_Label_3076
	.word	-16
	.word	4
	.word	_Label_3077
	.word	-20
	.word	4
	.word	_Label_3078
	.word	-24
	.word	4
	.word	_Label_3079
	.word	-28
	.word	4
	.word	_Label_3080
	.word	-32
	.word	4
	.word	_Label_3081
	.word	-36
	.word	4
	.word	_Label_3082
	.word	-40
	.word	4
	.word	_Label_3083
	.word	-44
	.word	4
	.word	_Label_3084
	.word	-48
	.word	4
	.word	_Label_3085
	.word	-52
	.word	4
	.word	_Label_3086
	.word	-56
	.word	4
	.word	_Label_3087
	.word	-60
	.word	4
	.word	_Label_3088
	.word	-64
	.word	4
	.word	_Label_3089
	.word	-68
	.word	4
	.word	_Label_3090
	.word	-72
	.word	4
	.word	_Label_3091
	.word	-76
	.word	4
	.word	_Label_3092
	.word	-80
	.word	4
	.word	_Label_3093
	.word	-84
	.word	4
	.word	_Label_3094
	.word	-88
	.word	4
	.word	_Label_3095
	.word	-92
	.word	4
	.word	_Label_3096
	.word	-96
	.word	4
	.word	_Label_3097
	.word	-100
	.word	4
	.word	_Label_3098
	.word	-104
	.word	4
	.word	_Label_3099
	.word	-108
	.word	4
	.word	_Label_3100
	.word	-112
	.word	4
	.word	_Label_3101
	.word	-9
	.word	1
	.word	_Label_3102
	.word	-10
	.word	1
	.word	_Label_3103
	.word	-116
	.word	4
	.word	_Label_3104
	.word	-120
	.word	4
	.word	_Label_3105
	.word	-124
	.word	4
	.word	_Label_3106
	.word	-128
	.word	4
	.word	_Label_3107
	.word	-132
	.word	4
	.word	_Label_3108
	.word	-136
	.word	4
	.word	0
_Label_3070:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3071:
	.ascii	"Pself\0"
	.align
_Label_3072:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3073:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3074:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3075:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3101:
	.byte	'C'
	.ascii	"_temp_3030\0"
	.align
_Label_3102:
	.byte	'C'
	.ascii	"_temp_3027\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3104:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3105:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3106:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3107:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3108:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3109
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3109:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3110
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3110:
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	2616,r13		! source line 2616
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_3111 = &_P_Kernel_frameManager
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
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2621,r13		! source line 2621
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
	.word	_Label_3112
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3114
	.word	-12
	.word	4
	.word	0
_Label_3112:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3113:
	.ascii	"Pself\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3111\0"
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	2626,r13		! source line 2626
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3115 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3115  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2628,r13		! source line 2628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3116 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3116  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2629,r13		! source line 2629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2630,r13		! source line 2630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3117 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3117  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3118 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3118  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3119 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3119  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3120 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3120  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2639,r13		! source line 2639
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
	.word	_Label_3121
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3123
	.word	-12
	.word	4
	.word	_Label_3124
	.word	-16
	.word	4
	.word	_Label_3125
	.word	-20
	.word	4
	.word	_Label_3126
	.word	-24
	.word	4
	.word	_Label_3127
	.word	-28
	.word	4
	.word	_Label_3128
	.word	-32
	.word	4
	.word	0
_Label_3121:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3122:
	.ascii	"Pself\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3129
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3129:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3130
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3130:
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	2650,r13		! source line 2650
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3131 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3131  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3132 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3132  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3134		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3134
!	jmp	_Label_3133
_Label_3133:
! THEN...
	mov	2655,r13		! source line 2655
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2655,r13		! source line 2655
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
	jmp	_Label_3135
_Label_3134:
! ELSE...
	mov	2657,r13		! source line 2657
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3136 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3136  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2657,r13		! source line 2657
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3135:
! RETURN STATEMENT...
	mov	2654,r13		! source line 2654
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
	.word	_Label_3137
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3138
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3139
	.word	-12
	.word	4
	.word	_Label_3140
	.word	-16
	.word	4
	.word	_Label_3141
	.word	-20
	.word	4
	.word	0
_Label_3137:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3138:
	.ascii	"Pself\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3131\0"
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	2663,r13		! source line 2663
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_3142 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3143 = _temp_3142 + 4
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
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
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
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_3144 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3145 = _temp_3144 + 4
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
	mov	2677,r13		! source line 2677
	mov	"\0\0RE",r10
	mov	2677,r13		! source line 2677
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3148 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3147  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3146  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3146  (sizeInBytes=1)
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
	.word	_Label_3149
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3150
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3151
	.word	12
	.word	4
	.word	_Label_3152
	.word	16
	.word	4
	.word	_Label_3153
	.word	-16
	.word	4
	.word	_Label_3154
	.word	-20
	.word	4
	.word	_Label_3155
	.word	-9
	.word	1
	.word	_Label_3156
	.word	-24
	.word	4
	.word	_Label_3157
	.word	-28
	.word	4
	.word	_Label_3158
	.word	-32
	.word	4
	.word	_Label_3159
	.word	-36
	.word	4
	.word	_Label_3160
	.word	-40
	.word	4
	.word	0
_Label_3149:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3150:
	.ascii	"Pself\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3152:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3155:
	.byte	'C'
	.ascii	"_temp_3146\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3160:
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	2682,r13		! source line 2682
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0IF",r10
	mov	2687,r13		! source line 2687
	mov	"\0\0SE",r10
!   _temp_3164 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3165) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3164  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3163  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3163 then goto _Label_3162 else goto _Label_3161
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3161
	jmp	_Label_3162
_Label_3161:
! THEN...
	mov	2688,r13		! source line 2688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3166 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3166  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2688,r13		! source line 2688
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3162:
! RETURN STATEMENT...
	mov	2690,r13		! source line 2690
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
	.word	_Label_3167
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3169
	.word	-16
	.word	4
	.word	_Label_3170
	.word	-20
	.word	4
	.word	_Label_3171
	.word	-24
	.word	4
	.word	_Label_3172
	.word	-9
	.word	1
	.word	_Label_3173
	.word	-28
	.word	4
	.word	0
_Label_3167:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3168:
	.ascii	"Pself\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3172:
	.byte	'C'
	.ascii	"_temp_3163\0"
	.align
_Label_3173:
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	2695,r13		! source line 2695
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3177 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3176 = *_temp_3177  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3176) then goto _Label_3175
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3175
!	jmp	_Label_3174
_Label_3174:
! THEN...
	mov	2722,r13		! source line 2722
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3178 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3178  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2722,r13		! source line 2722
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3175:
! IF STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3182) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3181  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3181 == 1112300152 then goto _Label_3180		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3180
!	jmp	_Label_3179
_Label_3179:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3183 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3183  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2727,r13		! source line 2727
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3180:
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3184) then goto _runtimeErrorNullPointer
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
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
	mov	2733,r13		! source line 2733
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3185) then goto _runtimeErrorNullPointer
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
	mov	2734,r13		! source line 2734
	mov	"\0\0AS",r10
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3186) then goto _runtimeErrorNullPointer
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
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
	mov	2735,r13		! source line 2735
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3187) then goto _runtimeErrorNullPointer
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
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3188) then goto _runtimeErrorNullPointer
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
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3189) then goto _runtimeErrorNullPointer
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
	mov	2740,r13		! source line 2740
	mov	"\0\0IF",r10
!   _temp_3192 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3192) then goto _Label_3191
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3191
!	jmp	_Label_3190
_Label_3190:
! THEN...
	mov	2741,r13		! source line 2741
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3193 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3193  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2741,r13		! source line 2741
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3191:
! ASSIGNMENT STATEMENT...
	mov	2744,r13		! source line 2744
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
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3195
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3195
!	jmp	_Label_3194
_Label_3194:
! THEN...
	mov	2749,r13		! source line 2749
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3196 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3196  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
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
_Label_3195:
! IF STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0IF",r10
!   _temp_3199 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3199) then goto _Label_3198
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3198
!	jmp	_Label_3197
_Label_3197:
! THEN...
	mov	2755,r13		! source line 2755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3200 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3200  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2755,r13		! source line 2755
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3198:
! IF STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0IF",r10
!   _temp_3203 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3203 then goto _Label_3202		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3202
!	jmp	_Label_3201
_Label_3201:
! THEN...
	mov	2759,r13		! source line 2759
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3204 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3204  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2759,r13		! source line 2759
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3202:
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
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
	mov	2765,r13		! source line 2765
	mov	"\0\0IF",r10
!   _temp_3207 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3207) then goto _Label_3206
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3206
!	jmp	_Label_3205
_Label_3205:
! THEN...
	mov	2766,r13		! source line 2766
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3208 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3208  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3206:
! IF STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0IF",r10
!   _temp_3211 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3211 then goto _Label_3210		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3210
!	jmp	_Label_3209
_Label_3209:
! THEN...
	mov	2770,r13		! source line 2770
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3212 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3212  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2770,r13		! source line 2770
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3210:
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
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
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   _temp_3215 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3214 = _temp_3215 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3213 = _temp_3214 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3213 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3217		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3217
!	jmp	_Label_3216
_Label_3216:
! THEN...
	mov	2792,r13		! source line 2792
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3218 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3218  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3219 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3219  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3220 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3220  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3217:
! SEND STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0SE",r10
!   _temp_3221 = &_P_Kernel_frameManager
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
	mov	2803,r13		! source line 2803
	mov	"\0\0IF",r10
	mov	2803,r13		! source line 2803
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3225) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3224  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3224 == 707406378 then goto _Label_3223		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3223
!	jmp	_Label_3222
_Label_3222:
! THEN...
	mov	2804,r13		! source line 2804
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3226 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3226  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2804,r13		! source line 2804
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0SE",r10
!   _temp_3227 = &_P_Kernel_frameManager
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
	mov	2806,r13		! source line 2806
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3223:
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
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
	mov	2811,r13		! source line 2811
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3232 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3233 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3232  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3228:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3233 then goto _Label_3231		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3231
_Label_3229:
	mov	2811,r13		! source line 2811
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
	mov	2812,r13		! source line 2812
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
	mov	2815,r13		! source line 2815
	mov	"\0\0IF",r10
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3237) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3236  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3236 then goto _Label_3235 else goto _Label_3234
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3234
	jmp	_Label_3235
_Label_3234:
! THEN...
	mov	2816,r13		! source line 2816
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3238 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3238  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0SE",r10
!   _temp_3239 = &_P_Kernel_frameManager
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
	mov	2818,r13		! source line 2818
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3235:
! SEND STATEMENT...
	mov	2820,r13		! source line 2820
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
	mov	2821,r13		! source line 2821
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3230:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3228
! END FOR
_Label_3231:
! IF STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0IF",r10
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3243) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3242  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3242 == 707406378 then goto _Label_3241		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3241
!	jmp	_Label_3240
_Label_3240:
! THEN...
	mov	2826,r13		! source line 2826
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3244 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3244  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0SE",r10
!   _temp_3245 = &_P_Kernel_frameManager
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
	mov	2828,r13		! source line 2828
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3241:
! FOR STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3250 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3251 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3250  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3246:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3251 then goto _Label_3249		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3249
_Label_3247:
	mov	2832,r13		! source line 2832
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
	mov	2833,r13		! source line 2833
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
	mov	2836,r13		! source line 2836
	mov	"\0\0IF",r10
	mov	2836,r13		! source line 2836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3255) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3254  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3254 then goto _Label_3253 else goto _Label_3252
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3252
	jmp	_Label_3253
_Label_3252:
! THEN...
	mov	2837,r13		! source line 2837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3256 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3256  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   _temp_3257 = &_P_Kernel_frameManager
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
	mov	2839,r13		! source line 2839
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3253:
! ASSIGNMENT STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3248:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3246
! END FOR
_Label_3249:
! IF STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0IF",r10
	mov	2845,r13		! source line 2845
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3261) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3260  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3260 == 707406378 then goto _Label_3259		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3259
!	jmp	_Label_3258
_Label_3258:
! THEN...
	mov	2846,r13		! source line 2846
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3262 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3262  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0SE",r10
!   _temp_3263 = &_P_Kernel_frameManager
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
	mov	2848,r13		! source line 2848
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3259:
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
	mov	2852,r13		! source line 2852
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
	mov	2856,r13		! source line 2856
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2859,r13		! source line 2859
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
	.word	_Label_3264
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3265
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3266
	.word	12
	.word	4
	.word	_Label_3267
	.word	-16
	.word	4
	.word	_Label_3268
	.word	-20
	.word	4
	.word	_Label_3269
	.word	-24
	.word	4
	.word	_Label_3270
	.word	-28
	.word	4
	.word	_Label_3271
	.word	-32
	.word	4
	.word	_Label_3272
	.word	-36
	.word	4
	.word	_Label_3273
	.word	-40
	.word	4
	.word	_Label_3274
	.word	-9
	.word	1
	.word	_Label_3275
	.word	-44
	.word	4
	.word	_Label_3276
	.word	-48
	.word	4
	.word	_Label_3277
	.word	-52
	.word	4
	.word	_Label_3278
	.word	-56
	.word	4
	.word	_Label_3279
	.word	-60
	.word	4
	.word	_Label_3280
	.word	-64
	.word	4
	.word	_Label_3281
	.word	-68
	.word	4
	.word	_Label_3282
	.word	-72
	.word	4
	.word	_Label_3283
	.word	-76
	.word	4
	.word	_Label_3284
	.word	-10
	.word	1
	.word	_Label_3285
	.word	-80
	.word	4
	.word	_Label_3286
	.word	-84
	.word	4
	.word	_Label_3287
	.word	-88
	.word	4
	.word	_Label_3288
	.word	-92
	.word	4
	.word	_Label_3289
	.word	-96
	.word	4
	.word	_Label_3290
	.word	-100
	.word	4
	.word	_Label_3291
	.word	-104
	.word	4
	.word	_Label_3292
	.word	-108
	.word	4
	.word	_Label_3293
	.word	-112
	.word	4
	.word	_Label_3294
	.word	-116
	.word	4
	.word	_Label_3295
	.word	-120
	.word	4
	.word	_Label_3296
	.word	-124
	.word	4
	.word	_Label_3297
	.word	-128
	.word	4
	.word	_Label_3298
	.word	-132
	.word	4
	.word	_Label_3299
	.word	-136
	.word	4
	.word	_Label_3300
	.word	-140
	.word	4
	.word	_Label_3301
	.word	-144
	.word	4
	.word	_Label_3302
	.word	-148
	.word	4
	.word	_Label_3303
	.word	-152
	.word	4
	.word	_Label_3304
	.word	-156
	.word	4
	.word	_Label_3305
	.word	-160
	.word	4
	.word	_Label_3306
	.word	-164
	.word	4
	.word	_Label_3307
	.word	-168
	.word	4
	.word	_Label_3308
	.word	-172
	.word	4
	.word	_Label_3309
	.word	-176
	.word	4
	.word	_Label_3310
	.word	-180
	.word	4
	.word	_Label_3311
	.word	-184
	.word	4
	.word	_Label_3312
	.word	-188
	.word	4
	.word	_Label_3313
	.word	-192
	.word	4
	.word	_Label_3314
	.word	-196
	.word	4
	.word	_Label_3315
	.word	-200
	.word	4
	.word	_Label_3316
	.word	-204
	.word	4
	.word	_Label_3317
	.word	-208
	.word	4
	.word	_Label_3318
	.word	-212
	.word	4
	.word	_Label_3319
	.word	-216
	.word	4
	.word	_Label_3320
	.word	-220
	.word	4
	.word	_Label_3321
	.word	-224
	.word	4
	.word	_Label_3322
	.word	-228
	.word	4
	.word	_Label_3323
	.word	-232
	.word	4
	.word	_Label_3324
	.word	-236
	.word	4
	.word	_Label_3325
	.word	-240
	.word	4
	.word	_Label_3326
	.word	-244
	.word	4
	.word	_Label_3327
	.word	-248
	.word	4
	.word	_Label_3328
	.word	-252
	.word	4
	.word	_Label_3329
	.word	-256
	.word	4
	.word	_Label_3330
	.word	-260
	.word	4
	.word	_Label_3331
	.word	-264
	.word	4
	.word	_Label_3332
	.word	-268
	.word	4
	.word	0
_Label_3264:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3265:
	.ascii	"Pself\0"
	.align
_Label_3266:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3262\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3274:
	.byte	'C'
	.ascii	"_temp_3254\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3284:
	.byte	'C'
	.ascii	"_temp_3236\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3321:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3322:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3323:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3324:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3325:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3326:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3327:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3328:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3329:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3330:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3331:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3332:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
