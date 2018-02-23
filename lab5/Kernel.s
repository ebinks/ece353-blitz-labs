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
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_178:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_177:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_176:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_175:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_174:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_173:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_172:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_171:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_170:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_168:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_167:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_166:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_165:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_164:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_163:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_162:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_161:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_160:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_159:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_158:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_157:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_156:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_155:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_154:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_153:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_152:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_151:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_150:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_149:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_148:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_147:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_146:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_143:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_141:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_140:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_139:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_138:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_137:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_136:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_135:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_134:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_133:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_132:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_131:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_130:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_129:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_128:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_127:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_126:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_112:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_108:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_107:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_106:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_105:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_104:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_103:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_102:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_101:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_100:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_97:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_96:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_95:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_94:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_93:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_92:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_91:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_90:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_89:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_88:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_87:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_86:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_85:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_84:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_83:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_82:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_81:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_80:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_79:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_77:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_76:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_75:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_74:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_68:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_67:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_65:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_64:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_63:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_62:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_61:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_60:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_59:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_58:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_57:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_56:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_55:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_53:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_51:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_49:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_45:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_43:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_42:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_41:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_40:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_39:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_38:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
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
	.ascii	"TestProgram1"
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
	set	0xfcd3aa28,r4		! myHashVal = -53237208
	cmp	r3,r4
	be	_Label_188
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
_Label_188:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_189
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_189
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_189
_Label_189:
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
_Label_2764:
	push	r0
	sub	r1,1,r1
	bne	_Label_2764
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_190 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_190  sizeInBytes=4
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
_Label_2765:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2765
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_194 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_195 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_194  sizeInBytes=4
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
!   _temp_196 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_197 = _temp_196 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_197 = 3  (sizeInBytes=4)
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
_Label_2766:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2766
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_199 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_200 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_199  sizeInBytes=4
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
!   _temp_201 = _function_187_IdleFunction
	set	_function_187_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_202 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_201  sizeInBytes=4
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
	.word	_Label_203
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_204
	.word	-12
	.word	4
	.word	_Label_205
	.word	-16
	.word	4
	.word	_Label_206
	.word	-20
	.word	4
	.word	_Label_207
	.word	-24
	.word	4
	.word	_Label_208
	.word	-28
	.word	4
	.word	_Label_209
	.word	-32
	.word	4
	.word	_Label_210
	.word	-36
	.word	4
	.word	_Label_211
	.word	-40
	.word	4
	.word	_Label_212
	.word	-44
	.word	4
	.word	_Label_213
	.word	-48
	.word	4
	.word	_Label_214
	.word	-52
	.word	4
	.word	_Label_215
	.word	-56
	.word	4
	.word	_Label_216
	.word	-60
	.word	4
	.word	0
_Label_203:
	.ascii	"InitializeScheduler\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_187_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2767:
	push	r0
	sub	r1,1,r1
	bne	_Label_2767
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_217:
!	jmp	_Label_218
_Label_218:
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
!   _temp_222 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_220 else goto _Label_221
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_221
	jmp	_Label_220
_Label_220:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_223
_Label_221:
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
_Label_223:
! END WHILE...
	jmp	_Label_217
_Label_219:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_IdleFunction:
	.word	_sourceFileName
	.word	_Label_224
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_225
	.word	8
	.word	4
	.word	_Label_226
	.word	-12
	.word	4
	.word	_Label_227
	.word	-16
	.word	4
	.word	0
_Label_224:
	.ascii	"IdleFunction\0"
	.align
_Label_225:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_227:
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
_Label_2768:
	push	r0
	sub	r1,1,r1
	bne	_Label_2768
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
!   _temp_230 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_230 ) then goto _Label_229		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_229
!	jmp	_Label_228
_Label_228:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_232 [0 ] into _temp_233
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
!   _temp_231 = _temp_233		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_229:
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
!   _temp_234 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_234 = 3  (sizeInBytes=4)
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
_Label_235:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_239 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_238  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_238 then goto _Label_237 else goto _Label_236
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_236
	jmp	_Label_237
_Label_236:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_241 = &_P_Kernel_threadManager
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
	jmp	_Label_235
_Label_237:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_244 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_244 ) then goto _Label_243		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_243
!	jmp	_Label_242
_Label_242:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_246 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_246 [0 ] into _temp_247
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
!   _temp_245 = _temp_247		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
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
!   _temp_249 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_248 = *_temp_249  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_248) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_250 = _temp_248 + 32
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
_Label_243:
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
	.word	_Label_251
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_252
	.word	8
	.word	4
	.word	_Label_253
	.word	-16
	.word	4
	.word	_Label_254
	.word	-20
	.word	4
	.word	_Label_255
	.word	-24
	.word	4
	.word	_Label_256
	.word	-28
	.word	4
	.word	_Label_257
	.word	-32
	.word	4
	.word	_Label_258
	.word	-36
	.word	4
	.word	_Label_259
	.word	-40
	.word	4
	.word	_Label_260
	.word	-44
	.word	4
	.word	_Label_261
	.word	-48
	.word	4
	.word	_Label_262
	.word	-52
	.word	4
	.word	_Label_263
	.word	-9
	.word	1
	.word	_Label_264
	.word	-56
	.word	4
	.word	_Label_265
	.word	-60
	.word	4
	.word	_Label_266
	.word	-64
	.word	4
	.word	_Label_267
	.word	-68
	.word	4
	.word	_Label_268
	.word	-72
	.word	4
	.word	_Label_269
	.word	-76
	.word	4
	.word	_Label_270
	.word	-80
	.word	4
	.word	0
_Label_251:
	.ascii	"Run\0"
	.align
_Label_252:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_263:
	.byte	'C'
	.ascii	"_temp_238\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_269:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_270:
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
_Label_2769:
	push	r0
	sub	r1,1,r1
	bne	_Label_2769
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
!   _temp_271 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_272 = _function_185_ThreadPrintShort
	set	_function_185_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_273 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_272  sizeInBytes=4
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
	.word	_Label_274
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_275
	.word	-12
	.word	4
	.word	_Label_276
	.word	-16
	.word	4
	.word	_Label_277
	.word	-20
	.word	4
	.word	_Label_278
	.word	-24
	.word	4
	.word	0
_Label_274:
	.ascii	"PrintReadyList\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_278:
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
_Label_2770:
	push	r0
	sub	r1,1,r1
	bne	_Label_2770
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
!   _temp_279 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_279  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_280 = *_temp_281  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
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
!   _temp_282 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
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
	.word	_Label_283
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_284
	.word	-12
	.word	4
	.word	_Label_285
	.word	-16
	.word	4
	.word	_Label_286
	.word	-20
	.word	4
	.word	_Label_287
	.word	-24
	.word	4
	.word	_Label_288
	.word	-28
	.word	4
	.word	_Label_289
	.word	-32
	.word	4
	.word	0
_Label_283:
	.ascii	"ThreadStartMain\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_288:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_289:
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
_Label_2771:
	push	r0
	sub	r1,1,r1
	bne	_Label_2771
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
!   _temp_290 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_291 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
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
	.word	_Label_292
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_293
	.word	-12
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	0
_Label_292:
	.ascii	"ThreadFinish\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_295:
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
_Label_2772:
	push	r0
	sub	r1,1,r1
	bne	_Label_2772
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
!   _temp_296 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_298		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_298
!	jmp	_Label_297
_Label_297:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_299 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
!   _temp_301 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_300 = *_temp_301  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_298:
! CALL STATEMENT...
!   _temp_302 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
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
!   _temp_303 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_304 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
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
	.word	_Label_305
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_306
	.word	8
	.word	4
	.word	_Label_307
	.word	-12
	.word	4
	.word	_Label_308
	.word	-16
	.word	4
	.word	_Label_309
	.word	-20
	.word	4
	.word	_Label_310
	.word	-24
	.word	4
	.word	_Label_311
	.word	-28
	.word	4
	.word	_Label_312
	.word	-32
	.word	4
	.word	_Label_313
	.word	-36
	.word	4
	.word	_Label_314
	.word	-40
	.word	4
	.word	0
_Label_305:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_306:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_314:
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
_Label_2773:
	push	r0
	sub	r1,1,r1
	bne	_Label_2773
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
!   if newStatus != 1 then goto _Label_316		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_316
!	jmp	_Label_315
_Label_315:
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
	jmp	_Label_317
_Label_316:
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
_Label_317:
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
	.word	_Label_318
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_319
	.word	8
	.word	4
	.word	_Label_320
	.word	-12
	.word	4
	.word	0
_Label_318:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_320:
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
_Label_2774:
	push	r0
	sub	r1,1,r1
	bne	_Label_2774
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_321 = &_P_Kernel_threadManager
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
!   _temp_322 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_322  sizeInBytes=4
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
!   _temp_323 = _function_186_StartUserProcess
	set	_function_186_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_323  sizeInBytes=4
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
	.word	_Label_324
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_325
	.word	-12
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	_Label_328
	.word	-24
	.word	4
	.word	0
_Label_324:
	.ascii	"InitFirstProcess\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_328:
	.byte	'P'
	.ascii	"userProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_186_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_2775:
	push	r0
	sub	r1,1,r1
	bne	_Label_2775
	mov	213,r13		! source line 213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   _temp_329 = &_P_Kernel_processManager
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
!   _temp_330 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_330 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_331 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_331 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_332 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-56]
!   _temp_333 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_332  sizeInBytes=4
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
!   _temp_335 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_334 = _temp_335		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_334  sizeInBytes=4
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
!   _temp_336 = &_P_Kernel_fileManager
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
!   _temp_338 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_339 = _temp_338 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_337 = *_temp_339  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_337 * 8192		(int)
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
!   _temp_340 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_340 [999 ] into _temp_341
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
!   Data Move: initSystemStackTop = *_temp_341  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
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
!   _temp_342 = pcb + 32
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
!   _temp_343 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_343 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_186_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_344
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_345
	.word	8
	.word	4
	.word	_Label_346
	.word	-12
	.word	4
	.word	_Label_347
	.word	-16
	.word	4
	.word	_Label_348
	.word	-20
	.word	4
	.word	_Label_349
	.word	-24
	.word	4
	.word	_Label_350
	.word	-28
	.word	4
	.word	_Label_351
	.word	-32
	.word	4
	.word	_Label_352
	.word	-36
	.word	4
	.word	_Label_353
	.word	-40
	.word	4
	.word	_Label_354
	.word	-44
	.word	4
	.word	_Label_355
	.word	-48
	.word	4
	.word	_Label_356
	.word	-52
	.word	4
	.word	_Label_357
	.word	-56
	.word	4
	.word	_Label_358
	.word	-60
	.word	4
	.word	_Label_359
	.word	-64
	.word	4
	.word	_Label_360
	.word	-68
	.word	4
	.word	_Label_361
	.word	-72
	.word	4
	.word	_Label_362
	.word	-76
	.word	4
	.word	_Label_363
	.word	-80
	.word	4
	.word	_Label_364
	.word	-84
	.word	4
	.word	_Label_365
	.word	-88
	.word	4
	.word	_Label_366
	.word	-92
	.word	4
	.word	0
_Label_344:
	.ascii	"StartUserProcess\0"
	.align
_Label_345:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_361:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_362:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_363:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_185_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2776:
	push	r0
	sub	r1,1,r1
	bne	_Label_2776
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
!   if t == 0 then goto _Label_370		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_370
!   _temp_369 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_371
_Label_370:
!   _temp_369 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_371:
!   if _temp_369 then goto _Label_368 else goto _Label_367
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_367
	jmp	_Label_368
_Label_367:
! THEN...
	mov	681,r13		! source line 681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_372 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
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
_Label_368:
! CALL STATEMENT...
!   _temp_373 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
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
!   _temp_375 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_374 = *_temp_375  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
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
!   _temp_385 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_384 = *_temp_385  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_379
	cmp	r1,2
	be	_Label_380
	cmp	r1,3
	be	_Label_381
	cmp	r1,4
	be	_Label_382
	cmp	r1,5
	be	_Label_383
	jmp	_Label_377
! CASE 1...
_Label_379:
! CALL STATEMENT...
!   _temp_386 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 2...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 3...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 4...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 5...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_378
! DEFAULT CASE...
_Label_377:
! CALL STATEMENT...
!   _temp_391 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
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
_Label_378:
! CALL STATEMENT...
!   _temp_392 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_393 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_394 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
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
_RoutineDescriptor__function_185_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_395
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_396
	.word	8
	.word	4
	.word	_Label_397
	.word	-16
	.word	4
	.word	_Label_398
	.word	-20
	.word	4
	.word	_Label_399
	.word	-24
	.word	4
	.word	_Label_400
	.word	-28
	.word	4
	.word	_Label_401
	.word	-32
	.word	4
	.word	_Label_402
	.word	-36
	.word	4
	.word	_Label_403
	.word	-40
	.word	4
	.word	_Label_404
	.word	-44
	.word	4
	.word	_Label_405
	.word	-48
	.word	4
	.word	_Label_406
	.word	-52
	.word	4
	.word	_Label_407
	.word	-56
	.word	4
	.word	_Label_408
	.word	-60
	.word	4
	.word	_Label_409
	.word	-64
	.word	4
	.word	_Label_410
	.word	-68
	.word	4
	.word	_Label_411
	.word	-72
	.word	4
	.word	_Label_412
	.word	-76
	.word	4
	.word	_Label_413
	.word	-9
	.word	1
	.word	_Label_414
	.word	-80
	.word	4
	.word	0
_Label_395:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_396:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_413:
	.byte	'C'
	.ascii	"_temp_369\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_184_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2777:
	push	r0
	sub	r1,1,r1
	bne	_Label_2777
	mov	988,r13		! source line 988
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_415 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
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
_RoutineDescriptor__function_184_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_416
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	0
_Label_416:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_415\0"
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
_Label_2778:
	push	r0
	sub	r1,1,r1
	bne	_Label_2778
	mov	998,r13		! source line 998
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_419 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
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
	.word	_Label_420
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	-12
	.word	4
	.word	0
_Label_420:
	.ascii	"ProcessFinish\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_419\0"
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
_Label_2779:
	push	r0
	sub	r1,1,r1
	bne	_Label_2779
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
	.word	_Label_423
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_423:
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
_Label_2780:
	push	r0
	sub	r1,1,r1
	bne	_Label_2780
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
!   _temp_427 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_428 = _temp_427 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_426 = *_temp_428  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_426 == 0 then goto _Label_425		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_425
!	jmp	_Label_424
_Label_424:
! THEN...
	mov	1513,r13		! source line 1513
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0SE",r10
!   _temp_430 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_431 = _temp_430 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_429 = *_temp_431  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_429) then goto _runtimeErrorNullPointer
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
_Label_425:
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
	.word	_Label_432
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_433
	.word	-12
	.word	4
	.word	_Label_434
	.word	-16
	.word	4
	.word	_Label_435
	.word	-20
	.word	4
	.word	_Label_436
	.word	-24
	.word	4
	.word	_Label_437
	.word	-28
	.word	4
	.word	_Label_438
	.word	-32
	.word	4
	.word	0
_Label_432:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_426\0"
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
	.word	_Label_439
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_439:
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
_Label_2781:
	push	r0
	sub	r1,1,r1
	bne	_Label_2781
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
!   _temp_440 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1541,r13		! source line 1541
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_441
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_442
	.word	-12
	.word	4
	.word	0
_Label_441:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_440\0"
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
_Label_2782:
	push	r0
	sub	r1,1,r1
	bne	_Label_2782
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
!   _temp_443 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1553,r13		! source line 1553
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_444
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_445
	.word	-12
	.word	4
	.word	0
_Label_444:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_443\0"
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
_Label_2783:
	push	r0
	sub	r1,1,r1
	bne	_Label_2783
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
!   _temp_446 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1565,r13		! source line 1565
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_447
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_448
	.word	-12
	.word	4
	.word	0
_Label_447:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_446\0"
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
_Label_2784:
	push	r0
	sub	r1,1,r1
	bne	_Label_2784
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
!   _temp_449 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1577,r13		! source line 1577
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_450
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_451
	.word	-12
	.word	4
	.word	0
_Label_450:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_449\0"
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
_Label_2785:
	push	r0
	sub	r1,1,r1
	bne	_Label_2785
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
!   _temp_452 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1589,r13		! source line 1589
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_453
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_454
	.word	-12
	.word	4
	.word	0
_Label_453:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_452\0"
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
_Label_2786:
	push	r0
	sub	r1,1,r1
	bne	_Label_2786
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
!   _temp_455 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1601,r13		! source line 1601
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_456
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_457
	.word	-12
	.word	4
	.word	0
_Label_456:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_455\0"
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
_Label_2787:
	push	r0
	sub	r1,1,r1
	bne	_Label_2787
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
!   _temp_458 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_183_ErrorInUserProcess
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
	.word	_Label_459
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_460
	.word	-12
	.word	4
	.word	0
_Label_459:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_183_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2788:
	push	r0
	sub	r1,1,r1
	bne	_Label_2788
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_461 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
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
!   _temp_462 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
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
!   _temp_466 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_465 = *_temp_466  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_465 == 0 then goto _Label_464		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_464
!	jmp	_Label_463
_Label_463:
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
!   _temp_468 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_467 = *_temp_468  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_467) then goto _runtimeErrorNullPointer
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
	jmp	_Label_469
_Label_464:
! ELSE...
	mov	1631,r13		! source line 1631
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_470 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1631,r13		! source line 1631
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_469:
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
_RoutineDescriptor__function_183_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_471
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_472
	.word	8
	.word	4
	.word	_Label_473
	.word	-12
	.word	4
	.word	_Label_474
	.word	-16
	.word	4
	.word	_Label_475
	.word	-20
	.word	4
	.word	_Label_476
	.word	-24
	.word	4
	.word	_Label_477
	.word	-28
	.word	4
	.word	_Label_478
	.word	-32
	.word	4
	.word	_Label_479
	.word	-36
	.word	4
	.word	0
_Label_471:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_472:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_461\0"
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
_Label_2789:
	push	r0
	sub	r1,1,r1
	bne	_Label_2789
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
	be	_Label_2790
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_480
_Label_2790:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_480
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_480
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_494,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_494:
	jmp	_Label_486	! 1:	
	jmp	_Label_493	! 2:	
	jmp	_Label_483	! 3:	
	jmp	_Label_482	! 4:	
	jmp	_Label_485	! 5:	
	jmp	_Label_484	! 6:	
	jmp	_Label_487	! 7:	
	jmp	_Label_488	! 8:	
	jmp	_Label_489	! 9:	
	jmp	_Label_490	! 10:	
	jmp	_Label_491	! 11:	
	jmp	_Label_492	! 12:	
! CASE 4...
_Label_482:
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
!   Call the function
	mov	1667,r13		! source line 1667
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_495  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_495  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_483:
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
_Label_484:
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
!   Retrieve Result: targetName=_temp_496  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_496  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_485:
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
!   Retrieve Result: targetName=_temp_497  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_497  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_486:
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
_Label_487:
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
!   Retrieve Result: targetName=_temp_498  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_498  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_488:
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
!   Retrieve Result: targetName=_temp_499  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_499  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_489:
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
!   Retrieve Result: targetName=_temp_500  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_500  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_490:
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
!   Retrieve Result: targetName=_temp_501  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_501  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_491:
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
!   Retrieve Result: targetName=_temp_502  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_502  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_492:
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
_Label_493:
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
_Label_480:
! CALL STATEMENT...
!   _temp_503 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
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
!   _temp_504 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
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
_Label_481:
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
	.word	_Label_505
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_506
	.word	8
	.word	4
	.word	_Label_507
	.word	12
	.word	4
	.word	_Label_508
	.word	16
	.word	4
	.word	_Label_509
	.word	20
	.word	4
	.word	_Label_510
	.word	24
	.word	4
	.word	_Label_511
	.word	-12
	.word	4
	.word	_Label_512
	.word	-16
	.word	4
	.word	_Label_513
	.word	-20
	.word	4
	.word	_Label_514
	.word	-24
	.word	4
	.word	_Label_515
	.word	-28
	.word	4
	.word	_Label_516
	.word	-32
	.word	4
	.word	_Label_517
	.word	-36
	.word	4
	.word	_Label_518
	.word	-40
	.word	4
	.word	_Label_519
	.word	-44
	.word	4
	.word	_Label_520
	.word	-48
	.word	4
	.word	0
_Label_505:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_509:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_495\0"
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
	mov	1705,r13		! source line 1705
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_522
	.word	8
	.word	4
	.word	0
_Label_521:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_522:
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
_Label_2791:
	push	r0
	sub	r1,1,r1
	bne	_Label_2791
	mov	1711,r13		! source line 1711
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_523 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1712,r13		! source line 1712
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1712,r13		! source line 1712
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
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
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
	mov	1717,r13		! source line 1717
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_526
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_526:
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
	mov	1723,r13		! source line 1723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_527
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_527:
	.ascii	"Handle_Sys_Fork\0"
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
	mov	1730,r13		! source line 1730
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_528
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_529
	.word	8
	.word	4
	.word	0
_Label_528:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_529:
	.byte	'I'
	.ascii	"processID\0"
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
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_530
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_531
	.word	8
	.word	4
	.word	0
_Label_530:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_531:
	.byte	'P'
	.ascii	"filename\0"
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
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_532
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_533
	.word	8
	.word	4
	.word	0
_Label_532:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_533:
	.byte	'P'
	.ascii	"filename\0"
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
	mov	1751,r13		! source line 1751
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_534
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_535
	.word	8
	.word	4
	.word	0
_Label_534:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"filename\0"
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
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_536
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_537
	.word	8
	.word	4
	.word	_Label_538
	.word	12
	.word	4
	.word	_Label_539
	.word	16
	.word	4
	.word	0
_Label_536:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_538:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	mov	1765,r13		! source line 1765
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_540
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_541
	.word	8
	.word	4
	.word	_Label_542
	.word	12
	.word	4
	.word	_Label_543
	.word	16
	.word	4
	.word	0
_Label_540:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_542:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_543:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	mov	1772,r13		! source line 1772
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_544
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_545
	.word	8
	.word	4
	.word	_Label_546
	.word	12
	.word	4
	.word	0
_Label_544:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_545:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_546:
	.byte	'I'
	.ascii	"newCurrentPos\0"
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
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_547
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_548
	.word	8
	.word	4
	.word	0
_Label_547:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_548:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_182_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_182_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2792:
	push	r0
	sub	r1,1,r1
	bne	_Label_2792
	mov	2371,r13		! source line 2371
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_549 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_549  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   _temp_550 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_550) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_552) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_551 = *_temp_552  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_550 = _temp_551  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   _temp_553 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_553) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_555 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_555) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_554 = *_temp_555  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_553 = _temp_554  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   _temp_556 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_556) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_558 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_558) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_557 = *_temp_558  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_556 = _temp_557  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_182_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_559
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_560
	.word	8
	.word	4
	.word	_Label_561
	.word	12
	.word	4
	.word	_Label_562
	.word	-16
	.word	4
	.word	_Label_563
	.word	-9
	.word	1
	.word	_Label_564
	.word	-20
	.word	4
	.word	_Label_565
	.word	-24
	.word	4
	.word	_Label_566
	.word	-10
	.word	1
	.word	_Label_567
	.word	-28
	.word	4
	.word	_Label_568
	.word	-32
	.word	4
	.word	_Label_569
	.word	-11
	.word	1
	.word	_Label_570
	.word	-36
	.word	4
	.word	_Label_571
	.word	-12
	.word	1
	.word	_Label_572
	.word	-40
	.word	4
	.word	_Label_573
	.word	-44
	.word	4
	.word	0
_Label_559:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_560:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_561:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_563:
	.byte	'C'
	.ascii	"_temp_557\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_566:
	.byte	'C'
	.ascii	"_temp_554\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_569:
	.byte	'C'
	.ascii	"_temp_551\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_571:
	.byte	'C'
	.ascii	"_temp_549\0"
	.align
_Label_572:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_573:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_181_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_181_printFCB,r1
	push	r1
	mov	3,r1
_Label_2793:
	push	r0
	sub	r1,1,r1
	bne	_Label_2793
	mov	2381,r13		! source line 2381
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_574 = *_temp_575  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2382,r13		! source line 2382
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2383,r13		! source line 2383
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_181_printFCB:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_577
	.word	8
	.word	4
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	0
_Label_576:
	.ascii	"printFCB\0"
	.align
_Label_577:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_180_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_180_printOpen,r1
	push	r1
	mov	4,r1
_Label_2794:
	push	r0
	sub	r1,1,r1
	bne	_Label_2794
	mov	2386,r13		! source line 2386
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2387,r13		! source line 2387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_581 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2388,r13		! source line 2388
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_582 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
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
	mov	2390,r13		! source line 2390
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_180_printOpen:
	.word	_sourceFileName
	.word	_Label_583
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_584
	.word	8
	.word	4
	.word	_Label_585
	.word	-12
	.word	4
	.word	_Label_586
	.word	-16
	.word	4
	.word	_Label_587
	.word	-20
	.word	4
	.word	0
_Label_583:
	.ascii	"printOpen\0"
	.align
_Label_584:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_588
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_588:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_589
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_589:
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
_Label_2795:
	push	r0
	sub	r1,1,r1
	bne	_Label_2795
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_591		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_591
!	jmp	_Label_590
_Label_590:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_592 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
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
_Label_591:
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
	.word	_Label_594
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_596
	.word	12
	.word	4
	.word	_Label_597
	.word	-12
	.word	4
	.word	_Label_598
	.word	-16
	.word	4
	.word	0
_Label_594:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_595:
	.ascii	"Pself\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_592\0"
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
_Label_2796:
	push	r0
	sub	r1,1,r1
	bne	_Label_2796
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
!   if count != 2147483647 then goto _Label_600		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_600
!	jmp	_Label_599
_Label_599:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_601 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
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
_Label_600:
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
!   if count > 0 then goto _Label_603		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_603
!	jmp	_Label_602
_Label_602:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_604 = &waitingThreads
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
!   _temp_605 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_605 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_606 = &_P_Kernel_readyList
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
_Label_603:
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
	.word	_Label_607
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_609
	.word	-12
	.word	4
	.word	_Label_610
	.word	-16
	.word	4
	.word	_Label_611
	.word	-20
	.word	4
	.word	_Label_612
	.word	-24
	.word	4
	.word	_Label_613
	.word	-28
	.word	4
	.word	_Label_614
	.word	-32
	.word	4
	.word	0
_Label_607:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_608:
	.ascii	"Pself\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_614:
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
_Label_2797:
	push	r0
	sub	r1,1,r1
	bne	_Label_2797
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
!   if count != -2147483648 then goto _Label_616		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_616
!	jmp	_Label_615
_Label_615:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_617 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
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
_Label_616:
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
!   if count >= 0 then goto _Label_619		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_619
!	jmp	_Label_618
_Label_618:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_620 = &waitingThreads
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
_Label_619:
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
	.word	_Label_621
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_623
	.word	-12
	.word	4
	.word	_Label_624
	.word	-16
	.word	4
	.word	_Label_625
	.word	-20
	.word	4
	.word	0
_Label_621:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_622:
	.ascii	"Pself\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_625:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_626
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_626:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_627
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_627:
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
_Label_2798:
	push	r0
	sub	r1,1,r1
	bne	_Label_2798
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
	.word	_Label_629
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_631
	.word	-12
	.word	4
	.word	0
_Label_629:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_630:
	.ascii	"Pself\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_628\0"
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
_Label_2799:
	push	r0
	sub	r1,1,r1
	bne	_Label_2799
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_633		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_633
!	jmp	_Label_632
_Label_632:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_634 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_634  sizeInBytes=4
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
_Label_633:
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
!   if heldBy == 0 then goto _Label_638		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_638
!   _temp_637 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_639
_Label_638:
!   _temp_637 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_639:
!   if _temp_637 then goto _Label_636 else goto _Label_635
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_635
	jmp	_Label_636
_Label_635:
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
	jmp	_Label_640
_Label_636:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_641 = &waitingThreads
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
_Label_640:
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
	.word	_Label_642
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_644
	.word	-16
	.word	4
	.word	_Label_645
	.word	-9
	.word	1
	.word	_Label_646
	.word	-20
	.word	4
	.word	_Label_647
	.word	-24
	.word	4
	.word	0
_Label_642:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_643:
	.ascii	"Pself\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_645:
	.byte	'C'
	.ascii	"_temp_637\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_647:
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
_Label_2800:
	push	r0
	sub	r1,1,r1
	bne	_Label_2800
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_649		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_649
!	jmp	_Label_648
_Label_648:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_650 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_650  sizeInBytes=4
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
_Label_649:
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
!   _temp_651 = &waitingThreads
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
!   if t == 0 then goto _Label_653		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_653
!	jmp	_Label_652
_Label_652:
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
!   _temp_654 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_654 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_655 = &_P_Kernel_readyList
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
	jmp	_Label_656
_Label_653:
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
_Label_656:
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
	.word	_Label_657
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_659
	.word	-12
	.word	4
	.word	_Label_660
	.word	-16
	.word	4
	.word	_Label_661
	.word	-20
	.word	4
	.word	_Label_662
	.word	-24
	.word	4
	.word	_Label_663
	.word	-28
	.word	4
	.word	_Label_664
	.word	-32
	.word	4
	.word	0
_Label_657:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_658:
	.ascii	"Pself\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_663:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_664:
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
_Label_2801:
	push	r0
	sub	r1,1,r1
	bne	_Label_2801
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_667		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_667
!	jmp	_Label_666
_Label_666:
!   _temp_665 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_668
_Label_667:
!   _temp_665 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_668:
!   ReturnResult: _temp_665  (sizeInBytes=1)
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
	.word	_Label_669
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_671
	.word	-9
	.word	1
	.word	0
_Label_669:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_670:
	.ascii	"Pself\0"
	.align
_Label_671:
	.byte	'C'
	.ascii	"_temp_665\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_672
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_672:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_673
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_673:
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
_Label_2802:
	push	r0
	sub	r1,1,r1
	bne	_Label_2802
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
	.word	_Label_675
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_677
	.word	-12
	.word	4
	.word	0
_Label_675:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_676:
	.ascii	"Pself\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_674\0"
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
_Label_2803:
	push	r0
	sub	r1,1,r1
	bne	_Label_2803
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
!   Retrieve Result: targetName=_temp_680  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_680 then goto _Label_679 else goto _Label_678
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_678
	jmp	_Label_679
_Label_678:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_681 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
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
_Label_679:
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
!   _temp_682 = &waitingThreads
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
	.word	_Label_683
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_684
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_685
	.word	12
	.word	4
	.word	_Label_686
	.word	-16
	.word	4
	.word	_Label_687
	.word	-20
	.word	4
	.word	_Label_688
	.word	-9
	.word	1
	.word	_Label_689
	.word	-24
	.word	4
	.word	0
_Label_683:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_684:
	.ascii	"Pself\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_688:
	.byte	'C'
	.ascii	"_temp_680\0"
	.align
_Label_689:
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
_Label_2804:
	push	r0
	sub	r1,1,r1
	bne	_Label_2804
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
!   Retrieve Result: targetName=_temp_692  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_692 then goto _Label_691 else goto _Label_690
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_690
	jmp	_Label_691
_Label_690:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_693 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
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
_Label_691:
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
!   _temp_694 = &waitingThreads
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
!   if t == 0 then goto _Label_696		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_696
!	jmp	_Label_695
_Label_695:
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
!   _temp_697 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_697 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_698 = &_P_Kernel_readyList
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
_Label_696:
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
	.word	_Label_699
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_700
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_701
	.word	12
	.word	4
	.word	_Label_702
	.word	-16
	.word	4
	.word	_Label_703
	.word	-20
	.word	4
	.word	_Label_704
	.word	-24
	.word	4
	.word	_Label_705
	.word	-28
	.word	4
	.word	_Label_706
	.word	-9
	.word	1
	.word	_Label_707
	.word	-32
	.word	4
	.word	_Label_708
	.word	-36
	.word	4
	.word	0
_Label_699:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_700:
	.ascii	"Pself\0"
	.align
_Label_701:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_706:
	.byte	'C'
	.ascii	"_temp_692\0"
	.align
_Label_707:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_708:
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
_Label_2805:
	push	r0
	sub	r1,1,r1
	bne	_Label_2805
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
!   Retrieve Result: targetName=_temp_711  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_711 then goto _Label_710 else goto _Label_709
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_709
	jmp	_Label_710
_Label_709:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_712 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
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
_Label_710:
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
_Label_713:
!	jmp	_Label_714
_Label_714:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_716 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_717
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_717
	jmp	_Label_718
_Label_717:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_715
! END IF...
_Label_718:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_719 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_719 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_720 = &_P_Kernel_readyList
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
	jmp	_Label_713
_Label_715:
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
	.word	_Label_721
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_723
	.word	12
	.word	4
	.word	_Label_724
	.word	-16
	.word	4
	.word	_Label_725
	.word	-20
	.word	4
	.word	_Label_726
	.word	-24
	.word	4
	.word	_Label_727
	.word	-28
	.word	4
	.word	_Label_728
	.word	-9
	.word	1
	.word	_Label_729
	.word	-32
	.word	4
	.word	_Label_730
	.word	-36
	.word	4
	.word	0
_Label_721:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_722:
	.ascii	"Pself\0"
	.align
_Label_723:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_728:
	.byte	'C'
	.ascii	"_temp_711\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_730:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_731
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
_Label_731:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_732
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_732:
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
_Label_2806:
	push	r0
	sub	r1,1,r1
	bne	_Label_2806
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
!   _temp_733 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_733 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_734 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_734 [0 ] into _temp_735
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
!   Data Move: *_temp_735 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_736 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_736 [999 ] into _temp_737
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
!   Data Move: *_temp_737 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_738 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_738 [999 ] into _temp_739
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
!   stackTop = _temp_739		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_740 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_742 = &_temp_741
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_742 = _temp_742 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_744:
!   Data Move: *_temp_742 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_742 = _temp_742 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_743 = _temp_743 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_743) then goto _Label_744
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_744
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_745 = &_temp_741
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2807
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2807:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_740 = *_temp_745  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2808:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2808
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
!   _temp_746 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_748 = &_temp_747
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_748 = _temp_748 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_750:
!   Data Move: *_temp_748 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_748 = _temp_748 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_749 = _temp_749 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_749) then goto _Label_750
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_750
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_751 = &_temp_747
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2809
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2809:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_746 = *_temp_751  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2810:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2810
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
	.word	_Label_752
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_753
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_754
	.word	12
	.word	4
	.word	_Label_755
	.word	-12
	.word	4
	.word	_Label_756
	.word	-16
	.word	4
	.word	_Label_757
	.word	-20
	.word	4
	.word	_Label_758
	.word	-84
	.word	64
	.word	_Label_759
	.word	-88
	.word	4
	.word	_Label_760
	.word	-92
	.word	4
	.word	_Label_761
	.word	-96
	.word	4
	.word	_Label_762
	.word	-100
	.word	4
	.word	_Label_763
	.word	-156
	.word	56
	.word	_Label_764
	.word	-160
	.word	4
	.word	_Label_765
	.word	-164
	.word	4
	.word	_Label_766
	.word	-168
	.word	4
	.word	_Label_767
	.word	-172
	.word	4
	.word	_Label_768
	.word	-176
	.word	4
	.word	_Label_769
	.word	-180
	.word	4
	.word	_Label_770
	.word	-184
	.word	4
	.word	_Label_771
	.word	-188
	.word	4
	.word	0
_Label_752:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_753:
	.ascii	"Pself\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_733\0"
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
_Label_2811:
	push	r0
	sub	r1,1,r1
	bne	_Label_2811
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
!   _temp_772 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_772  (sizeInBytes=4)
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
!   _temp_774 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_773  sizeInBytes=4
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
	.word	_Label_775
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_777
	.word	12
	.word	4
	.word	_Label_778
	.word	16
	.word	4
	.word	_Label_779
	.word	-12
	.word	4
	.word	_Label_780
	.word	-16
	.word	4
	.word	_Label_781
	.word	-20
	.word	4
	.word	_Label_782
	.word	-24
	.word	4
	.word	_Label_783
	.word	-28
	.word	4
	.word	0
_Label_775:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_776:
	.ascii	"Pself\0"
	.align
_Label_777:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_783:
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
_Label_2812:
	push	r0
	sub	r1,1,r1
	bne	_Label_2812
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_786 == _P_Kernel_currentThread then goto _Label_785		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_785
!	jmp	_Label_784
_Label_784:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_787 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
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
_Label_785:
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
!   _temp_788 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_790		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_790
!	jmp	_Label_789
_Label_789:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_792		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_792
!	jmp	_Label_791
_Label_791:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_793 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
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
_Label_792:
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
!   _temp_795 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_794  sizeInBytes=4
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
_Label_790:
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
	.word	_Label_796
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_798
	.word	-12
	.word	4
	.word	_Label_799
	.word	-16
	.word	4
	.word	_Label_800
	.word	-20
	.word	4
	.word	_Label_801
	.word	-24
	.word	4
	.word	_Label_802
	.word	-28
	.word	4
	.word	_Label_803
	.word	-32
	.word	4
	.word	_Label_804
	.word	-36
	.word	4
	.word	_Label_805
	.word	-40
	.word	4
	.word	_Label_806
	.word	-44
	.word	4
	.word	0
_Label_796:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_797:
	.ascii	"Pself\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_804:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_805:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_806:
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
_Label_2813:
	push	r0
	sub	r1,1,r1
	bne	_Label_2813
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_808		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_809 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
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
_Label_808:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_812 == _P_Kernel_currentThread then goto _Label_811		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_811
!	jmp	_Label_810
_Label_810:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_813 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
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
_Label_811:
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
!   _temp_814 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_815
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_815
	jmp	_Label_816
_Label_815:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_817 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
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
_Label_816:
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
	.word	_Label_818
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_819
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_820
	.word	-12
	.word	4
	.word	_Label_821
	.word	-16
	.word	4
	.word	_Label_822
	.word	-20
	.word	4
	.word	_Label_823
	.word	-24
	.word	4
	.word	_Label_824
	.word	-28
	.word	4
	.word	_Label_825
	.word	-32
	.word	4
	.word	0
_Label_818:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_819:
	.ascii	"Pself\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_825:
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
_Label_2814:
	push	r0
	sub	r1,1,r1
	bne	_Label_2814
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_829 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_829 [0 ] into _temp_830
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
!   Data Move: _temp_828 = *_temp_830  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_828 == 606348324 then goto _Label_827		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_827
!	jmp	_Label_826
_Label_826:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_831 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
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
	jmp	_Label_832
_Label_827:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_836 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_836 [999 ] into _temp_837
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
!   Data Move: _temp_835 = *_temp_837  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_835 == 606348324 then goto _Label_834		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_834
!	jmp	_Label_833
_Label_833:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_838 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
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
_Label_834:
! END IF...
_Label_832:
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
	.word	_Label_839
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	_Label_847
	.word	-36
	.word	4
	.word	_Label_848
	.word	-40
	.word	4
	.word	0
_Label_839:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_840:
	.ascii	"Pself\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_828\0"
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
_Label_2815:
	push	r0
	sub	r1,1,r1
	bne	_Label_2815
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
!   _temp_849 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
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
!   _temp_850 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_852 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_853 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
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
!   _temp_858 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_859 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_858  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_854:
!   Perform the FOR-LOOP termination test
!   if i > _temp_859 then goto _Label_857		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_857
_Label_855:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_860 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_861 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_862 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_864 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_864 [i ] into _temp_865
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
!   Data Move: _temp_863 = *_temp_865  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_866 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_868 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_868 [i ] into _temp_869
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
!   Data Move: _temp_867 = *_temp_869  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_870 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_856:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_854
! END FOR
_Label_857:
! CALL STATEMENT...
!   _temp_871 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-116]
!   _temp_872 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_872  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_873 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-108]
!   _temp_875 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_875 [0 ] into _temp_876
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
!   _temp_874 = _temp_876		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_874  sizeInBytes=4
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
	be	_Label_879
	cmp	r1,2
	be	_Label_880
	cmp	r1,3
	be	_Label_881
	cmp	r1,4
	be	_Label_882
	cmp	r1,5
	be	_Label_883
	jmp	_Label_877
! CASE 1...
_Label_879:
! CALL STATEMENT...
!   _temp_884 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_878
! CASE 2...
_Label_880:
! CALL STATEMENT...
!   _temp_885 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_878
! CASE 3...
_Label_881:
! CALL STATEMENT...
!   _temp_886 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_878
! CASE 4...
_Label_882:
! CALL STATEMENT...
!   _temp_887 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_878
! CASE 5...
_Label_883:
! CALL STATEMENT...
!   _temp_888 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_878
! DEFAULT CASE...
_Label_877:
! CALL STATEMENT...
!   _temp_889 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_889  sizeInBytes=4
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
_Label_878:
! CALL STATEMENT...
!   _temp_890 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
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
!   _temp_891 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_891  sizeInBytes=4
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
!   _temp_896 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_897 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_896  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_892:
!   Perform the FOR-LOOP termination test
!   if i > _temp_897 then goto _Label_895		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_895
_Label_893:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_898 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_899 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_900 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_902 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_902 [i ] into _temp_903
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
!   Data Move: _temp_901 = *_temp_903  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_904 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_906 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_906 [i ] into _temp_907
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
!   Data Move: _temp_905 = *_temp_907  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_905  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_908 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_894:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_892
! END FOR
_Label_895:
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
	.word	_Label_909
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_911
	.word	-12
	.word	4
	.word	_Label_912
	.word	-16
	.word	4
	.word	_Label_913
	.word	-20
	.word	4
	.word	_Label_914
	.word	-24
	.word	4
	.word	_Label_915
	.word	-28
	.word	4
	.word	_Label_916
	.word	-32
	.word	4
	.word	_Label_917
	.word	-36
	.word	4
	.word	_Label_918
	.word	-40
	.word	4
	.word	_Label_919
	.word	-44
	.word	4
	.word	_Label_920
	.word	-48
	.word	4
	.word	_Label_921
	.word	-52
	.word	4
	.word	_Label_922
	.word	-56
	.word	4
	.word	_Label_923
	.word	-60
	.word	4
	.word	_Label_924
	.word	-64
	.word	4
	.word	_Label_925
	.word	-68
	.word	4
	.word	_Label_926
	.word	-72
	.word	4
	.word	_Label_927
	.word	-76
	.word	4
	.word	_Label_928
	.word	-80
	.word	4
	.word	_Label_929
	.word	-84
	.word	4
	.word	_Label_930
	.word	-88
	.word	4
	.word	_Label_931
	.word	-92
	.word	4
	.word	_Label_932
	.word	-96
	.word	4
	.word	_Label_933
	.word	-100
	.word	4
	.word	_Label_934
	.word	-104
	.word	4
	.word	_Label_935
	.word	-108
	.word	4
	.word	_Label_936
	.word	-112
	.word	4
	.word	_Label_937
	.word	-116
	.word	4
	.word	_Label_938
	.word	-120
	.word	4
	.word	_Label_939
	.word	-124
	.word	4
	.word	_Label_940
	.word	-128
	.word	4
	.word	_Label_941
	.word	-132
	.word	4
	.word	_Label_942
	.word	-136
	.word	4
	.word	_Label_943
	.word	-140
	.word	4
	.word	_Label_944
	.word	-144
	.word	4
	.word	_Label_945
	.word	-148
	.word	4
	.word	_Label_946
	.word	-152
	.word	4
	.word	_Label_947
	.word	-156
	.word	4
	.word	_Label_948
	.word	-160
	.word	4
	.word	_Label_949
	.word	-164
	.word	4
	.word	_Label_950
	.word	-168
	.word	4
	.word	_Label_951
	.word	-172
	.word	4
	.word	_Label_952
	.word	-176
	.word	4
	.word	_Label_953
	.word	-180
	.word	4
	.word	_Label_954
	.word	-184
	.word	4
	.word	_Label_955
	.word	-188
	.word	4
	.word	_Label_956
	.word	-192
	.word	4
	.word	_Label_957
	.word	-196
	.word	4
	.word	0
_Label_909:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_910:
	.ascii	"Pself\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_956:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_958
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_958:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_959
	.word	_sourceFileName
	.word	191		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_959:
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
_Label_2816:
	push	r0
	sub	r1,1,r1
	bne	_Label_2816
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_960 = _StringConst_78
	set	_StringConst_78,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
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
!   _temp_961 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_963 = &_temp_962
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_963 = _temp_963 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_965 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_2817:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2817
!   _temp_965 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_967:
!   Data Move: *_temp_963 = _temp_965  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_2818:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2818
!   _temp_963 = _temp_963 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_964 = _temp_964 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_964) then goto _Label_967
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_967
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_968 = &_temp_962
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2819
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2819:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_961 = *_temp_968  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2820:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2820
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
!   _temp_971 = &tmLock
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
!   _temp_973 = &threadFreed
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
!   _temp_978 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_979 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_978  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_974:
!   Perform the FOR-LOOP termination test
!   if i > _temp_979 then goto _Label_977		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_977
_Label_975:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_980 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-48]
!   _temp_981 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_981 [i ] into _temp_982
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
!   Prepare Argument: offset=12  value=_temp_980  sizeInBytes=4
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
!   _temp_983 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_983 [i ] into _temp_984
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
!   _temp_985 = _temp_984 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_985 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_987 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_987 [i ] into _temp_988
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
!   _temp_986 = _temp_988		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_989 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_986  sizeInBytes=4
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
_Label_976:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_974
! END FOR
_Label_977:
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
	.word	_Label_990
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_992
	.word	-12
	.word	4
	.word	_Label_993
	.word	-16
	.word	4
	.word	_Label_994
	.word	-20
	.word	4
	.word	_Label_995
	.word	-24
	.word	4
	.word	_Label_996
	.word	-28
	.word	4
	.word	_Label_997
	.word	-32
	.word	4
	.word	_Label_998
	.word	-36
	.word	4
	.word	_Label_999
	.word	-40
	.word	4
	.word	_Label_1000
	.word	-44
	.word	4
	.word	_Label_1001
	.word	-48
	.word	4
	.word	_Label_1002
	.word	-52
	.word	4
	.word	_Label_1003
	.word	-56
	.word	4
	.word	_Label_1004
	.word	-60
	.word	4
	.word	_Label_1005
	.word	-64
	.word	4
	.word	_Label_1006
	.word	-68
	.word	4
	.word	_Label_1007
	.word	-72
	.word	4
	.word	_Label_1008
	.word	-76
	.word	4
	.word	_Label_1009
	.word	-80
	.word	4
	.word	_Label_1010
	.word	-84
	.word	4
	.word	_Label_1011
	.word	-4248
	.word	4164
	.word	_Label_1012
	.word	-4252
	.word	4
	.word	_Label_1013
	.word	-4256
	.word	4
	.word	_Label_1014
	.word	-45900
	.word	41644
	.word	_Label_1015
	.word	-45904
	.word	4
	.word	_Label_1016
	.word	-45908
	.word	4
	.word	_Label_1017
	.word	-45912
	.word	4
	.word	0
_Label_990:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_991:
	.ascii	"Pself\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1017:
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
_Label_2821:
	push	r0
	sub	r1,1,r1
	bne	_Label_2821
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
!   _temp_1018 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
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
!   _temp_1023 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1024 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1023  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1019:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1024 then goto _Label_1022		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1022
_Label_1020:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1025 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
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
!   _temp_1026 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1028 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1028 [i ] into _temp_1029
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
!   _temp_1027 = _temp_1029		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_185_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1021:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1019
! END FOR
_Label_1022:
! CALL STATEMENT...
!   _temp_1030 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1031 = _function_184_PrintObjectAddr
	set	_function_184_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1032 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1031  sizeInBytes=4
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
	.word	_Label_1033
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1035
	.word	-12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-24
	.word	4
	.word	_Label_1039
	.word	-28
	.word	4
	.word	_Label_1040
	.word	-32
	.word	4
	.word	_Label_1041
	.word	-36
	.word	4
	.word	_Label_1042
	.word	-40
	.word	4
	.word	_Label_1043
	.word	-44
	.word	4
	.word	_Label_1044
	.word	-48
	.word	4
	.word	_Label_1045
	.word	-52
	.word	4
	.word	_Label_1046
	.word	-56
	.word	4
	.word	_Label_1047
	.word	-60
	.word	4
	.word	0
_Label_1033:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1034:
	.ascii	"Pself\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1046:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1047:
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
_Label_2822:
	push	r0
	sub	r1,1,r1
	bne	_Label_2822
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1048 = &tmLock
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
_Label_1049:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1052 = &freeList
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
!   if result==true then goto _Label_1050 else goto _Label_1051
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1051
	jmp	_Label_1050
_Label_1050:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_1053 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1054 = &threadFreed
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1053  sizeInBytes=4
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
	jmp	_Label_1049
_Label_1051:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1055 = &freeList
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
!   _temp_1056 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1056 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1057 = &tmLock
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
	.word	_Label_1058
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1060
	.word	-12
	.word	4
	.word	_Label_1061
	.word	-16
	.word	4
	.word	_Label_1062
	.word	-20
	.word	4
	.word	_Label_1063
	.word	-24
	.word	4
	.word	_Label_1064
	.word	-28
	.word	4
	.word	_Label_1065
	.word	-32
	.word	4
	.word	_Label_1066
	.word	-36
	.word	4
	.word	_Label_1067
	.word	-40
	.word	4
	.word	0
_Label_1058:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1067:
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
_Label_2823:
	push	r0
	sub	r1,1,r1
	bne	_Label_2823
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1068 = &tmLock
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
!   _temp_1069 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1069 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1070 = &freeList
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
!   _temp_1071 = &tmLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1072 = &threadFreed
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1071  sizeInBytes=4
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
!   _temp_1073 = &tmLock
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
	.word	_Label_1074
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1075
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1076
	.word	12
	.word	4
	.word	_Label_1077
	.word	-12
	.word	4
	.word	_Label_1078
	.word	-16
	.word	4
	.word	_Label_1079
	.word	-20
	.word	4
	.word	_Label_1080
	.word	-24
	.word	4
	.word	_Label_1081
	.word	-28
	.word	4
	.word	_Label_1082
	.word	-32
	.word	4
	.word	0
_Label_1074:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1075:
	.ascii	"Pself\0"
	.align
_Label_1076:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1083
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1083:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1084
	.word	_sourceFileName
	.word	212		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1084:
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
_Label_2824:
	push	r0
	sub	r1,1,r1
	bne	_Label_2824
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
_Label_2825:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2825
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1086 = &addrSpace
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
	.word	_Label_1087
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1089
	.word	-12
	.word	4
	.word	_Label_1090
	.word	-16
	.word	4
	.word	0
_Label_1087:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1088:
	.ascii	"Pself\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1085\0"
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
_Label_2826:
	push	r0
	sub	r1,1,r1
	bne	_Label_2826
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1091) then goto _runtimeErrorNullPointer
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
!   _temp_1092 = &addrSpace
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
!   _temp_1093 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
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
	call	_function_185_ThreadPrintShort
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
	.word	_Label_1094
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1096
	.word	-12
	.word	4
	.word	_Label_1097
	.word	-16
	.word	4
	.word	_Label_1098
	.word	-20
	.word	4
	.word	0
_Label_1094:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1095:
	.ascii	"Pself\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1091\0"
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
_Label_2827:
	push	r0
	sub	r1,1,r1
	bne	_Label_2827
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1099 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1101 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
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
!   _temp_1102 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1104		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1104
!	jmp	_Label_1103
_Label_1103:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1105 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1105  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1106
_Label_1104:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1108		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1108
!	jmp	_Label_1107
_Label_1107:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1109 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1110
_Label_1108:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1112		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1112
!	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1113 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1114
_Label_1112:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1115 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1115  sizeInBytes=4
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
_Label_1114:
! END IF...
_Label_1110:
! END IF...
_Label_1106:
! CALL STATEMENT...
!   _temp_1116 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
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
!   _temp_1117 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1117  sizeInBytes=4
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
	.word	_Label_1118
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1120
	.word	-12
	.word	4
	.word	_Label_1121
	.word	-16
	.word	4
	.word	_Label_1122
	.word	-20
	.word	4
	.word	_Label_1123
	.word	-24
	.word	4
	.word	_Label_1124
	.word	-28
	.word	4
	.word	_Label_1125
	.word	-32
	.word	4
	.word	_Label_1126
	.word	-36
	.word	4
	.word	_Label_1127
	.word	-40
	.word	4
	.word	_Label_1128
	.word	-44
	.word	4
	.word	_Label_1129
	.word	-48
	.word	4
	.word	0
_Label_1118:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1119:
	.ascii	"Pself\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1130
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1130:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1131
	.word	_sourceFileName
	.word	232		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1131:
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
_Label_2828:
	push	r0
	sub	r1,1,r1
	bne	_Label_2828
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
!   _temp_1132 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1134 = &_temp_1133
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1134 = _temp_1134 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1136 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_2829:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2829
!   _temp_1136 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1138:
!   Data Move: *_temp_1134 = _temp_1136  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_2830:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2830
!   _temp_1134 = _temp_1134 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1135 = _temp_1135 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1135) then goto _Label_1138
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1138
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1139 = &_temp_1133
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2831
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2831:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1132 = *_temp_1139  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_2832:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2832
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
!   _temp_1141 = &processManagerLock
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
!   _temp_1143 = &aProcessBecameFree
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
!   _temp_1146 = &aProcessDied
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
!   _temp_1151 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1152 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1151  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1147:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1152 then goto _Label_1150		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1150
_Label_1148:
	mov	896,r13		! source line 896
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1153 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1153 [i ] into _temp_1154
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
!   _temp_1155 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1155 [i ] into _temp_1156
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
!   _temp_1157 = _temp_1156 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1157 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1159 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1159 [i ] into _temp_1160
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
!   _temp_1158 = _temp_1160		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1161 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1158  sizeInBytes=4
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
_Label_1149:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1147
! END FOR
_Label_1150:
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
	.word	_Label_1162
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1164
	.word	-12
	.word	4
	.word	_Label_1165
	.word	-16
	.word	4
	.word	_Label_1166
	.word	-20
	.word	4
	.word	_Label_1167
	.word	-24
	.word	4
	.word	_Label_1168
	.word	-28
	.word	4
	.word	_Label_1169
	.word	-32
	.word	4
	.word	_Label_1170
	.word	-36
	.word	4
	.word	_Label_1171
	.word	-40
	.word	4
	.word	_Label_1172
	.word	-44
	.word	4
	.word	_Label_1173
	.word	-48
	.word	4
	.word	_Label_1174
	.word	-52
	.word	4
	.word	_Label_1175
	.word	-56
	.word	4
	.word	_Label_1176
	.word	-60
	.word	4
	.word	_Label_1177
	.word	-64
	.word	4
	.word	_Label_1178
	.word	-68
	.word	4
	.word	_Label_1179
	.word	-72
	.word	4
	.word	_Label_1180
	.word	-76
	.word	4
	.word	_Label_1181
	.word	-80
	.word	4
	.word	_Label_1182
	.word	-84
	.word	4
	.word	_Label_1183
	.word	-88
	.word	4
	.word	_Label_1184
	.word	-212
	.word	124
	.word	_Label_1185
	.word	-216
	.word	4
	.word	_Label_1186
	.word	-220
	.word	4
	.word	_Label_1187
	.word	-1464
	.word	1244
	.word	_Label_1188
	.word	-1468
	.word	4
	.word	_Label_1189
	.word	-1472
	.word	4
	.word	0
_Label_1162:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1163:
	.ascii	"Pself\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1189:
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
_Label_2833:
	push	r0
	sub	r1,1,r1
	bne	_Label_2833
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
!   _temp_1190 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
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
!   _temp_1195 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1196 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1195  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1191:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1196 then goto _Label_1194		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1194
_Label_1192:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1197 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
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
!   _temp_1198 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1199 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1199 [i ] into _temp_1200
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
_Label_1193:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1191
! END FOR
_Label_1194:
! CALL STATEMENT...
!   _temp_1201 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1202 = _function_184_PrintObjectAddr
	set	_function_184_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1203 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1202  sizeInBytes=4
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
	.word	_Label_1204
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1206
	.word	-12
	.word	4
	.word	_Label_1207
	.word	-16
	.word	4
	.word	_Label_1208
	.word	-20
	.word	4
	.word	_Label_1209
	.word	-24
	.word	4
	.word	_Label_1210
	.word	-28
	.word	4
	.word	_Label_1211
	.word	-32
	.word	4
	.word	_Label_1212
	.word	-36
	.word	4
	.word	_Label_1213
	.word	-40
	.word	4
	.word	_Label_1214
	.word	-44
	.word	4
	.word	_Label_1215
	.word	-48
	.word	4
	.word	_Label_1216
	.word	-52
	.word	4
	.word	_Label_1217
	.word	-56
	.word	4
	.word	0
_Label_1204:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1205:
	.ascii	"Pself\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1216:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1217:
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
_Label_2834:
	push	r0
	sub	r1,1,r1
	bne	_Label_2834
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
!   _temp_1218 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
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
!   _temp_1223 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1224 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1223  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1219:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1224 then goto _Label_1222		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1222
_Label_1220:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1225 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
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
!   _temp_1226 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1226 [i ] into _temp_1227
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
_Label_1221:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1219
! END FOR
_Label_1222:
! CALL STATEMENT...
!   _temp_1228 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_1229 = _function_184_PrintObjectAddr
	set	_function_184_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1230 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1229  sizeInBytes=4
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
	.word	_Label_1231
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1233
	.word	-12
	.word	4
	.word	_Label_1234
	.word	-16
	.word	4
	.word	_Label_1235
	.word	-20
	.word	4
	.word	_Label_1236
	.word	-24
	.word	4
	.word	_Label_1237
	.word	-28
	.word	4
	.word	_Label_1238
	.word	-32
	.word	4
	.word	_Label_1239
	.word	-36
	.word	4
	.word	_Label_1240
	.word	-40
	.word	4
	.word	_Label_1241
	.word	-44
	.word	4
	.word	_Label_1242
	.word	-48
	.word	4
	.word	_Label_1243
	.word	-52
	.word	4
	.word	0
_Label_1231:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1232:
	.ascii	"Pself\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1242:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1243:
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
_Label_2835:
	push	r0
	sub	r1,1,r1
	bne	_Label_2835
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_1244 = &processManagerLock
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
_Label_1245:
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_1248 = &freeList
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
!   if result==true then goto _Label_1246 else goto _Label_1247
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1247
	jmp	_Label_1246
_Label_1246:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1249 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1250 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1249  sizeInBytes=4
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
	jmp	_Label_1245
_Label_1247:
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1251 = &freeList
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
!   _temp_1252 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1252 = 1  (sizeInBytes=4)
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
!   _temp_1253 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1253 = nextPid  (sizeInBytes=4)
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
!   _temp_1254 = &processManagerLock
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
	.word	_Label_1255
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1257
	.word	-12
	.word	4
	.word	_Label_1258
	.word	-16
	.word	4
	.word	_Label_1259
	.word	-20
	.word	4
	.word	_Label_1260
	.word	-24
	.word	4
	.word	_Label_1261
	.word	-28
	.word	4
	.word	_Label_1262
	.word	-32
	.word	4
	.word	_Label_1263
	.word	-36
	.word	4
	.word	_Label_1264
	.word	-40
	.word	4
	.word	_Label_1265
	.word	-44
	.word	4
	.word	0
_Label_1255:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1256:
	.ascii	"Pself\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1265:
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
_Label_2836:
	push	r0
	sub	r1,1,r1
	bne	_Label_2836
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1266 = &processManagerLock
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
!   _temp_1267 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1267 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1268 = &freeList
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
!   _temp_1269 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1270 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1269  sizeInBytes=4
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
!   _temp_1271 = &processManagerLock
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
	.word	_Label_1272
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1274
	.word	12
	.word	4
	.word	_Label_1275
	.word	-12
	.word	4
	.word	_Label_1276
	.word	-16
	.word	4
	.word	_Label_1277
	.word	-20
	.word	4
	.word	_Label_1278
	.word	-24
	.word	4
	.word	_Label_1279
	.word	-28
	.word	4
	.word	_Label_1280
	.word	-32
	.word	4
	.word	0
_Label_1272:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1273:
	.ascii	"Pself\0"
	.align
_Label_1274:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1281
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1281:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1282
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1282:
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
_Label_2837:
	push	r0
	sub	r1,1,r1
	bne	_Label_2837
	mov	1013,r13		! source line 1013
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1283 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
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
!   _temp_1285 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
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
!   _temp_1287 = &frameManagerLock
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
!   _temp_1289 = &newFramesAvailable
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
!   _temp_1294 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1295 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1294  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1290:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1295 then goto _Label_1293		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1293
_Label_1291:
	mov	1032,r13		! source line 1032
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1298 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1298) then goto _Label_1297
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1297
!	jmp	_Label_1296
_Label_1296:
! THEN...
	mov	1036,r13		! source line 1036
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1299 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
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
_Label_1297:
!   Increment the FOR-LOOP index variable and jump back
_Label_1292:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1290
! END FOR
_Label_1293:
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
	.word	_Label_1300
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1301
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1302
	.word	-12
	.word	4
	.word	_Label_1303
	.word	-16
	.word	4
	.word	_Label_1304
	.word	-20
	.word	4
	.word	_Label_1305
	.word	-24
	.word	4
	.word	_Label_1306
	.word	-28
	.word	4
	.word	_Label_1307
	.word	-32
	.word	4
	.word	_Label_1308
	.word	-36
	.word	4
	.word	_Label_1309
	.word	-40
	.word	4
	.word	_Label_1310
	.word	-44
	.word	4
	.word	_Label_1311
	.word	-48
	.word	4
	.word	_Label_1312
	.word	-52
	.word	4
	.word	_Label_1313
	.word	-56
	.word	4
	.word	0
_Label_1300:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1301:
	.ascii	"Pself\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1294\0"
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
	.ascii	"_temp_1283\0"
	.align
_Label_1313:
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
_Label_2838:
	push	r0
	sub	r1,1,r1
	bne	_Label_2838
	mov	1043,r13		! source line 1043
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0SE",r10
!   _temp_1314 = &frameManagerLock
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
!   _temp_1315 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1316 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1316  sizeInBytes=4
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
!   _temp_1317 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1318 = &framesInUse
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
!   _temp_1319 = &frameManagerLock
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
	.word	_Label_1320
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1322
	.word	-12
	.word	4
	.word	_Label_1323
	.word	-16
	.word	4
	.word	_Label_1324
	.word	-20
	.word	4
	.word	_Label_1325
	.word	-24
	.word	4
	.word	_Label_1326
	.word	-28
	.word	4
	.word	_Label_1327
	.word	-32
	.word	4
	.word	0
_Label_1320:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1321:
	.ascii	"Pself\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1314\0"
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
_Label_2839:
	push	r0
	sub	r1,1,r1
	bne	_Label_2839
	mov	1057,r13		! source line 1057
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_1328 = &frameManagerLock
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
_Label_1329:
!   if numberFreeFrames >= 1 then goto _Label_1331		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1331
!	jmp	_Label_1330
_Label_1330:
	mov	1068,r13		! source line 1068
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0SE",r10
!   _temp_1332 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1333 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1332  sizeInBytes=4
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
	jmp	_Label_1329
_Label_1331:
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1334 = &framesInUse
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
!   _temp_1335 = &frameManagerLock
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
!   _temp_1336 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1336		(int)
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
	.word	_Label_1337
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1339
	.word	-12
	.word	4
	.word	_Label_1340
	.word	-16
	.word	4
	.word	_Label_1341
	.word	-20
	.word	4
	.word	_Label_1342
	.word	-24
	.word	4
	.word	_Label_1343
	.word	-28
	.word	4
	.word	_Label_1344
	.word	-32
	.word	4
	.word	_Label_1345
	.word	-36
	.word	4
	.word	_Label_1346
	.word	-40
	.word	4
	.word	0
_Label_1337:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1338:
	.ascii	"Pself\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1345:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1346:
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
_Label_2840:
	push	r0
	sub	r1,1,r1
	bne	_Label_2840
	mov	1087,r13		! source line 1087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1347 = &frameManagerLock
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
_Label_1348:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1350		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1350
!	jmp	_Label_1349
_Label_1349:
	mov	1091,r13		! source line 1091
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1351 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1352 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1351  sizeInBytes=4
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
	jmp	_Label_1348
_Label_1350:
! FOR STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1357 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1358 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1357  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1353:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1358 then goto _Label_1356		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1356
_Label_1354:
	mov	1094,r13		! source line 1094
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0AS",r10
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1359 = &framesInUse
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
!   _temp_1360 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1360		(int)
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
_Label_1355:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1353
! END FOR
_Label_1356:
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
!   _temp_1361 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1361 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1362 = &frameManagerLock
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
	.word	_Label_1363
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1365
	.word	12
	.word	4
	.word	_Label_1366
	.word	16
	.word	4
	.word	_Label_1367
	.word	-12
	.word	4
	.word	_Label_1368
	.word	-16
	.word	4
	.word	_Label_1369
	.word	-20
	.word	4
	.word	_Label_1370
	.word	-24
	.word	4
	.word	_Label_1371
	.word	-28
	.word	4
	.word	_Label_1372
	.word	-32
	.word	4
	.word	_Label_1373
	.word	-36
	.word	4
	.word	_Label_1374
	.word	-40
	.word	4
	.word	_Label_1375
	.word	-44
	.word	4
	.word	_Label_1376
	.word	-48
	.word	4
	.word	_Label_1377
	.word	-52
	.word	4
	.word	_Label_1378
	.word	-56
	.word	4
	.word	0
_Label_1363:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1364:
	.ascii	"Pself\0"
	.align
_Label_1365:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1376:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1377:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1378:
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
_Label_2841:
	push	r0
	sub	r1,1,r1
	bne	_Label_2841
	mov	1106,r13		! source line 1106
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1379 = &frameManagerLock
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
!   _temp_1384 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1386 = *_temp_1387  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1385 = _temp_1386 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1384  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1380:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1385 then goto _Label_1383		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1383
_Label_1381:
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
!   _temp_1388 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1388 div 8192		(int)
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
!   _temp_1389 = &framesInUse
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
_Label_1382:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1380
! END FOR
_Label_1383:
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1390		(int)
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
!   _temp_1392 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1393 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1392  sizeInBytes=4
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
!   _temp_1394 = &frameManagerLock
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
	.word	_Label_1395
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1396
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1397
	.word	12
	.word	4
	.word	_Label_1398
	.word	-12
	.word	4
	.word	_Label_1399
	.word	-16
	.word	4
	.word	_Label_1400
	.word	-20
	.word	4
	.word	_Label_1401
	.word	-24
	.word	4
	.word	_Label_1402
	.word	-28
	.word	4
	.word	_Label_1403
	.word	-32
	.word	4
	.word	_Label_1404
	.word	-36
	.word	4
	.word	_Label_1405
	.word	-40
	.word	4
	.word	_Label_1406
	.word	-44
	.word	4
	.word	_Label_1407
	.word	-48
	.word	4
	.word	_Label_1408
	.word	-52
	.word	4
	.word	_Label_1409
	.word	-56
	.word	4
	.word	_Label_1410
	.word	-60
	.word	4
	.word	_Label_1411
	.word	-64
	.word	4
	.word	_Label_1412
	.word	-68
	.word	4
	.word	0
_Label_1395:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1396:
	.ascii	"Pself\0"
	.align
_Label_1397:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1410:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1411:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1412:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1413
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
_Label_1413:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1414
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1414:
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
_Label_2842:
	push	r0
	sub	r1,1,r1
	bne	_Label_2842
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
!   _temp_1415 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1417 = &_temp_1416
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1417 = _temp_1417 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1419:
!   Data Move: *_temp_1417 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1417 = _temp_1417 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1418 = _temp_1418 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1418) then goto _Label_1419
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1419
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1420 = &_temp_1416
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2843
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2843:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1415 = *_temp_1420  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2844:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2844
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
	.word	_Label_1421
	.word	4		! total size of parameters
	.word	100		! frame size = 100
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
	.word	-104
	.word	84
	.word	_Label_1427
	.word	-108
	.word	4
	.word	0
_Label_1421:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1418\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1415\0"
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
_Label_2845:
	push	r0
	sub	r1,1,r1
	bne	_Label_2845
	mov	1138,r13		! source line 1138
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1428 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1429 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1429  sizeInBytes=4
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
!   _temp_1434 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1435 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1434  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1430:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1435 then goto _Label_1433		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1433
_Label_1431:
	mov	1145,r13		! source line 1145
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1436 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1436  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1438 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1438 [i ] into _temp_1439
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
!   _temp_1437 = _temp_1439		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1437  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1440 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1440  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1442 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1442 [i ] into _temp_1443
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
!   Data Move: _temp_1441 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1444 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1150,r13		! source line 1150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1445 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1445  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1151,r13		! source line 1151
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1446 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1446  sizeInBytes=4
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
!   if intIsZero (_temp_1448) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1447  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1153,r13		! source line 1153
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1449 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1449  sizeInBytes=4
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
!   if intIsZero (_temp_1453) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1452  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1452) then goto _Label_1451
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1451
!	jmp	_Label_1450
_Label_1450:
! THEN...
	mov	1156,r13		! source line 1156
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1455) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1454  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1454  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1456
_Label_1451:
! ELSE...
	mov	1158,r13		! source line 1158
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1457 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1456:
! CALL STATEMENT...
!   _temp_1458 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1458  sizeInBytes=4
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
!   if intIsZero (_temp_1461) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1459 else goto _Label_1460
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1460
	jmp	_Label_1459
_Label_1459:
! THEN...
	mov	1162,r13		! source line 1162
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1462 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1463
_Label_1460:
! ELSE...
	mov	1164,r13		! source line 1164
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1464 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1463:
! CALL STATEMENT...
!   _temp_1465 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
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
!   if intIsZero (_temp_1468) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1466 else goto _Label_1467
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1467
	jmp	_Label_1466
_Label_1466:
! THEN...
	mov	1168,r13		! source line 1168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1469 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1470
_Label_1467:
! ELSE...
	mov	1170,r13		! source line 1170
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1471 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1470:
! CALL STATEMENT...
!   _temp_1472 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
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
!   if intIsZero (_temp_1475) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1473 else goto _Label_1474
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1474
	jmp	_Label_1473
_Label_1473:
! THEN...
	mov	1174,r13		! source line 1174
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1476 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1477
_Label_1474:
! ELSE...
	mov	1176,r13		! source line 1176
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1478 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1477:
! CALL STATEMENT...
!   _temp_1479 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
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
!   if intIsZero (_temp_1482) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1480 else goto _Label_1481
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1481
	jmp	_Label_1480
_Label_1480:
! THEN...
	mov	1180,r13		! source line 1180
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1483 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1484
_Label_1481:
! ELSE...
	mov	1182,r13		! source line 1182
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1485 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1484:
! CALL STATEMENT...
!   Call the function
	mov	1184,r13		! source line 1184
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1432:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1430
! END FOR
_Label_1433:
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
	.word	_Label_1486
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1488
	.word	-12
	.word	4
	.word	_Label_1489
	.word	-16
	.word	4
	.word	_Label_1490
	.word	-20
	.word	4
	.word	_Label_1491
	.word	-24
	.word	4
	.word	_Label_1492
	.word	-28
	.word	4
	.word	_Label_1493
	.word	-32
	.word	4
	.word	_Label_1494
	.word	-36
	.word	4
	.word	_Label_1495
	.word	-40
	.word	4
	.word	_Label_1496
	.word	-44
	.word	4
	.word	_Label_1497
	.word	-48
	.word	4
	.word	_Label_1498
	.word	-52
	.word	4
	.word	_Label_1499
	.word	-56
	.word	4
	.word	_Label_1500
	.word	-60
	.word	4
	.word	_Label_1501
	.word	-64
	.word	4
	.word	_Label_1502
	.word	-68
	.word	4
	.word	_Label_1503
	.word	-72
	.word	4
	.word	_Label_1504
	.word	-76
	.word	4
	.word	_Label_1505
	.word	-80
	.word	4
	.word	_Label_1506
	.word	-84
	.word	4
	.word	_Label_1507
	.word	-88
	.word	4
	.word	_Label_1508
	.word	-92
	.word	4
	.word	_Label_1509
	.word	-96
	.word	4
	.word	_Label_1510
	.word	-100
	.word	4
	.word	_Label_1511
	.word	-104
	.word	4
	.word	_Label_1512
	.word	-108
	.word	4
	.word	_Label_1513
	.word	-112
	.word	4
	.word	_Label_1514
	.word	-116
	.word	4
	.word	_Label_1515
	.word	-120
	.word	4
	.word	_Label_1516
	.word	-124
	.word	4
	.word	_Label_1517
	.word	-128
	.word	4
	.word	_Label_1518
	.word	-132
	.word	4
	.word	_Label_1519
	.word	-136
	.word	4
	.word	_Label_1520
	.word	-140
	.word	4
	.word	_Label_1521
	.word	-144
	.word	4
	.word	_Label_1522
	.word	-148
	.word	4
	.word	_Label_1523
	.word	-152
	.word	4
	.word	_Label_1524
	.word	-156
	.word	4
	.word	_Label_1525
	.word	-160
	.word	4
	.word	_Label_1526
	.word	-164
	.word	4
	.word	_Label_1527
	.word	-168
	.word	4
	.word	0
_Label_1486:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1487:
	.ascii	"Pself\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1527:
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
_Label_2846:
	push	r0
	sub	r1,1,r1
	bne	_Label_2846
	mov	1190,r13		! source line 1190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
!   _temp_1530 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1530 [entry ] into _temp_1531
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
!   Data Move: _temp_1529 = *_temp_1531  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1528 = _temp_1529 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1528  (sizeInBytes=4)
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
	.word	_Label_1532
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	12
	.word	4
	.word	_Label_1535
	.word	-12
	.word	4
	.word	_Label_1536
	.word	-16
	.word	4
	.word	_Label_1537
	.word	-20
	.word	4
	.word	_Label_1538
	.word	-24
	.word	4
	.word	0
_Label_1532:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1528\0"
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
_Label_2847:
	push	r0
	sub	r1,1,r1
	bne	_Label_2847
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0RE",r10
!   _temp_1541 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1541 [entry ] into _temp_1542
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
!   Data Move: _temp_1540 = *_temp_1542  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1539 = _temp_1540 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1539  (sizeInBytes=4)
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
	.word	_Label_1543
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1545
	.word	12
	.word	4
	.word	_Label_1546
	.word	-12
	.word	4
	.word	_Label_1547
	.word	-16
	.word	4
	.word	_Label_1548
	.word	-20
	.word	4
	.word	_Label_1549
	.word	-24
	.word	4
	.word	0
_Label_1543:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1544:
	.ascii	"Pself\0"
	.align
_Label_1545:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1539\0"
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
_Label_2848:
	push	r0
	sub	r1,1,r1
	bne	_Label_2848
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0AS",r10
!   _temp_1550 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1550 [entry ] into _temp_1551
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
!   _temp_1555 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1555 [entry ] into _temp_1556
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
!   Data Move: _temp_1554 = *_temp_1556  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1553 = _temp_1554 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1552 = _temp_1553 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1551 = _temp_1552  (sizeInBytes=4)
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
	.word	_Label_1557
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1558
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1559
	.word	12
	.word	4
	.word	_Label_1560
	.word	16
	.word	4
	.word	_Label_1561
	.word	-12
	.word	4
	.word	_Label_1562
	.word	-16
	.word	4
	.word	_Label_1563
	.word	-20
	.word	4
	.word	_Label_1564
	.word	-24
	.word	4
	.word	_Label_1565
	.word	-28
	.word	4
	.word	_Label_1566
	.word	-32
	.word	4
	.word	_Label_1567
	.word	-36
	.word	4
	.word	0
_Label_1557:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1558:
	.ascii	"Pself\0"
	.align
_Label_1559:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1560:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1550\0"
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
_Label_2849:
	push	r0
	sub	r1,1,r1
	bne	_Label_2849
	mov	1219,r13		! source line 1219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0RE",r10
!   _temp_1571 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1571 [entry ] into _temp_1572
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
!   Data Move: _temp_1570 = *_temp_1572  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1569 = _temp_1570 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1569) then goto _Label_1573
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1573
!   _temp_1568 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1574
_Label_1573:
!   _temp_1568 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1574:
!   ReturnResult: _temp_1568  (sizeInBytes=1)
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
	.word	_Label_1575
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1577
	.word	12
	.word	4
	.word	_Label_1578
	.word	-16
	.word	4
	.word	_Label_1579
	.word	-20
	.word	4
	.word	_Label_1580
	.word	-24
	.word	4
	.word	_Label_1581
	.word	-28
	.word	4
	.word	_Label_1582
	.word	-9
	.word	1
	.word	0
_Label_1575:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1576:
	.ascii	"Pself\0"
	.align
_Label_1577:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1582:
	.byte	'C'
	.ascii	"_temp_1568\0"
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
_Label_2850:
	push	r0
	sub	r1,1,r1
	bne	_Label_2850
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0RE",r10
!   _temp_1586 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1586 [entry ] into _temp_1587
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
!   Data Move: _temp_1585 = *_temp_1587  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1584 = _temp_1585 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1584) then goto _Label_1588
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1588
!   _temp_1583 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1589
_Label_1588:
!   _temp_1583 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1589:
!   ReturnResult: _temp_1583  (sizeInBytes=1)
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
	.word	_Label_1590
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1592
	.word	12
	.word	4
	.word	_Label_1593
	.word	-16
	.word	4
	.word	_Label_1594
	.word	-20
	.word	4
	.word	_Label_1595
	.word	-24
	.word	4
	.word	_Label_1596
	.word	-28
	.word	4
	.word	_Label_1597
	.word	-9
	.word	1
	.word	0
_Label_1590:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1591:
	.ascii	"Pself\0"
	.align
_Label_1592:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1597:
	.byte	'C'
	.ascii	"_temp_1583\0"
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
_Label_2851:
	push	r0
	sub	r1,1,r1
	bne	_Label_2851
	mov	1237,r13		! source line 1237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0RE",r10
!   _temp_1601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1601 [entry ] into _temp_1602
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
!   Data Move: _temp_1600 = *_temp_1602  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1599 = _temp_1600 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1599) then goto _Label_1603
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1603
!   _temp_1598 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1604
_Label_1603:
!   _temp_1598 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1604:
!   ReturnResult: _temp_1598  (sizeInBytes=1)
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
	.word	_Label_1605
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	12
	.word	4
	.word	_Label_1608
	.word	-16
	.word	4
	.word	_Label_1609
	.word	-20
	.word	4
	.word	_Label_1610
	.word	-24
	.word	4
	.word	_Label_1611
	.word	-28
	.word	4
	.word	_Label_1612
	.word	-9
	.word	1
	.word	0
_Label_1605:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1612:
	.byte	'C'
	.ascii	"_temp_1598\0"
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
_Label_2852:
	push	r0
	sub	r1,1,r1
	bne	_Label_2852
	mov	1246,r13		! source line 1246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0RE",r10
!   _temp_1616 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1616 [entry ] into _temp_1617
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
!   Data Move: _temp_1615 = *_temp_1617  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1614 = _temp_1615 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1614) then goto _Label_1618
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1618
!   _temp_1613 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1619
_Label_1618:
!   _temp_1613 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1619:
!   ReturnResult: _temp_1613  (sizeInBytes=1)
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
	.word	_Label_1620
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	12
	.word	4
	.word	_Label_1623
	.word	-16
	.word	4
	.word	_Label_1624
	.word	-20
	.word	4
	.word	_Label_1625
	.word	-24
	.word	4
	.word	_Label_1626
	.word	-28
	.word	4
	.word	_Label_1627
	.word	-9
	.word	1
	.word	0
_Label_1620:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1627:
	.byte	'C'
	.ascii	"_temp_1613\0"
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
_Label_2853:
	push	r0
	sub	r1,1,r1
	bne	_Label_2853
	mov	1255,r13		! source line 1255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
!   _temp_1628 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1628 [entry ] into _temp_1629
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
!   _temp_1632 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1632 [entry ] into _temp_1633
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
!   Data Move: _temp_1631 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1630 = _temp_1631 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1629 = _temp_1630  (sizeInBytes=4)
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
	.word	_Label_1634
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1636
	.word	12
	.word	4
	.word	_Label_1637
	.word	-12
	.word	4
	.word	_Label_1638
	.word	-16
	.word	4
	.word	_Label_1639
	.word	-20
	.word	4
	.word	_Label_1640
	.word	-24
	.word	4
	.word	_Label_1641
	.word	-28
	.word	4
	.word	_Label_1642
	.word	-32
	.word	4
	.word	0
_Label_1634:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1635:
	.ascii	"Pself\0"
	.align
_Label_1636:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1628\0"
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
_Label_2854:
	push	r0
	sub	r1,1,r1
	bne	_Label_2854
	mov	1264,r13		! source line 1264
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0AS",r10
!   _temp_1643 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1643 [entry ] into _temp_1644
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
!   _temp_1647 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1647 [entry ] into _temp_1648
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
!   Data Move: _temp_1646 = *_temp_1648  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1645 = _temp_1646 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1644 = _temp_1645  (sizeInBytes=4)
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
	.word	_Label_1649
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1651
	.word	12
	.word	4
	.word	_Label_1652
	.word	-12
	.word	4
	.word	_Label_1653
	.word	-16
	.word	4
	.word	_Label_1654
	.word	-20
	.word	4
	.word	_Label_1655
	.word	-24
	.word	4
	.word	_Label_1656
	.word	-28
	.word	4
	.word	_Label_1657
	.word	-32
	.word	4
	.word	0
_Label_1649:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1650:
	.ascii	"Pself\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1643\0"
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
_Label_2855:
	push	r0
	sub	r1,1,r1
	bne	_Label_2855
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
!   _temp_1658 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1658 [entry ] into _temp_1659
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
!   _temp_1662 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1662 [entry ] into _temp_1663
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
!   Data Move: _temp_1661 = *_temp_1663  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1660 = _temp_1661 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1659 = _temp_1660  (sizeInBytes=4)
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
	.word	_Label_1664
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	12
	.word	4
	.word	_Label_1667
	.word	-12
	.word	4
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-32
	.word	4
	.word	0
_Label_1664:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1658\0"
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
_Label_2856:
	push	r0
	sub	r1,1,r1
	bne	_Label_2856
	mov	1282,r13		! source line 1282
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   _temp_1673 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1673 [entry ] into _temp_1674
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
!   _temp_1677 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1677 [entry ] into _temp_1678
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
!   Data Move: _temp_1676 = *_temp_1678  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1675 = _temp_1676 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1674 = _temp_1675  (sizeInBytes=4)
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
	.word	_Label_1679
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	-12
	.word	4
	.word	_Label_1683
	.word	-16
	.word	4
	.word	_Label_1684
	.word	-20
	.word	4
	.word	_Label_1685
	.word	-24
	.word	4
	.word	_Label_1686
	.word	-28
	.word	4
	.word	_Label_1687
	.word	-32
	.word	4
	.word	0
_Label_1679:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1673\0"
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
_Label_2857:
	push	r0
	sub	r1,1,r1
	bne	_Label_2857
	mov	1291,r13		! source line 1291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   _temp_1688 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1688 [entry ] into _temp_1689
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
!   _temp_1692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1692 [entry ] into _temp_1693
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
!   Data Move: _temp_1691 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1690 = _temp_1691 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1689 = _temp_1690  (sizeInBytes=4)
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
	.word	_Label_1694
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1696
	.word	12
	.word	4
	.word	_Label_1697
	.word	-12
	.word	4
	.word	_Label_1698
	.word	-16
	.word	4
	.word	_Label_1699
	.word	-20
	.word	4
	.word	_Label_1700
	.word	-24
	.word	4
	.word	_Label_1701
	.word	-28
	.word	4
	.word	_Label_1702
	.word	-32
	.word	4
	.word	0
_Label_1694:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1695:
	.ascii	"Pself\0"
	.align
_Label_1696:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1688\0"
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
_Label_2858:
	push	r0
	sub	r1,1,r1
	bne	_Label_2858
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   _temp_1703 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1703 [entry ] into _temp_1704
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
!   _temp_1707 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1707 [entry ] into _temp_1708
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
!   Data Move: _temp_1706 = *_temp_1708  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1705 = _temp_1706 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1704 = _temp_1705  (sizeInBytes=4)
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
	.word	_Label_1709
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1710
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1711
	.word	12
	.word	4
	.word	_Label_1712
	.word	-12
	.word	4
	.word	_Label_1713
	.word	-16
	.word	4
	.word	_Label_1714
	.word	-20
	.word	4
	.word	_Label_1715
	.word	-24
	.word	4
	.word	_Label_1716
	.word	-28
	.word	4
	.word	_Label_1717
	.word	-32
	.word	4
	.word	0
_Label_1709:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1710:
	.ascii	"Pself\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1703\0"
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
_Label_2859:
	push	r0
	sub	r1,1,r1
	bne	_Label_2859
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0AS",r10
!   _temp_1718 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1718 [entry ] into _temp_1719
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
!   _temp_1722 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1722 [entry ] into _temp_1723
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
!   Data Move: _temp_1721 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1720 = _temp_1721 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1719 = _temp_1720  (sizeInBytes=4)
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
	.word	_Label_1724
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1726
	.word	12
	.word	4
	.word	_Label_1727
	.word	-12
	.word	4
	.word	_Label_1728
	.word	-16
	.word	4
	.word	_Label_1729
	.word	-20
	.word	4
	.word	_Label_1730
	.word	-24
	.word	4
	.word	_Label_1731
	.word	-28
	.word	4
	.word	_Label_1732
	.word	-32
	.word	4
	.word	0
_Label_1724:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1725:
	.ascii	"Pself\0"
	.align
_Label_1726:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1718\0"
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
_Label_2860:
	push	r0
	sub	r1,1,r1
	bne	_Label_2860
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0AS",r10
!   _temp_1733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1733 [entry ] into _temp_1734
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
!   _temp_1737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1737 [entry ] into _temp_1738
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
!   Data Move: _temp_1736 = *_temp_1738  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1735 = _temp_1736 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1734 = _temp_1735  (sizeInBytes=4)
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
	.word	_Label_1739
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1740
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1741
	.word	12
	.word	4
	.word	_Label_1742
	.word	-12
	.word	4
	.word	_Label_1743
	.word	-16
	.word	4
	.word	_Label_1744
	.word	-20
	.word	4
	.word	_Label_1745
	.word	-24
	.word	4
	.word	_Label_1746
	.word	-28
	.word	4
	.word	_Label_1747
	.word	-32
	.word	4
	.word	0
_Label_1739:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1740:
	.ascii	"Pself\0"
	.align
_Label_1741:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1733\0"
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
_Label_2861:
	push	r0
	sub	r1,1,r1
	bne	_Label_2861
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1749 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1749 [0 ] into _temp_1750
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
!   _temp_1748 = _temp_1750		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1751 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1748  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1751  sizeInBytes=4
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
	.word	_Label_1752
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1753
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1754
	.word	-12
	.word	4
	.word	_Label_1755
	.word	-16
	.word	4
	.word	_Label_1756
	.word	-20
	.word	4
	.word	_Label_1757
	.word	-24
	.word	4
	.word	0
_Label_1752:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1753:
	.ascii	"Pself\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1748\0"
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
_Label_2862:
	push	r0
	sub	r1,1,r1
	bne	_Label_2862
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1758
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1758
	jmp	_Label_1759
_Label_1758:
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
	jmp	_Label_1760
_Label_1759:
! ELSE...
	mov	1355,r13		! source line 1355
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1762		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1762
!	jmp	_Label_1761
_Label_1761:
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
_Label_1762:
! END IF...
_Label_1760:
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
_Label_1763:
!	jmp	_Label_1764
_Label_1764:
	mov	1362,r13		! source line 1362
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1767		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1767
!	jmp	_Label_1766
_Label_1766:
! THEN...
	mov	1364,r13		! source line 1364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1768 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1768  sizeInBytes=4
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
_Label_1767:
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1772) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1771  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1771 then goto _Label_1770 else goto _Label_1769
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1769
	jmp	_Label_1770
_Label_1769:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1773 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
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
_Label_1770:
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0AS",r10
	mov	1371,r13		! source line 1371
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1775) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1774  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1774 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0WH",r10
_Label_1776:
!   if offset >= 8192 then goto _Label_1778		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1778
!	jmp	_Label_1777
_Label_1777:
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
!   Data Move: _temp_1779 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1779  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_1781		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1781
!	jmp	_Label_1780
_Label_1780:
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
_Label_1781:
! END WHILE...
	jmp	_Label_1776
_Label_1778:
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
	jmp	_Label_1763
_Label_1765:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1782
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1784
	.word	12
	.word	4
	.word	_Label_1785
	.word	16
	.word	4
	.word	_Label_1786
	.word	20
	.word	4
	.word	_Label_1787
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_1793
	.word	-32
	.word	4
	.word	_Label_1794
	.word	-36
	.word	4
	.word	_Label_1795
	.word	-40
	.word	4
	.word	_Label_1796
	.word	-44
	.word	4
	.word	_Label_1797
	.word	-48
	.word	4
	.word	0
_Label_1782:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1783:
	.ascii	"Pself\0"
	.align
_Label_1784:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1785:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1786:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1787:
	.byte	'C'
	.ascii	"_temp_1779\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1792:
	.byte	'C'
	.ascii	"_temp_1771\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1794:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1795:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1796:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1797:
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
_Label_2863:
	push	r0
	sub	r1,1,r1
	bne	_Label_2863
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1798
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1798
	jmp	_Label_1799
_Label_1798:
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
	jmp	_Label_1800
_Label_1799:
! ELSE...
	mov	1405,r13		! source line 1405
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1802		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1802
!	jmp	_Label_1801
_Label_1801:
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
_Label_1802:
! END IF...
_Label_1800:
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
_Label_1803:
!	jmp	_Label_1804
_Label_1804:
	mov	1410,r13		! source line 1410
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1809		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1809
	jmp	_Label_1806
_Label_1809:
	mov	1412,r13		! source line 1412
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1811) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1810  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1810 then goto _Label_1808 else goto _Label_1806
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1806
	jmp	_Label_1808
_Label_1808:
	mov	1413,r13		! source line 1413
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1813) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1812  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1812 then goto _Label_1807 else goto _Label_1806
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1806
	jmp	_Label_1807
_Label_1806:
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
_Label_1807:
! ASSIGNMENT STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0AS",r10
	mov	1416,r13		! source line 1416
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1815) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1814  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1814 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0WH",r10
_Label_1816:
!   if offset >= 8192 then goto _Label_1818		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1818
!	jmp	_Label_1817
_Label_1817:
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
!   Data Move: _temp_1819 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1819  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_1821		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1821
!	jmp	_Label_1820
_Label_1820:
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
_Label_1821:
! END WHILE...
	jmp	_Label_1816
_Label_1818:
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
	jmp	_Label_1803
_Label_1805:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1822
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1824
	.word	12
	.word	4
	.word	_Label_1825
	.word	16
	.word	4
	.word	_Label_1826
	.word	20
	.word	4
	.word	_Label_1827
	.word	-9
	.word	1
	.word	_Label_1828
	.word	-16
	.word	4
	.word	_Label_1829
	.word	-20
	.word	4
	.word	_Label_1830
	.word	-24
	.word	4
	.word	_Label_1831
	.word	-10
	.word	1
	.word	_Label_1832
	.word	-28
	.word	4
	.word	_Label_1833
	.word	-11
	.word	1
	.word	_Label_1834
	.word	-32
	.word	4
	.word	_Label_1835
	.word	-36
	.word	4
	.word	_Label_1836
	.word	-40
	.word	4
	.word	_Label_1837
	.word	-44
	.word	4
	.word	0
_Label_1822:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1823:
	.ascii	"Pself\0"
	.align
_Label_1824:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1826:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1827:
	.byte	'C'
	.ascii	"_temp_1819\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1831:
	.byte	'C'
	.ascii	"_temp_1812\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1833:
	.byte	'C'
	.ascii	"_temp_1810\0"
	.align
_Label_1834:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1835:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1837:
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
_Label_2864:
	push	r0
	sub	r1,1,r1
	bne	_Label_2864
	mov	1434,r13		! source line 1434
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0IF",r10
	mov	1458,r13		! source line 1458
	mov	"\0\0SE",r10
!   _temp_1841 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1842) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1841  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1840  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1840 >= 4 then goto _Label_1839		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1839
!	jmp	_Label_1838
_Label_1838:
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
_Label_1839:
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1844		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1844
!	jmp	_Label_1843
_Label_1843:
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
_Label_1844:
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
!   _temp_1847 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1846 = _temp_1847 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1848 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1849) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1846  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1848  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_1845  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1845  (sizeInBytes=4)
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
	.word	_Label_1850
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1852
	.word	12
	.word	4
	.word	_Label_1853
	.word	16
	.word	4
	.word	_Label_1854
	.word	20
	.word	4
	.word	_Label_1855
	.word	-12
	.word	4
	.word	_Label_1856
	.word	-16
	.word	4
	.word	_Label_1857
	.word	-20
	.word	4
	.word	_Label_1858
	.word	-24
	.word	4
	.word	_Label_1859
	.word	-28
	.word	4
	.word	_Label_1860
	.word	-32
	.word	4
	.word	_Label_1861
	.word	-36
	.word	4
	.word	_Label_1862
	.word	-40
	.word	4
	.word	_Label_1863
	.word	-44
	.word	4
	.word	0
_Label_1850:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1851:
	.ascii	"Pself\0"
	.align
_Label_1852:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1853:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1863:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_1864
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_1864:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1865
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_1865:
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
_Label_2865:
	push	r0
	sub	r1,1,r1
	bne	_Label_2865
	mov	1807,r13		! source line 1807
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1866 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
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
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   _temp_1868 = &semUsedInSynchMethods
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
	mov	1817,r13		! source line 1817
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
	mov	1818,r13		! source line 1818
	mov	"\0\0SE",r10
!   _temp_1870 = &diskBusy
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
	mov	1818,r13		! source line 1818
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
	.word	_Label_1871
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1873
	.word	-12
	.word	4
	.word	_Label_1874
	.word	-16
	.word	4
	.word	_Label_1875
	.word	-20
	.word	4
	.word	_Label_1876
	.word	-24
	.word	4
	.word	_Label_1877
	.word	-28
	.word	4
	.word	0
_Label_1871:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1872:
	.ascii	"Pself\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1866\0"
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
_Label_2866:
	push	r0
	sub	r1,1,r1
	bne	_Label_2866
	mov	1823,r13		! source line 1823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0SE",r10
!   _temp_1878 = &diskBusy
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
	mov	1837,r13		! source line 1837
	mov	"\0\0WH",r10
_Label_1879:
!	jmp	_Label_1880
_Label_1880:
	mov	1837,r13		! source line 1837
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   _temp_1882 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1883) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_1882  sizeInBytes=4
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
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   _temp_1884 = &semUsedInSynchMethods
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
	mov	1844,r13		! source line 1844
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1893 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1887
	cmp	r1,2
	be	_Label_1888
	cmp	r1,3
	be	_Label_1889
	cmp	r1,4
	be	_Label_1890
	cmp	r1,5
	be	_Label_1891
	cmp	r1,6
	be	_Label_1892
	jmp	_Label_1885
! CASE 1...
_Label_1887:
! SEND STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0SE",r10
!   _temp_1894 = &diskBusy
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
	mov	1847,r13		! source line 1847
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1888:
! CALL STATEMENT...
!   _temp_1895 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1895  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1849,r13		! source line 1849
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1889:
! CALL STATEMENT...
!   _temp_1896 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1896  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1851,r13		! source line 1851
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1890:
! CALL STATEMENT...
!   _temp_1897 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1897  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1853,r13		! source line 1853
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1891:
! BREAK STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0BR",r10
	jmp	_Label_1886
! CASE 6...
_Label_1892:
! CALL STATEMENT...
!   _temp_1898 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1859,r13		! source line 1859
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1885:
! CALL STATEMENT...
!   _temp_1899 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1899  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1861,r13		! source line 1861
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1886:
! END WHILE...
	jmp	_Label_1879
_Label_1881:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_1900
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	12
	.word	4
	.word	_Label_1903
	.word	16
	.word	4
	.word	_Label_1904
	.word	20
	.word	4
	.word	_Label_1905
	.word	-12
	.word	4
	.word	_Label_1906
	.word	-16
	.word	4
	.word	_Label_1907
	.word	-20
	.word	4
	.word	_Label_1908
	.word	-24
	.word	4
	.word	_Label_1909
	.word	-28
	.word	4
	.word	_Label_1910
	.word	-32
	.word	4
	.word	_Label_1911
	.word	-36
	.word	4
	.word	_Label_1912
	.word	-40
	.word	4
	.word	_Label_1913
	.word	-44
	.word	4
	.word	_Label_1914
	.word	-48
	.word	4
	.word	_Label_1915
	.word	-52
	.word	4
	.word	0
_Label_1900:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1903:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1904:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1878\0"
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
	mov	1870,r13		! source line 1870
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1888,r13		! source line 1888
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
	mov	1889,r13		! source line 1889
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
	mov	1890,r13		! source line 1890
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
	mov	1891,r13		! source line 1891
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
	mov	1891,r13		! source line 1891
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
	.word	_Label_1916
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1918
	.word	12
	.word	4
	.word	_Label_1919
	.word	16
	.word	4
	.word	_Label_1920
	.word	20
	.word	4
	.word	_Label_1921
	.word	24
	.word	4
	.word	0
_Label_1916:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_1917:
	.ascii	"Pself\0"
	.align
_Label_1918:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1919:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1920:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1921:
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
_Label_2867:
	push	r0
	sub	r1,1,r1
	bne	_Label_2867
	mov	1896,r13		! source line 1896
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0SE",r10
!   _temp_1922 = &diskBusy
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
	mov	1909,r13		! source line 1909
	mov	"\0\0WH",r10
_Label_1923:
!	jmp	_Label_1924
_Label_1924:
	mov	1909,r13		! source line 1909
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0SE",r10
!   _temp_1926 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1927) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_1926  sizeInBytes=4
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
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_1928 = &semUsedInSynchMethods
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
	mov	1915,r13		! source line 1915
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1937 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_1931
	cmp	r1,2
	be	_Label_1932
	cmp	r1,3
	be	_Label_1933
	cmp	r1,4
	be	_Label_1934
	cmp	r1,5
	be	_Label_1935
	cmp	r1,6
	be	_Label_1936
	jmp	_Label_1929
! CASE 1...
_Label_1931:
! SEND STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_1938 = &diskBusy
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
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_1932:
! CALL STATEMENT...
!   _temp_1939 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1939  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1920,r13		! source line 1920
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_1933:
! CALL STATEMENT...
!   _temp_1940 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1940  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1922,r13		! source line 1922
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_1934:
! CALL STATEMENT...
!   _temp_1941 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1941  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1924,r13		! source line 1924
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_1935:
! BREAK STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0BR",r10
	jmp	_Label_1930
! CASE 6...
_Label_1936:
! CALL STATEMENT...
!   _temp_1942 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1942  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1930,r13		! source line 1930
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_1929:
! CALL STATEMENT...
!   _temp_1943 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1932,r13		! source line 1932
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1930:
! END WHILE...
	jmp	_Label_1923
_Label_1925:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_1944
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1945
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1946
	.word	12
	.word	4
	.word	_Label_1947
	.word	16
	.word	4
	.word	_Label_1948
	.word	20
	.word	4
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
	.word	_Label_1953
	.word	-28
	.word	4
	.word	_Label_1954
	.word	-32
	.word	4
	.word	_Label_1955
	.word	-36
	.word	4
	.word	_Label_1956
	.word	-40
	.word	4
	.word	_Label_1957
	.word	-44
	.word	4
	.word	_Label_1958
	.word	-48
	.word	4
	.word	_Label_1959
	.word	-52
	.word	4
	.word	0
_Label_1944:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_1945:
	.ascii	"Pself\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1948:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1922\0"
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
	mov	1941,r13		! source line 1941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
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
	mov	1959,r13		! source line 1959
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
	mov	1960,r13		! source line 1960
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
	mov	1961,r13		! source line 1961
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
	mov	1961,r13		! source line 1961
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
	.word	_Label_1960
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_1961
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1962
	.word	12
	.word	4
	.word	_Label_1963
	.word	16
	.word	4
	.word	_Label_1964
	.word	20
	.word	4
	.word	_Label_1965
	.word	24
	.word	4
	.word	0
_Label_1960:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_1961:
	.ascii	"Pself\0"
	.align
_Label_1962:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_1963:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_1964:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_1965:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_1966
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
_Label_1966:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1967
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_1967:
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
_Label_2868:
	push	r0
	sub	r1,1,r1
	bne	_Label_2868
	mov	1972,r13		! source line 1972
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1968 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_1968  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1980,r13		! source line 1980
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
	mov	1981,r13		! source line 1981
	mov	"\0\0SE",r10
!   _temp_1970 = &fileManagerLock
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
	mov	1984,r13		! source line 1984
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
	mov	1985,r13		! source line 1985
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
	mov	1986,r13		! source line 1986
	mov	"\0\0SE",r10
!   _temp_1973 = &anFCBBecameFree
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
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   _temp_1974 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_1976 = &_temp_1975
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_1976 = _temp_1976 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1978 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_2869:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2869
!   _temp_1978 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_1980:
!   Data Move: *_temp_1976 = _temp_1978  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_2870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2870
!   _temp_1976 = _temp_1976 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_1977 = _temp_1977 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_1977) then goto _Label_1980
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_1980
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_1981 = &_temp_1975
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2871
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2871:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1974 = *_temp_1981  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_2872:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2872
! FOR STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1986 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1987 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1986  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_1982:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1987 then goto _Label_1985		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1985
_Label_1983:
	mov	1989,r13		! source line 1989
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0AS",r10
!   _temp_1988 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_1988 [i ] into _temp_1989
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
!   _temp_1990 = _temp_1989 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_1990 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0SE",r10
!   _temp_1991 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_1991 [i ] into _temp_1992
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
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   _temp_1994 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_1994 [i ] into _temp_1995
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
!   _temp_1993 = _temp_1995		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_1996 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_1993  sizeInBytes=4
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
_Label_1984:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_1982
! END FOR
_Label_1985:
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
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
	mov	1997,r13		! source line 1997
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
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_1999 = &anOpenFileBecameFree
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
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
!   _temp_2000 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2002 = &_temp_2001
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2002 = _temp_2002 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2004 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_2873:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2873
!   _temp_2004 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2006:
!   Data Move: *_temp_2002 = _temp_2004  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_2874:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2874
!   _temp_2002 = _temp_2002 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2003 = _temp_2003 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2003) then goto _Label_2006
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2006
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2007 = &_temp_2001
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2875
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2875:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2000 = *_temp_2007  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_2876:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2876
! FOR STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2012 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2013 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2012  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2008:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2013 then goto _Label_2011		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2011
_Label_2009:
	mov	2001,r13		! source line 2001
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   _temp_2014 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2014 [i ] into _temp_2015
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
!   _temp_2016 = _temp_2015 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2016 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0SE",r10
!   _temp_2018 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2018 [i ] into _temp_2019
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
!   _temp_2017 = _temp_2019		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2020 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2017  sizeInBytes=4
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
_Label_2010:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2008
! END FOR
_Label_2011:
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_2877:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2877
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   _temp_2022 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2023 = _temp_2022 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2023 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
	mov	2013,r13		! source line 2013
	mov	"\0\0SE",r10
!   _temp_2024 = &_P_Kernel_frameManager
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
	mov	2014,r13		! source line 2014
	mov	"\0\0SE",r10
!   _temp_2025 = &_P_Kernel_diskDriver
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
	mov	2014,r13		! source line 2014
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
	.word	_Label_2026
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2028
	.word	-12
	.word	4
	.word	_Label_2029
	.word	-16
	.word	4
	.word	_Label_2030
	.word	-20
	.word	4
	.word	_Label_2031
	.word	-24
	.word	4
	.word	_Label_2032
	.word	-28
	.word	4
	.word	_Label_2033
	.word	-32
	.word	4
	.word	_Label_2034
	.word	-36
	.word	4
	.word	_Label_2035
	.word	-40
	.word	4
	.word	_Label_2036
	.word	-44
	.word	4
	.word	_Label_2037
	.word	-48
	.word	4
	.word	_Label_2038
	.word	-52
	.word	4
	.word	_Label_2039
	.word	-56
	.word	4
	.word	_Label_2040
	.word	-60
	.word	4
	.word	_Label_2041
	.word	-64
	.word	4
	.word	_Label_2042
	.word	-68
	.word	4
	.word	_Label_2043
	.word	-72
	.word	4
	.word	_Label_2044
	.word	-100
	.word	28
	.word	_Label_2045
	.word	-104
	.word	4
	.word	_Label_2046
	.word	-108
	.word	4
	.word	_Label_2047
	.word	-392
	.word	284
	.word	_Label_2048
	.word	-396
	.word	4
	.word	_Label_2049
	.word	-400
	.word	4
	.word	_Label_2050
	.word	-404
	.word	4
	.word	_Label_2051
	.word	-408
	.word	4
	.word	_Label_2052
	.word	-412
	.word	4
	.word	_Label_2053
	.word	-416
	.word	4
	.word	_Label_2054
	.word	-420
	.word	4
	.word	_Label_2055
	.word	-424
	.word	4
	.word	_Label_2056
	.word	-428
	.word	4
	.word	_Label_2057
	.word	-432
	.word	4
	.word	_Label_2058
	.word	-436
	.word	4
	.word	_Label_2059
	.word	-440
	.word	4
	.word	_Label_2060
	.word	-444
	.word	4
	.word	_Label_2061
	.word	-448
	.word	4
	.word	_Label_2062
	.word	-452
	.word	4
	.word	_Label_2063
	.word	-456
	.word	4
	.word	_Label_2064
	.word	-460
	.word	4
	.word	_Label_2065
	.word	-500
	.word	40
	.word	_Label_2066
	.word	-504
	.word	4
	.word	_Label_2067
	.word	-508
	.word	4
	.word	_Label_2068
	.word	-912
	.word	404
	.word	_Label_2069
	.word	-916
	.word	4
	.word	_Label_2070
	.word	-920
	.word	4
	.word	_Label_2071
	.word	-924
	.word	4
	.word	_Label_2072
	.word	-928
	.word	4
	.word	_Label_2073
	.word	-932
	.word	4
	.word	_Label_2074
	.word	-936
	.word	4
	.word	_Label_2075
	.word	-940
	.word	4
	.word	_Label_2076
	.word	-944
	.word	4
	.word	0
_Label_2026:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2027:
	.ascii	"Pself\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2076:
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
_Label_2878:
	push	r0
	sub	r1,1,r1
	bne	_Label_2878
	mov	2021,r13		! source line 2021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   _temp_2077 = &fileManagerLock
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
!   _temp_2078 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2083 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2084 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2083  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2079:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2084 then goto _Label_2082		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2082
_Label_2080:
	mov	2025,r13		! source line 2025
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2085 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2085  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2026,r13		! source line 2026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2027,r13		! source line 2027
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2086 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2086  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
!   _temp_2087 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2087 [i ] into _temp_2088
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
_Label_2081:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2079
! END FOR
_Label_2082:
! CALL STATEMENT...
!   _temp_2089 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2089  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_2090 = _function_181_printFCB
	set	_function_181_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2091 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2090  sizeInBytes=4
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
	mov	2033,r13		! source line 2033
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2092 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2097 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2098 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2097  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2093:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2098 then goto _Label_2096		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2096
_Label_2094:
	mov	2035,r13		! source line 2035
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2099 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2100 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2102 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2102 [i ] into _temp_2103
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
!   _temp_2101 = _temp_2103		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2104 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   _temp_2105 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2105 [i ] into _temp_2106
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
_Label_2095:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2093
! END FOR
_Label_2096:
! CALL STATEMENT...
!   _temp_2107 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0SE",r10
!   _temp_2108 = _function_180_printOpen
	set	_function_180_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2109 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2108  sizeInBytes=4
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
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   _temp_2110 = &fileManagerLock
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
	mov	2045,r13		! source line 2045
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
	.word	_Label_2111
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2113
	.word	-12
	.word	4
	.word	_Label_2114
	.word	-16
	.word	4
	.word	_Label_2115
	.word	-20
	.word	4
	.word	_Label_2116
	.word	-24
	.word	4
	.word	_Label_2117
	.word	-28
	.word	4
	.word	_Label_2118
	.word	-32
	.word	4
	.word	_Label_2119
	.word	-36
	.word	4
	.word	_Label_2120
	.word	-40
	.word	4
	.word	_Label_2121
	.word	-44
	.word	4
	.word	_Label_2122
	.word	-48
	.word	4
	.word	_Label_2123
	.word	-52
	.word	4
	.word	_Label_2124
	.word	-56
	.word	4
	.word	_Label_2125
	.word	-60
	.word	4
	.word	_Label_2126
	.word	-64
	.word	4
	.word	_Label_2127
	.word	-68
	.word	4
	.word	_Label_2128
	.word	-72
	.word	4
	.word	_Label_2129
	.word	-76
	.word	4
	.word	_Label_2130
	.word	-80
	.word	4
	.word	_Label_2131
	.word	-84
	.word	4
	.word	_Label_2132
	.word	-88
	.word	4
	.word	_Label_2133
	.word	-92
	.word	4
	.word	_Label_2134
	.word	-96
	.word	4
	.word	_Label_2135
	.word	-100
	.word	4
	.word	_Label_2136
	.word	-104
	.word	4
	.word	_Label_2137
	.word	-108
	.word	4
	.word	_Label_2138
	.word	-112
	.word	4
	.word	_Label_2139
	.word	-116
	.word	4
	.word	0
_Label_2111:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2112:
	.ascii	"Pself\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2139:
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
_Label_2879:
	push	r0
	sub	r1,1,r1
	bne	_Label_2879
	mov	2050,r13		! source line 2050
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
	mov	2066,r13		! source line 2066
	mov	"\0\0SE",r10
!   _temp_2140 = &_P_Kernel_fileManager
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
	mov	2067,r13		! source line 2067
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2141
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2141
	jmp	_Label_2142
_Label_2141:
! THEN...
	mov	2068,r13		! source line 2068
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2142:
! SEND STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   _temp_2143 = &fileManagerLock
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
	mov	2073,r13		! source line 2073
	mov	"\0\0WH",r10
_Label_2144:
	mov	2073,r13		! source line 2073
	mov	"\0\0SE",r10
!   _temp_2147 = &openFileFreeList
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
!   if result==true then goto _Label_2145 else goto _Label_2146
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2146
	jmp	_Label_2145
_Label_2145:
	mov	2073,r13		! source line 2073
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0SE",r10
!   _temp_2148 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2149 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2148  sizeInBytes=4
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
	jmp	_Label_2144
_Label_2146:
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   _temp_2150 = &openFileFreeList
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
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2151 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2151 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2152 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2152 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2153 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2153 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0SE",r10
!   _temp_2154 = &fileManagerLock
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
	mov	2086,r13		! source line 2086
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
	.word	_Label_2155
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2157
	.word	12
	.word	4
	.word	_Label_2158
	.word	-12
	.word	4
	.word	_Label_2159
	.word	-16
	.word	4
	.word	_Label_2160
	.word	-20
	.word	4
	.word	_Label_2161
	.word	-24
	.word	4
	.word	_Label_2162
	.word	-28
	.word	4
	.word	_Label_2163
	.word	-32
	.word	4
	.word	_Label_2164
	.word	-36
	.word	4
	.word	_Label_2165
	.word	-40
	.word	4
	.word	_Label_2166
	.word	-44
	.word	4
	.word	_Label_2167
	.word	-48
	.word	4
	.word	_Label_2168
	.word	-52
	.word	4
	.word	_Label_2169
	.word	-56
	.word	4
	.word	0
_Label_2155:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2156:
	.ascii	"Pself\0"
	.align
_Label_2157:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2168:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2169:
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
_Label_2880:
	push	r0
	sub	r1,1,r1
	bne	_Label_2880
	mov	2091,r13		! source line 2091
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
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
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2171		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2171
!	jmp	_Label_2170
_Label_2170:
! THEN...
	mov	2122,r13		! source line 2122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2172 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2172  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2122,r13		! source line 2122
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2171:
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
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
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2128,r13		! source line 2128
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
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0WH",r10
_Label_2173:
!   if numFiles <= 0 then goto _Label_2175		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2175
!	jmp	_Label_2174
_Label_2174:
	mov	2132,r13		! source line 2132
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2176 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2176  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2133,r13		! source line 2133
	mov	"\0\0CA",r10
	call	_function_182_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2177 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CA",r10
	call	_function_182_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2178 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2137,r13		! source line 2137
	mov	"\0\0CA",r10
	call	_function_182_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2182 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2182 then goto _Label_2180		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2180
!	jmp	_Label_2181
_Label_2181:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2184
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
!   _temp_2183 = _temp_2184		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2183  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2140,r13		! source line 2140
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2179 else goto _Label_2180
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2180
	jmp	_Label_2179
_Label_2179:
! THEN...
	mov	2141,r13		! source line 2141
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0BR",r10
	jmp	_Label_2175
! END IF...
_Label_2180:
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2173
_Label_2175:
! IF STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2186		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2186
!	jmp	_Label_2185
_Label_2185:
! THEN...
	mov	2149,r13		! source line 2149
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2186:
! SEND STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   _temp_2187 = &fileManagerLock
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
	mov	2154,r13		! source line 2154
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2192 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2193 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2192  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2188:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2193 then goto _Label_2191		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2191
_Label_2189:
	mov	2154,r13		! source line 2154
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   _temp_2194 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2194 [i ] into _temp_2195
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
!   fcb = _temp_2195		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2199 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2198 = *_temp_2199  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2198 != start then goto _Label_2197		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2197
!	jmp	_Label_2196
_Label_2196:
! THEN...
	mov	2157,r13		! source line 2157
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2200 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2203 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2202 = *_temp_2203  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2201 = _temp_2202 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2200 = _temp_2201  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0SE",r10
!   _temp_2204 = &fileManagerLock
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
	mov	2159,r13		! source line 2159
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2197:
!   Increment the FOR-LOOP index variable and jump back
_Label_2190:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2188
! END FOR
_Label_2191:
! WHILE STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0WH",r10
_Label_2205:
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   _temp_2208 = &fcbFreeList
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
!   if result==true then goto _Label_2206 else goto _Label_2207
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2207
	jmp	_Label_2206
_Label_2206:
	mov	2164,r13		! source line 2164
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0SE",r10
!   _temp_2209 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2210 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2209  sizeInBytes=4
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
	jmp	_Label_2205
_Label_2207:
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
	mov	2167,r13		! source line 2167
	mov	"\0\0SE",r10
!   _temp_2211 = &fcbFreeList
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
	mov	2170,r13		! source line 2170
	mov	"\0\0SE",r10
!   _temp_2212 = &fileManagerLock
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
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2213 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2213 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2214 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2214 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2215 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2215 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2220 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2219 = *_temp_2220  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2219 < 0 then goto _Label_2218		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2218
	jmp	_Label_2216
_Label_2218:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2221 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2221 ) then goto _Label_2217		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2217
!	jmp	_Label_2216
_Label_2216:
! THEN...
	mov	2177,r13		! source line 2177
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2222 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2222  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2177,r13		! source line 2177
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2217:
! RETURN STATEMENT...
	mov	2179,r13		! source line 2179
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
	.word	_Label_2223
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2225
	.word	12
	.word	4
	.word	_Label_2226
	.word	-12
	.word	4
	.word	_Label_2227
	.word	-16
	.word	4
	.word	_Label_2228
	.word	-20
	.word	4
	.word	_Label_2229
	.word	-24
	.word	4
	.word	_Label_2230
	.word	-28
	.word	4
	.word	_Label_2231
	.word	-32
	.word	4
	.word	_Label_2232
	.word	-36
	.word	4
	.word	_Label_2233
	.word	-40
	.word	4
	.word	_Label_2234
	.word	-44
	.word	4
	.word	_Label_2235
	.word	-48
	.word	4
	.word	_Label_2236
	.word	-52
	.word	4
	.word	_Label_2237
	.word	-56
	.word	4
	.word	_Label_2238
	.word	-60
	.word	4
	.word	_Label_2239
	.word	-64
	.word	4
	.word	_Label_2240
	.word	-68
	.word	4
	.word	_Label_2241
	.word	-72
	.word	4
	.word	_Label_2242
	.word	-76
	.word	4
	.word	_Label_2243
	.word	-80
	.word	4
	.word	_Label_2244
	.word	-84
	.word	4
	.word	_Label_2245
	.word	-88
	.word	4
	.word	_Label_2246
	.word	-92
	.word	4
	.word	_Label_2247
	.word	-96
	.word	4
	.word	_Label_2248
	.word	-100
	.word	4
	.word	_Label_2249
	.word	-104
	.word	4
	.word	_Label_2250
	.word	-108
	.word	4
	.word	_Label_2251
	.word	-112
	.word	4
	.word	_Label_2252
	.word	-116
	.word	4
	.word	_Label_2253
	.word	-120
	.word	4
	.word	_Label_2254
	.word	-124
	.word	4
	.word	_Label_2255
	.word	-128
	.word	4
	.word	_Label_2256
	.word	-132
	.word	4
	.word	_Label_2257
	.word	-136
	.word	4
	.word	_Label_2258
	.word	-140
	.word	4
	.word	_Label_2259
	.word	-144
	.word	4
	.word	_Label_2260
	.word	-148
	.word	4
	.word	_Label_2261
	.word	-152
	.word	4
	.word	_Label_2262
	.word	-156
	.word	4
	.word	_Label_2263
	.word	-160
	.word	4
	.word	0
_Label_2223:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2224:
	.ascii	"Pself\0"
	.align
_Label_2225:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2257:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2258:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2259:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2260:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2261:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2262:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2263:
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
_Label_2881:
	push	r0
	sub	r1,1,r1
	bne	_Label_2881
	mov	2192,r13		! source line 2192
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0IF",r10
!   _temp_2266 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2266 then goto _Label_2265		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2265
!	jmp	_Label_2264
_Label_2264:
! THEN...
	mov	2195,r13		! source line 2195
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2265:
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2267 = &fileManagerLock
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
	mov	2198,r13		! source line 2198
	mov	"\0\0SE",r10
!   _temp_2268 = &_P_Kernel_fileManager
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
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2269 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2269  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2270 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2273 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2272 = *_temp_2273  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2271 = _temp_2272 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2270 = _temp_2271  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2277 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2276 = *_temp_2277  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2276 > 0 then goto _Label_2275		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2275
!	jmp	_Label_2274
_Label_2274:
! THEN...
	mov	2202,r13		! source line 2202
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0SE",r10
!   _temp_2278 = &openFileFreeList
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
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2279 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2280 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2279  sizeInBytes=4
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
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2281 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2284 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2283 = *_temp_2284  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2282 = _temp_2283 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2281 = _temp_2282  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2288 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2287 = *_temp_2288  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2287 > 0 then goto _Label_2286		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2286
!	jmp	_Label_2285
_Label_2285:
! THEN...
	mov	2206,r13		! source line 2206
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0SE",r10
!   _temp_2289 = &fcbFreeList
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
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   _temp_2290 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2291 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2290  sizeInBytes=4
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
_Label_2286:
! END IF...
_Label_2275:
! SEND STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_2292 = &fileManagerLock
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
	mov	2210,r13		! source line 2210
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
	.word	_Label_2293
	.word	8		! total size of parameters
	.word	104		! frame size = 104
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
	.word	_Label_2302
	.word	-36
	.word	4
	.word	_Label_2303
	.word	-40
	.word	4
	.word	_Label_2304
	.word	-44
	.word	4
	.word	_Label_2305
	.word	-48
	.word	4
	.word	_Label_2306
	.word	-52
	.word	4
	.word	_Label_2307
	.word	-56
	.word	4
	.word	_Label_2308
	.word	-60
	.word	4
	.word	_Label_2309
	.word	-64
	.word	4
	.word	_Label_2310
	.word	-68
	.word	4
	.word	_Label_2311
	.word	-72
	.word	4
	.word	_Label_2312
	.word	-76
	.word	4
	.word	_Label_2313
	.word	-80
	.word	4
	.word	_Label_2314
	.word	-84
	.word	4
	.word	_Label_2315
	.word	-88
	.word	4
	.word	_Label_2316
	.word	-92
	.word	4
	.word	_Label_2317
	.word	-96
	.word	4
	.word	_Label_2318
	.word	-100
	.word	4
	.word	_Label_2319
	.word	-104
	.word	4
	.word	0
_Label_2293:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2294:
	.ascii	"Pself\0"
	.align
_Label_2295:
	.byte	'P'
	.ascii	"open\0"
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
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2319:
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
_Label_2882:
	push	r0
	sub	r1,1,r1
	bne	_Label_2882
	mov	2215,r13		! source line 2215
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2323 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2322 = *_temp_2323  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2322) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2324 = _temp_2322 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2324 ) then goto _Label_2321		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2321
!	jmp	_Label_2320
_Label_2320:
! THEN...
	mov	2221,r13		! source line 2221
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2329 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2328 = *_temp_2329  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2328) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2330 = _temp_2328 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2327 = *_temp_2330  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2327 >= 0 then goto _Label_2326		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2326
!	jmp	_Label_2325
_Label_2325:
! THEN...
	mov	2222,r13		! source line 2222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2331 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2222,r13		! source line 2222
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2326:
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2333 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2332 = *_temp_2333  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2332) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2334 = _temp_2332 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2334 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2338 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2337 = *_temp_2338  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2337) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2339 = _temp_2337 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2336 = *_temp_2339  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2342 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2341 = *_temp_2342  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2341) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2343 = _temp_2341 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2340 = *_temp_2343  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2335 = _temp_2336 + _temp_2340		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2346 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2345 = *_temp_2346  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2345) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2347 = _temp_2345 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2344 = *_temp_2347  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2348 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2335  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2344  sizeInBytes=4
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
_Label_2321:
! RETURN STATEMENT...
	mov	2220,r13		! source line 2220
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
	.word	_Label_2349
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2350
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2351
	.word	12
	.word	4
	.word	_Label_2352
	.word	-12
	.word	4
	.word	_Label_2353
	.word	-16
	.word	4
	.word	_Label_2354
	.word	-20
	.word	4
	.word	_Label_2355
	.word	-24
	.word	4
	.word	_Label_2356
	.word	-28
	.word	4
	.word	_Label_2357
	.word	-32
	.word	4
	.word	_Label_2358
	.word	-36
	.word	4
	.word	_Label_2359
	.word	-40
	.word	4
	.word	_Label_2360
	.word	-44
	.word	4
	.word	_Label_2361
	.word	-48
	.word	4
	.word	_Label_2362
	.word	-52
	.word	4
	.word	_Label_2363
	.word	-56
	.word	4
	.word	_Label_2364
	.word	-60
	.word	4
	.word	_Label_2365
	.word	-64
	.word	4
	.word	_Label_2366
	.word	-68
	.word	4
	.word	_Label_2367
	.word	-72
	.word	4
	.word	_Label_2368
	.word	-76
	.word	4
	.word	_Label_2369
	.word	-80
	.word	4
	.word	_Label_2370
	.word	-84
	.word	4
	.word	_Label_2371
	.word	-88
	.word	4
	.word	_Label_2372
	.word	-92
	.word	4
	.word	_Label_2373
	.word	-96
	.word	4
	.word	_Label_2374
	.word	-100
	.word	4
	.word	_Label_2375
	.word	-104
	.word	4
	.word	_Label_2376
	.word	-108
	.word	4
	.word	0
_Label_2349:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2350:
	.ascii	"Pself\0"
	.align
_Label_2351:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2322\0"
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
_Label_2883:
	push	r0
	sub	r1,1,r1
	bne	_Label_2883
	mov	2234,r13		! source line 2234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2377 = &fileManagerLock
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
	mov	2250,r13		! source line 2250
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2383		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2383
!   _temp_2382 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2384
_Label_2383:
!   _temp_2382 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2384:
!   if _temp_2382 then goto _Label_2381 else goto _Label_2378
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2378
	jmp	_Label_2381
_Label_2381:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2387 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2386 = *_temp_2387  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2386 == 0 then goto _Label_2388		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2388
!   _temp_2385 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2389
_Label_2388:
!   _temp_2385 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2389:
!   if _temp_2385 then goto _Label_2380 else goto _Label_2378
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2378
	jmp	_Label_2380
_Label_2380:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2392 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2391 = *_temp_2392  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2391) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2393 = _temp_2391 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2390 = *_temp_2393  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2390 >= 0 then goto _Label_2379		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2379
!	jmp	_Label_2378
_Label_2378:
! THEN...
	mov	2251,r13		! source line 2251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2394 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2394  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2251,r13		! source line 2251
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2379:
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2395  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0WH",r10
_Label_2396:
!   if numBytes <= 0 then goto _Label_2398		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2398
!	jmp	_Label_2397
_Label_2397:
	mov	2254,r13		! source line 2254
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
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
	mov	2264,r13		! source line 2264
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
	mov	2268,r13		! source line 2268
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2402 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2401 = *_temp_2402  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2401 == sector then goto _Label_2400		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2400
!	jmp	_Label_2399
_Label_2399:
! THEN...
	mov	2269,r13		! source line 2269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2403) then goto _runtimeErrorNullPointer
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
	mov	2271,r13		! source line 2271
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2406 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2405 = *_temp_2406  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2404 = sector + _temp_2405		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2408 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2407 = *_temp_2408  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2409 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2404  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2407  sizeInBytes=4
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
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2410 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2410 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2411 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2411 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2400:
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2413 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2412 = *_temp_2413  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2412 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   _temp_2414 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2414  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2278,r13		! source line 2278
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
	mov	2282,r13		! source line 2282
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2396
_Label_2398:
! SEND STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_2415 = &fileManagerLock
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
	mov	2293,r13		! source line 2293
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
	.word	_Label_2416
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2417
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2418
	.word	12
	.word	4
	.word	_Label_2419
	.word	16
	.word	4
	.word	_Label_2420
	.word	20
	.word	4
	.word	_Label_2421
	.word	24
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
	.word	-9
	.word	1
	.word	_Label_2446
	.word	-10
	.word	1
	.word	_Label_2447
	.word	-108
	.word	4
	.word	_Label_2448
	.word	-112
	.word	4
	.word	_Label_2449
	.word	-116
	.word	4
	.word	_Label_2450
	.word	-120
	.word	4
	.word	_Label_2451
	.word	-124
	.word	4
	.word	_Label_2452
	.word	-128
	.word	4
	.word	0
_Label_2416:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2417:
	.ascii	"Pself\0"
	.align
_Label_2418:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2419:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2420:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2421:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2401\0"
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
	.ascii	"_temp_2392\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2445:
	.byte	'C'
	.ascii	"_temp_2385\0"
	.align
_Label_2446:
	.byte	'C'
	.ascii	"_temp_2382\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2448:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2449:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2450:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2451:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2452:
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
_Label_2884:
	push	r0
	sub	r1,1,r1
	bne	_Label_2884
	mov	2298,r13		! source line 2298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0SE",r10
!   _temp_2453 = &fileManagerLock
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
	mov	2315,r13		! source line 2315
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2459		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2459
!   _temp_2458 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2460
_Label_2459:
!   _temp_2458 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2460:
!   if _temp_2458 then goto _Label_2457 else goto _Label_2454
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2454
	jmp	_Label_2457
_Label_2457:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2463 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2462 = *_temp_2463  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2462 == 0 then goto _Label_2464		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2464
!   _temp_2461 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2465
_Label_2464:
!   _temp_2461 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2465:
!   if _temp_2461 then goto _Label_2456 else goto _Label_2454
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2454
	jmp	_Label_2456
_Label_2456:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2468 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2467 = *_temp_2468  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2467) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2469 = _temp_2467 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2466 = *_temp_2469  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2466 >= 0 then goto _Label_2455		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2455
!	jmp	_Label_2454
_Label_2454:
! THEN...
	mov	2316,r13		! source line 2316
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2470 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2316,r13		! source line 2316
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2455:
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2471 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2471  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0WH",r10
_Label_2472:
!   if numBytes <= 0 then goto _Label_2474		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2474
!	jmp	_Label_2473
_Label_2473:
	mov	2319,r13		! source line 2319
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2328,r13		! source line 2328
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
	mov	2329,r13		! source line 2329
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
	mov	2333,r13		! source line 2333
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2478 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2477 = *_temp_2478  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2477 == sector then goto _Label_2476		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2476
!	jmp	_Label_2475
_Label_2475:
! THEN...
	mov	2335,r13		! source line 2335
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2479) then goto _runtimeErrorNullPointer
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
_Label_2476:
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2481 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2480 = *_temp_2481  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2480 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   _temp_2482 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2482  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2338,r13		! source line 2338
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2486 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2485 = *_temp_2486  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2485 != sector then goto _Label_2484		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2484
!	jmp	_Label_2483
_Label_2483:
	jmp	_Label_2487
_Label_2484:
! ELSE...
	mov	2341,r13		! source line 2341
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2490
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2490
	jmp	_Label_2489
_Label_2490:
!   if bytesToMove != 8192 then goto _Label_2489		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2489
!	jmp	_Label_2488
_Label_2488:
	jmp	_Label_2491
_Label_2489:
! ELSE...
	mov	2345,r13		! source line 2345
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2494 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2493 = *_temp_2494  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2492 = sector + _temp_2493		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2496 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2495 = *_temp_2496  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2497 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2492  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2495  sizeInBytes=4
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
_Label_2491:
! END IF...
_Label_2487:
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2498 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2499 = 1  (sizeInBytes=1)
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
	mov	2354,r13		! source line 2354
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2472
_Label_2474:
! SEND STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0SE",r10
!   _temp_2500 = &fileManagerLock
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
	mov	2366,r13		! source line 2366
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
	.word	_Label_2501
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2503
	.word	12
	.word	4
	.word	_Label_2504
	.word	16
	.word	4
	.word	_Label_2505
	.word	20
	.word	4
	.word	_Label_2506
	.word	24
	.word	4
	.word	_Label_2507
	.word	-16
	.word	4
	.word	_Label_2508
	.word	-20
	.word	4
	.word	_Label_2509
	.word	-24
	.word	4
	.word	_Label_2510
	.word	-28
	.word	4
	.word	_Label_2511
	.word	-32
	.word	4
	.word	_Label_2512
	.word	-36
	.word	4
	.word	_Label_2513
	.word	-40
	.word	4
	.word	_Label_2514
	.word	-44
	.word	4
	.word	_Label_2515
	.word	-48
	.word	4
	.word	_Label_2516
	.word	-52
	.word	4
	.word	_Label_2517
	.word	-56
	.word	4
	.word	_Label_2518
	.word	-60
	.word	4
	.word	_Label_2519
	.word	-64
	.word	4
	.word	_Label_2520
	.word	-68
	.word	4
	.word	_Label_2521
	.word	-72
	.word	4
	.word	_Label_2522
	.word	-76
	.word	4
	.word	_Label_2523
	.word	-80
	.word	4
	.word	_Label_2524
	.word	-84
	.word	4
	.word	_Label_2525
	.word	-88
	.word	4
	.word	_Label_2526
	.word	-92
	.word	4
	.word	_Label_2527
	.word	-96
	.word	4
	.word	_Label_2528
	.word	-100
	.word	4
	.word	_Label_2529
	.word	-104
	.word	4
	.word	_Label_2530
	.word	-108
	.word	4
	.word	_Label_2531
	.word	-112
	.word	4
	.word	_Label_2532
	.word	-9
	.word	1
	.word	_Label_2533
	.word	-10
	.word	1
	.word	_Label_2534
	.word	-116
	.word	4
	.word	_Label_2535
	.word	-120
	.word	4
	.word	_Label_2536
	.word	-124
	.word	4
	.word	_Label_2537
	.word	-128
	.word	4
	.word	_Label_2538
	.word	-132
	.word	4
	.word	_Label_2539
	.word	-136
	.word	4
	.word	0
_Label_2501:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2502:
	.ascii	"Pself\0"
	.align
_Label_2503:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2504:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2505:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2532:
	.byte	'C'
	.ascii	"_temp_2461\0"
	.align
_Label_2533:
	.byte	'C'
	.ascii	"_temp_2458\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2536:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2537:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2538:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2539:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2540
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2540:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2541
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2541:
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
_Label_2885:
	push	r0
	sub	r1,1,r1
	bne	_Label_2885
	mov	2402,r13		! source line 2402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   _temp_2542 = &_P_Kernel_frameManager
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
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2407,r13		! source line 2407
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
	.word	_Label_2543
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	-12
	.word	4
	.word	0
_Label_2543:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2542\0"
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
_Label_2886:
	push	r0
	sub	r1,1,r1
	bne	_Label_2886
	mov	2412,r13		! source line 2412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2546 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2546  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2414,r13		! source line 2414
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2547 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2547  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2415,r13		! source line 2415
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2548 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2548  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2417,r13		! source line 2417
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2418,r13		! source line 2418
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2549 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2419,r13		! source line 2419
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2420,r13		! source line 2420
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2550 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2421,r13		! source line 2421
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2422,r13		! source line 2422
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2551 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2423,r13		! source line 2423
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2424,r13		! source line 2424
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2425,r13		! source line 2425
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2425,r13		! source line 2425
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
	.word	_Label_2552
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2554
	.word	-12
	.word	4
	.word	_Label_2555
	.word	-16
	.word	4
	.word	_Label_2556
	.word	-20
	.word	4
	.word	_Label_2557
	.word	-24
	.word	4
	.word	_Label_2558
	.word	-28
	.word	4
	.word	_Label_2559
	.word	-32
	.word	4
	.word	0
_Label_2552:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2553:
	.ascii	"Pself\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2560
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2560:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2561
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2561:
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
_Label_2887:
	push	r0
	sub	r1,1,r1
	bne	_Label_2887
	mov	2436,r13		! source line 2436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2562 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2437,r13		! source line 2437
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2438,r13		! source line 2438
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2563 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2563  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2439,r13		! source line 2439
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2565		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2565
!	jmp	_Label_2564
_Label_2564:
! THEN...
	mov	2441,r13		! source line 2441
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
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
	jmp	_Label_2566
_Label_2565:
! ELSE...
	mov	2443,r13		! source line 2443
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2567 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2567  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2443,r13		! source line 2443
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2566:
! RETURN STATEMENT...
	mov	2440,r13		! source line 2440
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
	.word	_Label_2568
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2570
	.word	-12
	.word	4
	.word	_Label_2571
	.word	-16
	.word	4
	.word	_Label_2572
	.word	-20
	.word	4
	.word	0
_Label_2568:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2569:
	.ascii	"Pself\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2562\0"
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
_Label_2888:
	push	r0
	sub	r1,1,r1
	bne	_Label_2888
	mov	2449,r13		! source line 2449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0SE",r10
!   _temp_2573 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2574 = _temp_2573 + 4
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
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
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
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_2575 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2576 = _temp_2575 + 4
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
	mov	2463,r13		! source line 2463
	mov	"\0\0RE",r10
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2579 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2578  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2577  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2577  (sizeInBytes=1)
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
	.word	_Label_2580
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2581
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2582
	.word	12
	.word	4
	.word	_Label_2583
	.word	16
	.word	4
	.word	_Label_2584
	.word	-16
	.word	4
	.word	_Label_2585
	.word	-20
	.word	4
	.word	_Label_2586
	.word	-9
	.word	1
	.word	_Label_2587
	.word	-24
	.word	4
	.word	_Label_2588
	.word	-28
	.word	4
	.word	_Label_2589
	.word	-32
	.word	4
	.word	_Label_2590
	.word	-36
	.word	4
	.word	_Label_2591
	.word	-40
	.word	4
	.word	0
_Label_2580:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2581:
	.ascii	"Pself\0"
	.align
_Label_2582:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2583:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2586:
	.byte	'C'
	.ascii	"_temp_2577\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2591:
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
_Label_2889:
	push	r0
	sub	r1,1,r1
	bne	_Label_2889
	mov	2468,r13		! source line 2468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0IF",r10
	mov	2473,r13		! source line 2473
	mov	"\0\0SE",r10
!   _temp_2595 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2596) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2595  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2594  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2594 then goto _Label_2593 else goto _Label_2592
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2592
	jmp	_Label_2593
_Label_2592:
! THEN...
	mov	2474,r13		! source line 2474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2597 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2474,r13		! source line 2474
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2593:
! RETURN STATEMENT...
	mov	2476,r13		! source line 2476
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
	.word	_Label_2598
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2600
	.word	-16
	.word	4
	.word	_Label_2601
	.word	-20
	.word	4
	.word	_Label_2602
	.word	-24
	.word	4
	.word	_Label_2603
	.word	-9
	.word	1
	.word	_Label_2604
	.word	-28
	.word	4
	.word	0
_Label_2598:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2599:
	.ascii	"Pself\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2603:
	.byte	'C'
	.ascii	"_temp_2594\0"
	.align
_Label_2604:
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
_Label_2890:
	push	r0
	sub	r1,1,r1
	bne	_Label_2890
	mov	2481,r13		! source line 2481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2607 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2607) then goto _Label_2606
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2606
!	jmp	_Label_2605
_Label_2605:
! THEN...
	mov	2508,r13		! source line 2508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2609 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2609  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2508,r13		! source line 2508
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2606:
! IF STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0IF",r10
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2613) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2612  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2612 == 1112300152 then goto _Label_2611		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2611
!	jmp	_Label_2610
_Label_2610:
! THEN...
	mov	2513,r13		! source line 2513
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2614 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2614  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2611:
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2615) then goto _runtimeErrorNullPointer
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
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
	mov	2519,r13		! source line 2519
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2616) then goto _runtimeErrorNullPointer
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
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2617) then goto _runtimeErrorNullPointer
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
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
	mov	2521,r13		! source line 2521
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2618) then goto _runtimeErrorNullPointer
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
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2619) then goto _runtimeErrorNullPointer
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
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2620) then goto _runtimeErrorNullPointer
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
	mov	2526,r13		! source line 2526
	mov	"\0\0IF",r10
!   _temp_2623 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2623) then goto _Label_2622
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2622
!	jmp	_Label_2621
_Label_2621:
! THEN...
	mov	2527,r13		! source line 2527
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2624 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2624  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2622:
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
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
	mov	2534,r13		! source line 2534
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2626
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2626
!	jmp	_Label_2625
_Label_2625:
! THEN...
	mov	2535,r13		! source line 2535
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2627 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2535,r13		! source line 2535
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2626:
! IF STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0IF",r10
!   _temp_2630 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2630) then goto _Label_2629
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2629
!	jmp	_Label_2628
_Label_2628:
! THEN...
	mov	2541,r13		! source line 2541
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2631 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2631  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2541,r13		! source line 2541
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2629:
! IF STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0IF",r10
!   _temp_2634 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2634 then goto _Label_2633		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2633
!	jmp	_Label_2632
_Label_2632:
! THEN...
	mov	2545,r13		! source line 2545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2635 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2635  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2633:
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
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
	mov	2551,r13		! source line 2551
	mov	"\0\0IF",r10
!   _temp_2638 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2638) then goto _Label_2637
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2637
!	jmp	_Label_2636
_Label_2636:
! THEN...
	mov	2552,r13		! source line 2552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2639 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2637:
! IF STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0IF",r10
!   _temp_2642 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2642 then goto _Label_2641		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2641
!	jmp	_Label_2640
_Label_2640:
! THEN...
	mov	2556,r13		! source line 2556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2643 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2643  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2641:
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
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
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   _temp_2646 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2645 = _temp_2646 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2644 = _temp_2645 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2644 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2648		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2648
!	jmp	_Label_2647
_Label_2647:
! THEN...
	mov	2578,r13		! source line 2578
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2649 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2649  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2578,r13		! source line 2578
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2650 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2650  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2579,r13		! source line 2579
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2651 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2651  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2580,r13		! source line 2580
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2648:
! SEND STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0SE",r10
!   _temp_2652 = &_P_Kernel_frameManager
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
	mov	2589,r13		! source line 2589
	mov	"\0\0IF",r10
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2656) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2655  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2655 == 707406378 then goto _Label_2654		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2654
!	jmp	_Label_2653
_Label_2653:
! THEN...
	mov	2590,r13		! source line 2590
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2657 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2657  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2590,r13		! source line 2590
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_2658 = &_P_Kernel_frameManager
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
	mov	2592,r13		! source line 2592
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2654:
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
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
	mov	2597,r13		! source line 2597
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2663 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2664 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2663  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2659:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2664 then goto _Label_2662		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2662
_Label_2660:
	mov	2597,r13		! source line 2597
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
	mov	2598,r13		! source line 2598
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
	mov	2601,r13		! source line 2601
	mov	"\0\0IF",r10
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2668) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2667  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2667 then goto _Label_2666 else goto _Label_2665
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2665
	jmp	_Label_2666
_Label_2665:
! THEN...
	mov	2602,r13		! source line 2602
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2669 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2669  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
!   _temp_2670 = &_P_Kernel_frameManager
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
	mov	2604,r13		! source line 2604
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2666:
! SEND STATEMENT...
	mov	2606,r13		! source line 2606
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
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2661:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2659
! END FOR
_Label_2662:
! IF STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0IF",r10
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2674) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2673  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2673 == 707406378 then goto _Label_2672		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2672
!	jmp	_Label_2671
_Label_2671:
! THEN...
	mov	2612,r13		! source line 2612
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2675 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2675  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2612,r13		! source line 2612
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   _temp_2676 = &_P_Kernel_frameManager
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
	mov	2614,r13		! source line 2614
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2672:
! FOR STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2681 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2682 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2681  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2677:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2682 then goto _Label_2680		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2680
_Label_2678:
	mov	2618,r13		! source line 2618
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
	mov	2619,r13		! source line 2619
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
	mov	2622,r13		! source line 2622
	mov	"\0\0IF",r10
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2686) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2685  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2685 then goto _Label_2684 else goto _Label_2683
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2683
	jmp	_Label_2684
_Label_2683:
! THEN...
	mov	2623,r13		! source line 2623
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2687 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2623,r13		! source line 2623
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_2688 = &_P_Kernel_frameManager
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
	mov	2625,r13		! source line 2625
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2684:
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2679:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2677
! END FOR
_Label_2680:
! IF STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0IF",r10
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2692) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2691  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2691 == 707406378 then goto _Label_2690		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2690
!	jmp	_Label_2689
_Label_2689:
! THEN...
	mov	2632,r13		! source line 2632
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2693 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2693  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0SE",r10
!   _temp_2694 = &_P_Kernel_frameManager
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
	mov	2634,r13		! source line 2634
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2690:
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
	mov	2638,r13		! source line 2638
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
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2645,r13		! source line 2645
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
	.word	_Label_2695
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2696
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2697
	.word	12
	.word	4
	.word	_Label_2698
	.word	-16
	.word	4
	.word	_Label_2699
	.word	-20
	.word	4
	.word	_Label_2700
	.word	-24
	.word	4
	.word	_Label_2701
	.word	-28
	.word	4
	.word	_Label_2702
	.word	-32
	.word	4
	.word	_Label_2703
	.word	-36
	.word	4
	.word	_Label_2704
	.word	-40
	.word	4
	.word	_Label_2705
	.word	-9
	.word	1
	.word	_Label_2706
	.word	-44
	.word	4
	.word	_Label_2707
	.word	-48
	.word	4
	.word	_Label_2708
	.word	-52
	.word	4
	.word	_Label_2709
	.word	-56
	.word	4
	.word	_Label_2710
	.word	-60
	.word	4
	.word	_Label_2711
	.word	-64
	.word	4
	.word	_Label_2712
	.word	-68
	.word	4
	.word	_Label_2713
	.word	-72
	.word	4
	.word	_Label_2714
	.word	-76
	.word	4
	.word	_Label_2715
	.word	-10
	.word	1
	.word	_Label_2716
	.word	-80
	.word	4
	.word	_Label_2717
	.word	-84
	.word	4
	.word	_Label_2718
	.word	-88
	.word	4
	.word	_Label_2719
	.word	-92
	.word	4
	.word	_Label_2720
	.word	-96
	.word	4
	.word	_Label_2721
	.word	-100
	.word	4
	.word	_Label_2722
	.word	-104
	.word	4
	.word	_Label_2723
	.word	-108
	.word	4
	.word	_Label_2724
	.word	-112
	.word	4
	.word	_Label_2725
	.word	-116
	.word	4
	.word	_Label_2726
	.word	-120
	.word	4
	.word	_Label_2727
	.word	-124
	.word	4
	.word	_Label_2728
	.word	-128
	.word	4
	.word	_Label_2729
	.word	-132
	.word	4
	.word	_Label_2730
	.word	-136
	.word	4
	.word	_Label_2731
	.word	-140
	.word	4
	.word	_Label_2732
	.word	-144
	.word	4
	.word	_Label_2733
	.word	-148
	.word	4
	.word	_Label_2734
	.word	-152
	.word	4
	.word	_Label_2735
	.word	-156
	.word	4
	.word	_Label_2736
	.word	-160
	.word	4
	.word	_Label_2737
	.word	-164
	.word	4
	.word	_Label_2738
	.word	-168
	.word	4
	.word	_Label_2739
	.word	-172
	.word	4
	.word	_Label_2740
	.word	-176
	.word	4
	.word	_Label_2741
	.word	-180
	.word	4
	.word	_Label_2742
	.word	-184
	.word	4
	.word	_Label_2743
	.word	-188
	.word	4
	.word	_Label_2744
	.word	-192
	.word	4
	.word	_Label_2745
	.word	-196
	.word	4
	.word	_Label_2746
	.word	-200
	.word	4
	.word	_Label_2747
	.word	-204
	.word	4
	.word	_Label_2748
	.word	-208
	.word	4
	.word	_Label_2749
	.word	-212
	.word	4
	.word	_Label_2750
	.word	-216
	.word	4
	.word	_Label_2751
	.word	-220
	.word	4
	.word	_Label_2752
	.word	-224
	.word	4
	.word	_Label_2753
	.word	-228
	.word	4
	.word	_Label_2754
	.word	-232
	.word	4
	.word	_Label_2755
	.word	-236
	.word	4
	.word	_Label_2756
	.word	-240
	.word	4
	.word	_Label_2757
	.word	-244
	.word	4
	.word	_Label_2758
	.word	-248
	.word	4
	.word	_Label_2759
	.word	-252
	.word	4
	.word	_Label_2760
	.word	-256
	.word	4
	.word	_Label_2761
	.word	-260
	.word	4
	.word	_Label_2762
	.word	-264
	.word	4
	.word	_Label_2763
	.word	-268
	.word	4
	.word	0
_Label_2695:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2696:
	.ascii	"Pself\0"
	.align
_Label_2697:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2705:
	.byte	'C'
	.ascii	"_temp_2685\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2715:
	.byte	'C'
	.ascii	"_temp_2667\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2752:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2753:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2754:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2755:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2756:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2758:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2759:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2760:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2761:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2762:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2763:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
