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
	.skip	1924
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
_StringConst_180:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_179:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_178:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_177:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_176:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_175:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_174:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_173:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_172:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_171:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_170:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_169:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_168:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_167:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_166:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_165:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_164:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_163:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_162:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_161:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_160:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_159:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_158:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_157:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_156:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_155:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_154:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_153:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_152:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_151:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_150:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_149:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_148:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_147:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_144:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_142:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_141:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_140:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_139:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_138:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_137:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_136:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_135:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_134:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_133:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_132:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_131:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_130:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_129:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_128:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_127:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_124:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_114:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_113:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_110:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_109:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_108:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_107:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_106:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_105:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_104:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_103:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_102:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_101:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_98:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_97:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_96:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_95:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_94:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_93:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_92:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_91:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_90:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_89:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_88:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_87:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_86:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_85:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_84:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_83:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_82:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_81:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_80:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_78:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_77:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_76:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_75:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_68:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_67:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_66:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_64:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_63:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_62:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_61:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_60:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_58:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_57:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_56:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_54:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_52:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_49:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_44:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_43:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_42:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_41:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_40:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_39:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_38:
	.word	24			! length
	.ascii	"virt addr of filename = "
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
	.ascii	"TestProgram4"
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
	set	0x1c81dea5,r4		! myHashVal = 478273189
	cmp	r3,r4
	be	_Label_190
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
_Label_190:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_191
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_191
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_191
_Label_191:
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
_Label_3901:
	push	r0
	sub	r1,1,r1
	bne	_Label_3901
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_192 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_192  sizeInBytes=4
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
_Label_3902:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3902
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_196 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_197 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_196  sizeInBytes=4
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
!   _temp_198 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_199 = _temp_198 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_199 = 3  (sizeInBytes=4)
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
_Label_3903:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3903
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_201 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_202 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_201  sizeInBytes=4
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
!   _temp_203 = _function_189_IdleFunction
	set	_function_189_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_204 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
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
	.word	_Label_205
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_206
	.word	-12
	.word	4
	.word	_Label_207
	.word	-16
	.word	4
	.word	_Label_208
	.word	-20
	.word	4
	.word	_Label_209
	.word	-24
	.word	4
	.word	_Label_210
	.word	-28
	.word	4
	.word	_Label_211
	.word	-32
	.word	4
	.word	_Label_212
	.word	-36
	.word	4
	.word	_Label_213
	.word	-40
	.word	4
	.word	_Label_214
	.word	-44
	.word	4
	.word	_Label_215
	.word	-48
	.word	4
	.word	_Label_216
	.word	-52
	.word	4
	.word	_Label_217
	.word	-56
	.word	4
	.word	_Label_218
	.word	-60
	.word	4
	.word	0
_Label_205:
	.ascii	"InitializeScheduler\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_189_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_219:
!	jmp	_Label_220
_Label_220:
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
!   _temp_224 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_222 else goto _Label_223
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_223
	jmp	_Label_222
_Label_222:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_225
_Label_223:
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
_Label_225:
! END WHILE...
	jmp	_Label_219
_Label_221:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_IdleFunction:
	.word	_sourceFileName
	.word	_Label_226
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_227
	.word	8
	.word	4
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	0
_Label_226:
	.ascii	"IdleFunction\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_229:
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
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
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
!   _temp_232 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_232 ) then goto _Label_231		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_231
!	jmp	_Label_230
_Label_230:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_234 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_234 [0 ] into _temp_235
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
!   _temp_233 = _temp_235		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_231:
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
!   _temp_236 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_236 = 3  (sizeInBytes=4)
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
_Label_237:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_241 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_240  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_240 then goto _Label_239 else goto _Label_238
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_238
	jmp	_Label_239
_Label_238:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_242 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_243 = &_P_Kernel_threadManager
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
	jmp	_Label_237
_Label_239:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_246 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_246 ) then goto _Label_245		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_245
!	jmp	_Label_244
_Label_244:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_248 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_248 [0 ] into _temp_249
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
!   _temp_247 = _temp_249		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_247  sizeInBytes=4
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
!   _temp_251 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_250 = *_temp_251  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_250) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_252 = _temp_250 + 32
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
_Label_245:
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
	.word	_Label_253
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_254
	.word	8
	.word	4
	.word	_Label_255
	.word	-16
	.word	4
	.word	_Label_256
	.word	-20
	.word	4
	.word	_Label_257
	.word	-24
	.word	4
	.word	_Label_258
	.word	-28
	.word	4
	.word	_Label_259
	.word	-32
	.word	4
	.word	_Label_260
	.word	-36
	.word	4
	.word	_Label_261
	.word	-40
	.word	4
	.word	_Label_262
	.word	-44
	.word	4
	.word	_Label_263
	.word	-48
	.word	4
	.word	_Label_264
	.word	-52
	.word	4
	.word	_Label_265
	.word	-9
	.word	1
	.word	_Label_266
	.word	-56
	.word	4
	.word	_Label_267
	.word	-60
	.word	4
	.word	_Label_268
	.word	-64
	.word	4
	.word	_Label_269
	.word	-68
	.word	4
	.word	_Label_270
	.word	-72
	.word	4
	.word	_Label_271
	.word	-76
	.word	4
	.word	_Label_272
	.word	-80
	.word	4
	.word	0
_Label_253:
	.ascii	"Run\0"
	.align
_Label_254:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_265:
	.byte	'C'
	.ascii	"_temp_240\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_271:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_272:
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
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
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
!   _temp_273 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_274 = _function_187_ThreadPrintShort
	set	_function_187_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_275 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_274  sizeInBytes=4
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
	.word	_Label_276
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_277
	.word	-12
	.word	4
	.word	_Label_278
	.word	-16
	.word	4
	.word	_Label_279
	.word	-20
	.word	4
	.word	_Label_280
	.word	-24
	.word	4
	.word	0
_Label_276:
	.ascii	"PrintReadyList\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_280:
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
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
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
!   _temp_281 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_281  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_282 = *_temp_283  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
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
!   _temp_284 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
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
	.word	_Label_285
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_286
	.word	-12
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	_Label_288
	.word	-20
	.word	4
	.word	_Label_289
	.word	-24
	.word	4
	.word	_Label_290
	.word	-28
	.word	4
	.word	_Label_291
	.word	-32
	.word	4
	.word	0
_Label_285:
	.ascii	"ThreadStartMain\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_290:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_291:
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
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
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
!   _temp_292 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_293 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
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
	.word	_Label_294
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_295
	.word	-12
	.word	4
	.word	_Label_296
	.word	-16
	.word	4
	.word	_Label_297
	.word	-20
	.word	4
	.word	0
_Label_294:
	.ascii	"ThreadFinish\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_297:
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
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
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
!   _temp_298 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_300		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_300
!	jmp	_Label_299
_Label_299:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_301 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
!   _temp_303 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_302 = *_temp_303  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_300:
! CALL STATEMENT...
!   _temp_304 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
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
!   _temp_305 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_306 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
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
	.word	_Label_307
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_308
	.word	8
	.word	4
	.word	_Label_309
	.word	-12
	.word	4
	.word	_Label_310
	.word	-16
	.word	4
	.word	_Label_311
	.word	-20
	.word	4
	.word	_Label_312
	.word	-24
	.word	4
	.word	_Label_313
	.word	-28
	.word	4
	.word	_Label_314
	.word	-32
	.word	4
	.word	_Label_315
	.word	-36
	.word	4
	.word	_Label_316
	.word	-40
	.word	4
	.word	0
_Label_307:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_308:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_316:
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
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
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
!   if newStatus != 1 then goto _Label_318		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_318
!	jmp	_Label_317
_Label_317:
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
	jmp	_Label_319
_Label_318:
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
_Label_319:
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
	.word	_Label_320
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-12
	.word	4
	.word	0
_Label_320:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_321:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_322:
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
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_323 = &_P_Kernel_threadManager
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
!   _temp_324 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_324  sizeInBytes=4
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
!   _temp_325 = _function_188_StartUserProcess
	set	_function_188_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_325  sizeInBytes=4
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
	.word	_Label_326
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_327
	.word	-12
	.word	4
	.word	_Label_328
	.word	-16
	.word	4
	.word	_Label_329
	.word	-20
	.word	4
	.word	_Label_330
	.word	-24
	.word	4
	.word	0
_Label_326:
	.ascii	"InitFirstProcess\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_330:
	.byte	'P'
	.ascii	"userProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_188_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3912:
	push	r0
	sub	r1,1,r1
	bne	_Label_3912
	mov	213,r13		! source line 213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   _temp_331 = &_P_Kernel_processManager
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
!   _temp_332 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_332 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_333 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_333 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_334 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-56]
!   _temp_335 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_334  sizeInBytes=4
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
!   _temp_337 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_336 = _temp_337		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_336  sizeInBytes=4
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
!   _temp_338 = &_P_Kernel_fileManager
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
!   _temp_340 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_341 = _temp_340 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_339 = *_temp_341  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_339 * 8192		(int)
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
!   _temp_342 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_342 [999 ] into _temp_343
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
!   initSystemStackTop = _temp_343		(4 bytes)
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
!   _temp_344 = pcb + 32
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
!   _temp_345 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_345 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_188_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_346
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_347
	.word	8
	.word	4
	.word	_Label_348
	.word	-12
	.word	4
	.word	_Label_349
	.word	-16
	.word	4
	.word	_Label_350
	.word	-20
	.word	4
	.word	_Label_351
	.word	-24
	.word	4
	.word	_Label_352
	.word	-28
	.word	4
	.word	_Label_353
	.word	-32
	.word	4
	.word	_Label_354
	.word	-36
	.word	4
	.word	_Label_355
	.word	-40
	.word	4
	.word	_Label_356
	.word	-44
	.word	4
	.word	_Label_357
	.word	-48
	.word	4
	.word	_Label_358
	.word	-52
	.word	4
	.word	_Label_359
	.word	-56
	.word	4
	.word	_Label_360
	.word	-60
	.word	4
	.word	_Label_361
	.word	-64
	.word	4
	.word	_Label_362
	.word	-68
	.word	4
	.word	_Label_363
	.word	-72
	.word	4
	.word	_Label_364
	.word	-76
	.word	4
	.word	_Label_365
	.word	-80
	.word	4
	.word	_Label_366
	.word	-84
	.word	4
	.word	_Label_367
	.word	-88
	.word	4
	.word	_Label_368
	.word	-92
	.word	4
	.word	0
_Label_346:
	.ascii	"StartUserProcess\0"
	.align
_Label_347:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_363:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_364:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_367:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_368:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_187_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3913:
	push	r0
	sub	r1,1,r1
	bne	_Label_3913
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
!   if t == 0 then goto _Label_372		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_372
!   _temp_371 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_373
_Label_372:
!   _temp_371 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_373:
!   if _temp_371 then goto _Label_370 else goto _Label_369
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_369
	jmp	_Label_370
_Label_369:
! THEN...
	mov	681,r13		! source line 681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_374 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
_Label_370:
! CALL STATEMENT...
!   _temp_375 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
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
!   _temp_377 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_376 = *_temp_377  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_378 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
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
!   _temp_387 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_386 = *_temp_387  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_381
	cmp	r1,2
	be	_Label_382
	cmp	r1,3
	be	_Label_383
	cmp	r1,4
	be	_Label_384
	cmp	r1,5
	be	_Label_385
	jmp	_Label_379
! CASE 1...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 2...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 3...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 4...
_Label_384:
! CALL STATEMENT...
!   _temp_391 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_380
! CASE 5...
_Label_385:
! CALL STATEMENT...
!   _temp_392 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_380
! DEFAULT CASE...
_Label_379:
! CALL STATEMENT...
!   _temp_393 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
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
_Label_380:
! CALL STATEMENT...
!   _temp_394 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_395 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_396 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
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
_RoutineDescriptor__function_187_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_397
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_398
	.word	8
	.word	4
	.word	_Label_399
	.word	-16
	.word	4
	.word	_Label_400
	.word	-20
	.word	4
	.word	_Label_401
	.word	-24
	.word	4
	.word	_Label_402
	.word	-28
	.word	4
	.word	_Label_403
	.word	-32
	.word	4
	.word	_Label_404
	.word	-36
	.word	4
	.word	_Label_405
	.word	-40
	.word	4
	.word	_Label_406
	.word	-44
	.word	4
	.word	_Label_407
	.word	-48
	.word	4
	.word	_Label_408
	.word	-52
	.word	4
	.word	_Label_409
	.word	-56
	.word	4
	.word	_Label_410
	.word	-60
	.word	4
	.word	_Label_411
	.word	-64
	.word	4
	.word	_Label_412
	.word	-68
	.word	4
	.word	_Label_413
	.word	-72
	.word	4
	.word	_Label_414
	.word	-76
	.word	4
	.word	_Label_415
	.word	-9
	.word	1
	.word	_Label_416
	.word	-80
	.word	4
	.word	0
_Label_397:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_398:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_415:
	.byte	'C'
	.ascii	"_temp_371\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_186_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3914:
	push	r0
	sub	r1,1,r1
	bne	_Label_3914
	mov	1040,r13		! source line 1040
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_417 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1044,r13		! source line 1044
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	-12
	.word	4
	.word	0
_Label_418:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_419:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_417\0"
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
	mov	37,r1
_Label_3915:
	push	r0
	sub	r1,1,r1
	bne	_Label_3915
	mov	1050,r13		! source line 1050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_421 = *_temp_422  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_421) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = _temp_421 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_423 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1059,r13		! source line 1059
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_424 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_424 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_426 = *_temp_427  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_426) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _temp_426 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_425 = _temp_428		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_429 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_430 = *_temp_431  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_432 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_430  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! FOR STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_437 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_438 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_437  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_433:
!   Perform the FOR-LOOP termination test
!   if i > _temp_438 then goto _Label_436		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_436
_Label_434:
	mov	1066,r13		! source line 1066
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_442 = *_temp_443  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_442) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = _temp_442 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_444 [i ] into _temp_445
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: _temp_441 = *_temp_445  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_441) then goto _Label_440
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_440
!	jmp	_Label_439
_Label_439:
! THEN...
	mov	1068,r13		! source line 1068
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_447 = *_temp_448  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_447) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _temp_447 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_449 [i ] into _temp_450
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
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
	store	r2,[r14+-48]
!   Data Move: _temp_446 = *_temp_450  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_451 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_446  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
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
	store	r1,[r14+-36]
!   Data Move: _temp_452 = *_temp_453  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_452) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _temp_452 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_454 [i ] into _temp_455
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
!   Data Move: *_temp_455 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_440:
!   Increment the FOR-LOOP index variable and jump back
_Label_435:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_433
! END FOR
_Label_436:
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_456 = *_temp_457  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_456) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = _temp_456 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_458 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_459 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_460
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_461
	.word	8
	.word	4
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	_Label_468
	.word	-36
	.word	4
	.word	_Label_469
	.word	-40
	.word	4
	.word	_Label_470
	.word	-44
	.word	4
	.word	_Label_471
	.word	-48
	.word	4
	.word	_Label_472
	.word	-52
	.word	4
	.word	_Label_473
	.word	-56
	.word	4
	.word	_Label_474
	.word	-60
	.word	4
	.word	_Label_475
	.word	-64
	.word	4
	.word	_Label_476
	.word	-68
	.word	4
	.word	_Label_477
	.word	-72
	.word	4
	.word	_Label_478
	.word	-76
	.word	4
	.word	_Label_479
	.word	-80
	.word	4
	.word	_Label_480
	.word	-84
	.word	4
	.word	_Label_481
	.word	-88
	.word	4
	.word	_Label_482
	.word	-92
	.word	4
	.word	_Label_483
	.word	-96
	.word	4
	.word	_Label_484
	.word	-100
	.word	4
	.word	_Label_485
	.word	-104
	.word	4
	.word	_Label_486
	.word	-108
	.word	4
	.word	_Label_487
	.word	-112
	.word	4
	.word	_Label_488
	.word	-116
	.word	4
	.word	_Label_489
	.word	-120
	.word	4
	.word	_Label_490
	.word	-124
	.word	4
	.word	_Label_491
	.word	-128
	.word	4
	.word	_Label_492
	.word	-132
	.word	4
	.word	_Label_493
	.word	-136
	.word	4
	.word	_Label_494
	.word	-140
	.word	4
	.word	_Label_495
	.word	-144
	.word	4
	.word	_Label_496
	.word	-148
	.word	4
	.word	0
_Label_460:
	.ascii	"ProcessFinish\0"
	.align
_Label_461:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"i\0"
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
_Label_3916:
	push	r0
	sub	r1,1,r1
	bne	_Label_3916
	mov	1555,r13		! source line 1555
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1567,r13		! source line 1567
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
	mov	1568,r13		! source line 1568
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_497:
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
_Label_3917:
	push	r0
	sub	r1,1,r1
	bne	_Label_3917
	mov	1573,r13		! source line 1573
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0IF",r10
!   _temp_501 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_502 = _temp_501 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_500 = *_temp_502  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_500 == 0 then goto _Label_499		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_499
!	jmp	_Label_498
_Label_498:
! THEN...
	mov	1588,r13		! source line 1588
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0SE",r10
!   _temp_504 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_505 = _temp_504 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_503 = *_temp_505  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_503) then goto _runtimeErrorNullPointer
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
_Label_499:
! RETURN STATEMENT...
	mov	1587,r13		! source line 1587
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_507
	.word	-12
	.word	4
	.word	_Label_508
	.word	-16
	.word	4
	.word	_Label_509
	.word	-20
	.word	4
	.word	_Label_510
	.word	-24
	.word	4
	.word	_Label_511
	.word	-28
	.word	4
	.word	_Label_512
	.word	-32
	.word	4
	.word	0
_Label_506:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_500\0"
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
	mov	1595,r13		! source line 1595
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
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
	.word	_Label_513
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_513:
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
_Label_3918:
	push	r0
	sub	r1,1,r1
	bne	_Label_3918
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
!   _temp_514 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_515
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_516
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_3919:
	push	r0
	sub	r1,1,r1
	bne	_Label_3919
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
!   _temp_517 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
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
_Label_3920:
	push	r0
	sub	r1,1,r1
	bne	_Label_3920
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
!   _temp_520 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1640,r13		! source line 1640
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
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
!   _temp_523 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1652,r13		! source line 1652
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
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
_Label_3922:
	push	r0
	sub	r1,1,r1
	bne	_Label_3922
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
!   _temp_526 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1664,r13		! source line 1664
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_527
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_527:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_3923:
	push	r0
	sub	r1,1,r1
	bne	_Label_3923
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
!   _temp_529 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1676,r13		! source line 1676
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
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
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	1681,r13		! source line 1681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_532 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
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
	.word	_Label_533
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_534
	.word	-12
	.word	4
	.word	0
_Label_533:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_185_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3925:
	push	r0
	sub	r1,1,r1
	bne	_Label_3925
	mov	1693,r13		! source line 1693
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_535 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1698,r13		! source line 1698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1699,r13		! source line 1699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_536 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_539 = *_temp_540  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_539 == 0 then goto _Label_538		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_538
!	jmp	_Label_537
_Label_537:
! THEN...
	mov	1704,r13		! source line 1704
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_542 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_541 = *_temp_542  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_541) then goto _runtimeErrorNullPointer
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
	jmp	_Label_543
_Label_538:
! ELSE...
	mov	1706,r13		! source line 1706
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_544 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_543:
! SEND STATEMENT...
	mov	1708,r13		! source line 1708
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
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_545
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_546
	.word	8
	.word	4
	.word	_Label_547
	.word	-12
	.word	4
	.word	_Label_548
	.word	-16
	.word	4
	.word	_Label_549
	.word	-20
	.word	4
	.word	_Label_550
	.word	-24
	.word	4
	.word	_Label_551
	.word	-28
	.word	4
	.word	_Label_552
	.word	-32
	.word	4
	.word	_Label_553
	.word	-36
	.word	4
	.word	0
_Label_545:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_546:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_535\0"
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
_Label_3926:
	push	r0
	sub	r1,1,r1
	bne	_Label_3926
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1740,r13		! source line 1740
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3927
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_554
_Label_3927:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_554
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_554
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_568,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_568:
	jmp	_Label_560	! 1:	
	jmp	_Label_567	! 2:	
	jmp	_Label_557	! 3:	
	jmp	_Label_556	! 4:	
	jmp	_Label_559	! 5:	
	jmp	_Label_558	! 6:	
	jmp	_Label_561	! 7:	
	jmp	_Label_562	! 8:	
	jmp	_Label_563	! 9:	
	jmp	_Label_564	! 10:	
	jmp	_Label_565	! 11:	
	jmp	_Label_566	! 12:	
! CASE 4...
_Label_556:
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_569  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_569  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_557:
! CALL STATEMENT...
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_558:
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_570  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_559:
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_571  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_571  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_560:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_561:
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_572  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_572  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_562:
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_573  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_563:
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
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
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_574  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_574  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_564:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
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
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_575  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_565:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_566:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_567:
! CALL STATEMENT...
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_554:
! CALL STATEMENT...
!   _temp_577 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_578 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1773,r13		! source line 1773
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_555:
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_579
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_580
	.word	8
	.word	4
	.word	_Label_581
	.word	12
	.word	4
	.word	_Label_582
	.word	16
	.word	4
	.word	_Label_583
	.word	20
	.word	4
	.word	_Label_584
	.word	24
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
	.word	_Label_588
	.word	-24
	.word	4
	.word	_Label_589
	.word	-28
	.word	4
	.word	_Label_590
	.word	-32
	.word	4
	.word	_Label_591
	.word	-36
	.word	4
	.word	_Label_592
	.word	-40
	.word	4
	.word	_Label_593
	.word	-44
	.word	4
	.word	_Label_594
	.word	-48
	.word	4
	.word	0
_Label_579:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_582:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_569\0"
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
_Label_3928:
	push	r0
	sub	r1,1,r1
	bne	_Label_3928
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1781,r13		! source line 1781
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
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
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_595
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_596
	.word	8
	.word	4
	.word	0
_Label_595:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_596:
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
_Label_3929:
	push	r0
	sub	r1,1,r1
	bne	_Label_3929
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_597 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_597  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1787,r13		! source line 1787
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
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
	.word	_Label_598
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_599
	.word	-12
	.word	4
	.word	0
_Label_598:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_597\0"
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
_Label_3930:
	push	r0
	sub	r1,1,r1
	bne	_Label_3930
	mov	1792,r13		! source line 1792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1793,r13		! source line 1793
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
	mov	1793,r13		! source line 1793
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
	.word	_Label_600
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_600:
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
	mov	85,r1
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0AS",r10
	mov	1804,r13		! source line 1804
	mov	"\0\0SE",r10
!   _temp_601 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-316]
!   Send message GetANewThread
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   _temp_602 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-312]
!   Send message GetANewProcess
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = pcb + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_603 = th  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = pcb + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_606 = *_temp_607  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_606) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _temp_606 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_605 = *_temp_608  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_604 = _temp_605  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = th + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_609 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = th + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_610 = pcb  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = th + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_612 [0 ] into _temp_613
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
	store	r2,[r14+-268]
!   _temp_611 = _temp_613		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-336]
! FOR STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_618 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_619 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_618  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-332]
_Label_614:
!   Perform the FOR-LOOP termination test
!   if i > _temp_619 then goto _Label_617		
	load	[r14+-332],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_617
_Label_615:
	mov	1818,r13		! source line 1818
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_623 = *_temp_624  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_623) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _temp_623 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_625 [i ] into _temp_626
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
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
	store	r2,[r14+-240]
!   Data Move: _temp_622 = *_temp_626  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_622) then goto _Label_621
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_621
!	jmp	_Label_620
_Label_620:
! THEN...
	mov	1820,r13		! source line 1820
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_628 = *_temp_629  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_628) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _temp_628 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_630 [i ] into _temp_631
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
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
	store	r2,[r14+-220]
!   Data Move: _temp_627 = *_temp_631  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_627) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = _temp_627 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_638 [i ] into _temp_639
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-192],r1
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
	store	r2,[r14+-188]
!   Data Move: _temp_635 = *_temp_639  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_635 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_634 = *_temp_640  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_633 = _temp_634 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_632 = _temp_633  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = th + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_641 = *_temp_642  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_641) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _temp_641 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_643 [i ] into _temp_644
!     make sure index expr is >= 0
	load	[r14+-332],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
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
	store	r2,[r14+-168]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_646 = *_temp_647  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_646) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = _temp_646 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_648 [i ] into _temp_649
!     make sure index expr is >= 0
	load	[r14+-332],r2
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
!   Data Move: _temp_645 = *_temp_649  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_644 = _temp_645  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_621:
!   Increment the FOR-LOOP index variable and jump back
_Label_616:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_614
! END FOR
_Label_617:
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = th + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = th + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_652 [999 ] into _temp_653
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
!   _temp_651 = _temp_653		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_650 = _temp_651  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = pcb + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_654 = _temp_655		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_657 = *_temp_658  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_657) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _temp_657 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_660 = _temp_659 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_656 = *_temp_660  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_661 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_654  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_656  sizeInBytes=4
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
	mov	1828,r13		! source line 1828
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_666 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_669 = *_temp_670  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_669) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _temp_669 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_672 = _temp_671 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_668 = *_temp_672  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_667 = _temp_668 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_666  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-332]
_Label_662:
!   Perform the FOR-LOOP termination test
!   if i > _temp_667 then goto _Label_665		
	load	[r14+-332],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_665
_Label_663:
	mov	1828,r13		! source line 1828
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = pcb + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_673  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1829,r13		! source line 1829
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_676 = *_temp_677  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_676) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_678 = _temp_676 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_675  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_675  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0IF",r10
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_682 = *_temp_683  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_682) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _temp_682 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_681  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_681 then goto _Label_680 else goto _Label_679
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_679
	jmp	_Label_680
_Label_679:
! THEN...
	mov	1831,r13		! source line 1831
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = pcb + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_686
_Label_680:
! ELSE...
	mov	1833,r13		! source line 1833
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = pcb + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-332],r1
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
_Label_686:
!   Increment the FOR-LOOP index variable and jump back
_Label_664:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_662
! END FOR
_Label_665:
! ASSIGNMENT STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0AS",r10
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   _temp_688 = _function_184_ResumeChildAfterFork
	set	_function_184_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_688  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = pcb + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_689 = *_temp_690  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_689  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,344,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_691
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_692
	.word	-16
	.word	4
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	_Label_696
	.word	-32
	.word	4
	.word	_Label_697
	.word	-36
	.word	4
	.word	_Label_698
	.word	-40
	.word	4
	.word	_Label_699
	.word	-44
	.word	4
	.word	_Label_700
	.word	-9
	.word	1
	.word	_Label_701
	.word	-48
	.word	4
	.word	_Label_702
	.word	-52
	.word	4
	.word	_Label_703
	.word	-56
	.word	4
	.word	_Label_704
	.word	-60
	.word	4
	.word	_Label_705
	.word	-64
	.word	4
	.word	_Label_706
	.word	-68
	.word	4
	.word	_Label_707
	.word	-72
	.word	4
	.word	_Label_708
	.word	-76
	.word	4
	.word	_Label_709
	.word	-80
	.word	4
	.word	_Label_710
	.word	-84
	.word	4
	.word	_Label_711
	.word	-88
	.word	4
	.word	_Label_712
	.word	-92
	.word	4
	.word	_Label_713
	.word	-96
	.word	4
	.word	_Label_714
	.word	-100
	.word	4
	.word	_Label_715
	.word	-104
	.word	4
	.word	_Label_716
	.word	-108
	.word	4
	.word	_Label_717
	.word	-112
	.word	4
	.word	_Label_718
	.word	-116
	.word	4
	.word	_Label_719
	.word	-120
	.word	4
	.word	_Label_720
	.word	-124
	.word	4
	.word	_Label_721
	.word	-128
	.word	4
	.word	_Label_722
	.word	-132
	.word	4
	.word	_Label_723
	.word	-136
	.word	4
	.word	_Label_724
	.word	-140
	.word	4
	.word	_Label_725
	.word	-144
	.word	4
	.word	_Label_726
	.word	-148
	.word	4
	.word	_Label_727
	.word	-152
	.word	4
	.word	_Label_728
	.word	-156
	.word	4
	.word	_Label_729
	.word	-160
	.word	4
	.word	_Label_730
	.word	-164
	.word	4
	.word	_Label_731
	.word	-168
	.word	4
	.word	_Label_732
	.word	-172
	.word	4
	.word	_Label_733
	.word	-176
	.word	4
	.word	_Label_734
	.word	-180
	.word	4
	.word	_Label_735
	.word	-184
	.word	4
	.word	_Label_736
	.word	-188
	.word	4
	.word	_Label_737
	.word	-192
	.word	4
	.word	_Label_738
	.word	-196
	.word	4
	.word	_Label_739
	.word	-200
	.word	4
	.word	_Label_740
	.word	-204
	.word	4
	.word	_Label_741
	.word	-208
	.word	4
	.word	_Label_742
	.word	-212
	.word	4
	.word	_Label_743
	.word	-216
	.word	4
	.word	_Label_744
	.word	-220
	.word	4
	.word	_Label_745
	.word	-224
	.word	4
	.word	_Label_746
	.word	-228
	.word	4
	.word	_Label_747
	.word	-232
	.word	4
	.word	_Label_748
	.word	-236
	.word	4
	.word	_Label_749
	.word	-240
	.word	4
	.word	_Label_750
	.word	-244
	.word	4
	.word	_Label_751
	.word	-248
	.word	4
	.word	_Label_752
	.word	-252
	.word	4
	.word	_Label_753
	.word	-256
	.word	4
	.word	_Label_754
	.word	-260
	.word	4
	.word	_Label_755
	.word	-264
	.word	4
	.word	_Label_756
	.word	-268
	.word	4
	.word	_Label_757
	.word	-272
	.word	4
	.word	_Label_758
	.word	-276
	.word	4
	.word	_Label_759
	.word	-280
	.word	4
	.word	_Label_760
	.word	-284
	.word	4
	.word	_Label_761
	.word	-288
	.word	4
	.word	_Label_762
	.word	-292
	.word	4
	.word	_Label_763
	.word	-296
	.word	4
	.word	_Label_764
	.word	-300
	.word	4
	.word	_Label_765
	.word	-304
	.word	4
	.word	_Label_766
	.word	-308
	.word	4
	.word	_Label_767
	.word	-312
	.word	4
	.word	_Label_768
	.word	-316
	.word	4
	.word	_Label_769
	.word	-320
	.word	4
	.word	_Label_770
	.word	-324
	.word	4
	.word	_Label_771
	.word	-328
	.word	4
	.word	_Label_772
	.word	-332
	.word	4
	.word	_Label_773
	.word	-336
	.word	4
	.word	0
_Label_691:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_700:
	.byte	'C'
	.ascii	"_temp_681\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_769:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_770:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_772:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_773:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_184_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_775 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_774 = *_temp_775  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = _temp_774 + 32
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
!   _temp_778 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_778 [0 ] into _temp_779
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
!   _temp_777 = _temp_779		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_780 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_780 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_781 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_781 [14 ] into _temp_782
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
!   Data Move: initUserStackTop = *_temp_782  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_783 [999 ] into _temp_784
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
!   initSystemStackTop = _temp_784		(4 bytes)
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
	mov	1852,r13		! source line 1852
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_785
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_786
	.word	8
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	_Label_789
	.word	-20
	.word	4
	.word	_Label_790
	.word	-24
	.word	4
	.word	_Label_791
	.word	-28
	.word	4
	.word	_Label_792
	.word	-32
	.word	4
	.word	_Label_793
	.word	-36
	.word	4
	.word	_Label_794
	.word	-40
	.word	4
	.word	_Label_795
	.word	-44
	.word	4
	.word	_Label_796
	.word	-48
	.word	4
	.word	_Label_797
	.word	-52
	.word	4
	.word	_Label_798
	.word	-56
	.word	4
	.word	_Label_799
	.word	-60
	.word	4
	.word	_Label_800
	.word	-64
	.word	4
	.word	0
_Label_785:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_798:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_799:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_800:
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
_Label_3933:
	push	r0
	sub	r1,1,r1
	bne	_Label_3933
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_805 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_806 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_805  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_801:
!   Perform the FOR-LOOP termination test
!   if i > _temp_806 then goto _Label_804		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_804
_Label_802:
	mov	1860,r13		! source line 1860
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0IF",r10
!   _temp_812 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_813 = _temp_812 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_813 [i ] into _temp_814
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_815 = _temp_814 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_811 = *_temp_815  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_811 != processID then goto _Label_808		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_808
!	jmp	_Label_810
_Label_810:
!   _temp_817 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_818 = _temp_817 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_818 [i ] into _temp_819
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_820 = _temp_819 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_816 = *_temp_820  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_823 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_822 = *_temp_823  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_822) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_824 = _temp_822 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_821 = *_temp_824  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_816 != _temp_821 then goto _Label_808		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_808
!	jmp	_Label_809
_Label_809:
!   _temp_826 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_827 = _temp_826 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_827 [i ] into _temp_828
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_829 = _temp_828 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_825 = *_temp_829  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_825 == 3 then goto _Label_808		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	1862,r13		! source line 1862
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
	mov	1862,r13		! source line 1862
	mov	"\0\0SE",r10
!   _temp_831 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_832 = _temp_831 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_832 [i ] into _temp_833
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_830 = _temp_833		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_834 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_830  sizeInBytes=4
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
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_808:
!   Increment the FOR-LOOP index variable and jump back
_Label_803:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_801
! END FOR
_Label_804:
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
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
	.word	_Label_835
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_836
	.word	8
	.word	4
	.word	_Label_837
	.word	-12
	.word	4
	.word	_Label_838
	.word	-16
	.word	4
	.word	_Label_839
	.word	-20
	.word	4
	.word	_Label_840
	.word	-24
	.word	4
	.word	_Label_841
	.word	-28
	.word	4
	.word	_Label_842
	.word	-32
	.word	4
	.word	_Label_843
	.word	-36
	.word	4
	.word	_Label_844
	.word	-40
	.word	4
	.word	_Label_845
	.word	-44
	.word	4
	.word	_Label_846
	.word	-48
	.word	4
	.word	_Label_847
	.word	-52
	.word	4
	.word	_Label_848
	.word	-56
	.word	4
	.word	_Label_849
	.word	-60
	.word	4
	.word	_Label_850
	.word	-64
	.word	4
	.word	_Label_851
	.word	-68
	.word	4
	.word	_Label_852
	.word	-72
	.word	4
	.word	_Label_853
	.word	-76
	.word	4
	.word	_Label_854
	.word	-80
	.word	4
	.word	_Label_855
	.word	-84
	.word	4
	.word	_Label_856
	.word	-88
	.word	4
	.word	_Label_857
	.word	-92
	.word	4
	.word	_Label_858
	.word	-96
	.word	4
	.word	_Label_859
	.word	-100
	.word	4
	.word	_Label_860
	.word	-104
	.word	4
	.word	_Label_861
	.word	-108
	.word	4
	.word	_Label_862
	.word	-112
	.word	4
	.word	_Label_863
	.word	-116
	.word	4
	.word	_Label_864
	.word	-120
	.word	4
	.word	0
_Label_835:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_836:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_863:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_864:
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
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
	mov	1871,r13		! source line 1871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
	mov	1881,r13		! source line 1881
	mov	"\0\0SE",r10
!   _temp_865 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-112]
!   _temp_866 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_868 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_867 = *_temp_868  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_867) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_869 = _temp_867 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_865  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_866  sizeInBytes=4
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
	mov	1882,r13		! source line 1882
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_871		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_871
!	jmp	_Label_870
_Label_870:
! THEN...
	mov	1882,r13		! source line 1882
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_871:
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3935:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3935
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0SE",r10
!   _temp_873 = &newAddrSpace
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
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_874 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_875 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_874  sizeInBytes=4
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
	mov	1888,r13		! source line 1888
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_876
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_876
	jmp	_Label_877
_Label_876:
! THEN...
	mov	1888,r13		! source line 1888
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_877:
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
	mov	1891,r13		! source line 1891
	mov	"\0\0SE",r10
!   _temp_878 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_878  sizeInBytes=4
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
	mov	1892,r13		! source line 1892
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_880		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_880
!	jmp	_Label_879
_Label_879:
! THEN...
	mov	1892,r13		! source line 1892
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_880:
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_882 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_881 = *_temp_882  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_881) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_883 = _temp_881 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_883 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3936:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3936
! SEND STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_885 = *_temp_886  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_885) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_887 = _temp_885 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_884 = _temp_887		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_888 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_884  sizeInBytes=4
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
	mov	1897,r13		! source line 1897
	mov	"\0\0SE",r10
!   _temp_889 = &_P_Kernel_fileManager
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
	mov	1899,r13		! source line 1899
	mov	"\0\0AS",r10
!   _temp_891 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_892 = _temp_891 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_890 = *_temp_892  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_890 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_893 [999 ] into _temp_894
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
!   initSystemStackTop = _temp_894		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_895 = &newAddrSpace
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
	mov	1903,r13		! source line 1903
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_896 = 1  (sizeInBytes=1)
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
	mov	1904,r13		! source line 1904
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
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
	.word	_Label_897
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_898
	.word	8
	.word	4
	.word	_Label_899
	.word	-12
	.word	4
	.word	_Label_900
	.word	-16
	.word	4
	.word	_Label_901
	.word	-20
	.word	4
	.word	_Label_902
	.word	-24
	.word	4
	.word	_Label_903
	.word	-28
	.word	4
	.word	_Label_904
	.word	-32
	.word	4
	.word	_Label_905
	.word	-36
	.word	4
	.word	_Label_906
	.word	-40
	.word	4
	.word	_Label_907
	.word	-44
	.word	4
	.word	_Label_908
	.word	-48
	.word	4
	.word	_Label_909
	.word	-52
	.word	4
	.word	_Label_910
	.word	-56
	.word	4
	.word	_Label_911
	.word	-60
	.word	4
	.word	_Label_912
	.word	-64
	.word	4
	.word	_Label_913
	.word	-68
	.word	4
	.word	_Label_914
	.word	-72
	.word	4
	.word	_Label_915
	.word	-76
	.word	4
	.word	_Label_916
	.word	-80
	.word	4
	.word	_Label_917
	.word	-84
	.word	4
	.word	_Label_918
	.word	-88
	.word	4
	.word	_Label_919
	.word	-92
	.word	4
	.word	_Label_920
	.word	-96
	.word	4
	.word	_Label_921
	.word	-100
	.word	4
	.word	_Label_922
	.word	-104
	.word	4
	.word	_Label_923
	.word	-108
	.word	4
	.word	_Label_924
	.word	-112
	.word	4
	.word	_Label_925
	.word	-204
	.word	92
	.word	_Label_926
	.word	-208
	.word	4
	.word	_Label_927
	.word	-212
	.word	4
	.word	_Label_928
	.word	-236
	.word	24
	.word	_Label_929
	.word	-240
	.word	4
	.word	_Label_930
	.word	-244
	.word	4
	.word	_Label_931
	.word	-248
	.word	4
	.word	0
_Label_897:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_898:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_925:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_927:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_928:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_929:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_930:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_931:
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
	mov	20,r1
_Label_3937:
	push	r0
	sub	r1,1,r1
	bne	_Label_3937
	mov	1911,r13		! source line 1911
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0AS",r10
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   _temp_932 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-44]
!   _temp_933 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_934 = *_temp_935  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_934) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = _temp_934 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_932  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_933  sizeInBytes=4
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
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_938		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_938
!	jmp	_Label_937
_Label_937:
! THEN...
	mov	1916,r13		! source line 1916
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_938:
! CALL STATEMENT...
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_939 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_940 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_941 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_941  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_942 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_943
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_944
	.word	8
	.word	4
	.word	_Label_945
	.word	-12
	.word	4
	.word	_Label_946
	.word	-16
	.word	4
	.word	_Label_947
	.word	-20
	.word	4
	.word	_Label_948
	.word	-24
	.word	4
	.word	_Label_949
	.word	-28
	.word	4
	.word	_Label_950
	.word	-32
	.word	4
	.word	_Label_951
	.word	-36
	.word	4
	.word	_Label_952
	.word	-40
	.word	4
	.word	_Label_953
	.word	-44
	.word	4
	.word	_Label_954
	.word	-48
	.word	4
	.word	_Label_955
	.word	-72
	.word	24
	.word	0
_Label_943:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_944:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_955:
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
	mov	32,r1
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
	mov	1935,r13		! source line 1935
	mov	"\0\0SE",r10
!   _temp_956 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-80]
!   _temp_957 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_958 = *_temp_959  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_958) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_960 = _temp_958 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_956  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_957  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_962		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_962
!	jmp	_Label_961
_Label_961:
! THEN...
	mov	1936,r13		! source line 1936
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_962:
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-92]
! FOR STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_967 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_968 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_967  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-88]
_Label_963:
!   Perform the FOR-LOOP termination test
!   if i > _temp_968 then goto _Label_966		
	load	[r14+-88],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_966
_Label_964:
	mov	1940,r13		! source line 1940
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_973 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_972 = *_temp_973  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_972) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_974 = _temp_972 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_974 [i ] into _temp_975
!     make sure index expr is >= 0
	load	[r14+-88],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_971 = *_temp_975  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_971) then goto _Label_969
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_969
	jmp	_Label_970
_Label_969:
! THEN...
	mov	1942,r13		! source line 1942
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
! BREAK STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0BR",r10
	jmp	_Label_966
! END IF...
_Label_970:
!   Increment the FOR-LOOP index variable and jump back
_Label_965:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_963
! END FOR
_Label_966:
! IF STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_977		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_977
!	jmp	_Label_976
_Label_976:
! THEN...
	mov	1947,r13		! source line 1947
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_977:
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
	mov	1950,r13		! source line 1950
	mov	"\0\0SE",r10
!   _temp_978 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-32]
!   _temp_979 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_978  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_980
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_980
	jmp	_Label_981
_Label_980:
! THEN...
	mov	1952,r13		! source line 1952
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_981:
! ASSIGNMENT STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_983 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_982 = *_temp_983  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_982) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = _temp_982 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_984 [fileDescriptorIndex ] into _temp_985
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
!   Data Move: *_temp_985 = openFile  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_986
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_987
	.word	8
	.word	4
	.word	_Label_988
	.word	-12
	.word	4
	.word	_Label_989
	.word	-16
	.word	4
	.word	_Label_990
	.word	-20
	.word	4
	.word	_Label_991
	.word	-24
	.word	4
	.word	_Label_992
	.word	-28
	.word	4
	.word	_Label_993
	.word	-32
	.word	4
	.word	_Label_994
	.word	-36
	.word	4
	.word	_Label_995
	.word	-40
	.word	4
	.word	_Label_996
	.word	-44
	.word	4
	.word	_Label_997
	.word	-48
	.word	4
	.word	_Label_998
	.word	-52
	.word	4
	.word	_Label_999
	.word	-56
	.word	4
	.word	_Label_1000
	.word	-60
	.word	4
	.word	_Label_1001
	.word	-64
	.word	4
	.word	_Label_1002
	.word	-68
	.word	4
	.word	_Label_1003
	.word	-72
	.word	4
	.word	_Label_1004
	.word	-76
	.word	4
	.word	_Label_1005
	.word	-80
	.word	4
	.word	_Label_1006
	.word	-84
	.word	4
	.word	_Label_1007
	.word	-88
	.word	4
	.word	_Label_1008
	.word	-92
	.word	4
	.word	_Label_1009
	.word	-116
	.word	24
	.word	_Label_1010
	.word	-120
	.word	4
	.word	0
_Label_986:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_987:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1006:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1009:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_1010:
	.byte	'P'
	.ascii	"openFile\0"
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
	mov	77,r1
_Label_3939:
	push	r0
	sub	r1,1,r1
	bne	_Label_3939
	mov	1961,r13		! source line 1961
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1015		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1015
	jmp	_Label_1011
_Label_1015:
!   if fileDesc <= 9 then goto _Label_1014		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1014
	jmp	_Label_1011
_Label_1014:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1018 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_1017 = *_temp_1018  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1017) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1019 = _temp_1017 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_1019 [fileDesc ] into _temp_1020
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
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
	store	r2,[r14+-244]
!   Data Move: _temp_1016 = *_temp_1020  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1016) then goto _Label_1011
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_1011
!	jmp	_Label_1013
_Label_1013:
!   if sizeInBytes >= 0 then goto _Label_1012		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1012
!	jmp	_Label_1011
_Label_1011:
! THEN...
	mov	1968,r13		! source line 1968
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1012:
! ASSIGNMENT STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1022 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1021 = *_temp_1022  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1021) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _temp_1021 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1023 [fileDesc ] into _temp_1024
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
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
	store	r2,[r14+-228]
!   Data Move: openFile = *_temp_1024  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1025 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1025  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1026 = *_temp_1027  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1026) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1028 = _temp_1026 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_1028  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0WH",r10
_Label_1029:
!	jmp	_Label_1030
_Label_1030:
	mov	1978,r13		! source line 1978
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0IF",r10
!   _temp_1034 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1034 <= fileSize then goto _Label_1033		(int)
	load	[r14+-208],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1033
!	jmp	_Label_1032
_Label_1032:
! THEN...
	mov	1981,r13		! source line 1981
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1033:
! IF STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0IF",r10
!   _temp_1037 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1037 <= sizeInBytes then goto _Label_1036		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1036
!	jmp	_Label_1035
_Label_1035:
! THEN...
	mov	1984,r13		! source line 1984
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1036:
! IF STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1039		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1039
!	jmp	_Label_1038
_Label_1038:
! THEN...
	mov	1987,r13		! source line 1987
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0BR",r10
	jmp	_Label_1031
! END IF...
_Label_1039:
! IF STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1044		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1044
	jmp	_Label_1040
_Label_1044:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1047 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1047) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = _temp_1047 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1050 = _temp_1049 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1046 = *_temp_1050  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1045 = _temp_1046 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1045 then goto _Label_1043		(int)
	load	[r14+-264],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1043
	jmp	_Label_1040
_Label_1043:
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1052 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1052) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _temp_1052 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1051  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1051 then goto _Label_1042 else goto _Label_1040
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1040
	jmp	_Label_1042
_Label_1042:
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1056 = *_temp_1057  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1056) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _temp_1056 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1055  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1055 then goto _Label_1041 else goto _Label_1040
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1040
	jmp	_Label_1041
_Label_1040:
! THEN...
	mov	1991,r13		! source line 1991
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1041:
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1060		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1060
!	jmp	_Label_1059
_Label_1059:
! THEN...
	mov	1999,r13		! source line 1999
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0BR",r10
	jmp	_Label_1031
! END IF...
_Label_1060:
! END WHILE...
	jmp	_Label_1029
_Label_1031:
! ASSIGNMENT STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1061 = *_temp_1062  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1061) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _temp_1061 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1063 [fileDesc ] into _temp_1064
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1064  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1065  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1066 = *_temp_1067  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1066) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _temp_1066 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1068  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0WH",r10
_Label_1069:
!	jmp	_Label_1070
_Label_1070:
	mov	2012,r13		! source line 2012
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0IF",r10
!   _temp_1074 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1074 <= fileSize then goto _Label_1073		(int)
	load	[r14+-120],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1073
!	jmp	_Label_1072
_Label_1072:
! THEN...
	mov	2015,r13		! source line 2015
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1073:
! IF STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0IF",r10
!   _temp_1077 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1077 <= sizeInBytes then goto _Label_1076		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1076
!	jmp	_Label_1075
_Label_1075:
! THEN...
	mov	2018,r13		! source line 2018
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1076:
! IF STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1079		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1079
!	jmp	_Label_1078
_Label_1078:
! THEN...
	mov	2021,r13		! source line 2021
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0BR",r10
	jmp	_Label_1071
! END IF...
_Label_1079:
! IF STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1084		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1084
	jmp	_Label_1080
_Label_1084:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1087 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1087) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = _temp_1087 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1090 = _temp_1089 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1086 = *_temp_1090  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1085 = _temp_1086 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1085 then goto _Label_1083		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1083
	jmp	_Label_1080
_Label_1083:
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1093 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1092 = *_temp_1093  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1092) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1094 = _temp_1092 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1091  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1091 then goto _Label_1082 else goto _Label_1080
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1080
	jmp	_Label_1082
_Label_1082:
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1097 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1096 = *_temp_1097  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1096) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _temp_1096 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1095  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1095 then goto _Label_1081 else goto _Label_1080
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1080
	jmp	_Label_1081
_Label_1080:
! THEN...
	mov	2024,r13		! source line 2024
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1081:
! SEND STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1099 = *_temp_1100  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1099) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = _temp_1099 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1102 = *_temp_1103  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1102) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = _temp_1102 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
	mov	2028,r13		! source line 2028
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1107 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1106 = *_temp_1107  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1106) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1108 = _temp_1106 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1105  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1105 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
!   _temp_1109 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=read  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1111		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1111
!	jmp	_Label_1110
_Label_1110:
! THEN...
	mov	2035,r13		! source line 2035
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0BR",r10
	jmp	_Label_1071
! END IF...
_Label_1111:
! END WHILE...
	jmp	_Label_1069
_Label_1071:
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1112 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1112 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1113
	.word	12		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1114
	.word	8
	.word	4
	.word	_Label_1115
	.word	12
	.word	4
	.word	_Label_1116
	.word	16
	.word	4
	.word	_Label_1117
	.word	-20
	.word	4
	.word	_Label_1118
	.word	-24
	.word	4
	.word	_Label_1119
	.word	-28
	.word	4
	.word	_Label_1120
	.word	-32
	.word	4
	.word	_Label_1121
	.word	-36
	.word	4
	.word	_Label_1122
	.word	-40
	.word	4
	.word	_Label_1123
	.word	-44
	.word	4
	.word	_Label_1124
	.word	-48
	.word	4
	.word	_Label_1125
	.word	-52
	.word	4
	.word	_Label_1126
	.word	-56
	.word	4
	.word	_Label_1127
	.word	-60
	.word	4
	.word	_Label_1128
	.word	-64
	.word	4
	.word	_Label_1129
	.word	-68
	.word	4
	.word	_Label_1130
	.word	-72
	.word	4
	.word	_Label_1131
	.word	-76
	.word	4
	.word	_Label_1132
	.word	-9
	.word	1
	.word	_Label_1133
	.word	-80
	.word	4
	.word	_Label_1134
	.word	-84
	.word	4
	.word	_Label_1135
	.word	-88
	.word	4
	.word	_Label_1136
	.word	-10
	.word	1
	.word	_Label_1137
	.word	-92
	.word	4
	.word	_Label_1138
	.word	-96
	.word	4
	.word	_Label_1139
	.word	-100
	.word	4
	.word	_Label_1140
	.word	-104
	.word	4
	.word	_Label_1141
	.word	-108
	.word	4
	.word	_Label_1142
	.word	-112
	.word	4
	.word	_Label_1143
	.word	-116
	.word	4
	.word	_Label_1144
	.word	-120
	.word	4
	.word	_Label_1145
	.word	-124
	.word	4
	.word	_Label_1146
	.word	-128
	.word	4
	.word	_Label_1147
	.word	-132
	.word	4
	.word	_Label_1148
	.word	-136
	.word	4
	.word	_Label_1149
	.word	-140
	.word	4
	.word	_Label_1150
	.word	-144
	.word	4
	.word	_Label_1151
	.word	-148
	.word	4
	.word	_Label_1152
	.word	-152
	.word	4
	.word	_Label_1153
	.word	-156
	.word	4
	.word	_Label_1154
	.word	-160
	.word	4
	.word	_Label_1155
	.word	-164
	.word	4
	.word	_Label_1156
	.word	-11
	.word	1
	.word	_Label_1157
	.word	-168
	.word	4
	.word	_Label_1158
	.word	-172
	.word	4
	.word	_Label_1159
	.word	-176
	.word	4
	.word	_Label_1160
	.word	-12
	.word	1
	.word	_Label_1161
	.word	-180
	.word	4
	.word	_Label_1162
	.word	-184
	.word	4
	.word	_Label_1163
	.word	-188
	.word	4
	.word	_Label_1164
	.word	-192
	.word	4
	.word	_Label_1165
	.word	-196
	.word	4
	.word	_Label_1166
	.word	-200
	.word	4
	.word	_Label_1167
	.word	-204
	.word	4
	.word	_Label_1168
	.word	-208
	.word	4
	.word	_Label_1169
	.word	-212
	.word	4
	.word	_Label_1170
	.word	-216
	.word	4
	.word	_Label_1171
	.word	-220
	.word	4
	.word	_Label_1172
	.word	-224
	.word	4
	.word	_Label_1173
	.word	-228
	.word	4
	.word	_Label_1174
	.word	-232
	.word	4
	.word	_Label_1175
	.word	-236
	.word	4
	.word	_Label_1176
	.word	-240
	.word	4
	.word	_Label_1177
	.word	-244
	.word	4
	.word	_Label_1178
	.word	-248
	.word	4
	.word	_Label_1179
	.word	-252
	.word	4
	.word	_Label_1180
	.word	-256
	.word	4
	.word	_Label_1181
	.word	-260
	.word	4
	.word	_Label_1182
	.word	-264
	.word	4
	.word	_Label_1183
	.word	-268
	.word	4
	.word	_Label_1184
	.word	-272
	.word	4
	.word	_Label_1185
	.word	-276
	.word	4
	.word	_Label_1186
	.word	-280
	.word	4
	.word	_Label_1187
	.word	-284
	.word	4
	.word	_Label_1188
	.word	-288
	.word	4
	.word	_Label_1189
	.word	-292
	.word	4
	.word	_Label_1190
	.word	-296
	.word	4
	.word	_Label_1191
	.word	-13
	.word	1
	.word	0
_Label_1113:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1115:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1116:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1132:
	.byte	'C'
	.ascii	"_temp_1095\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1136:
	.byte	'C'
	.ascii	"_temp_1091\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1156:
	.byte	'C'
	.ascii	"_temp_1055\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1160:
	.byte	'C'
	.ascii	"_temp_1051\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1182:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1183:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1184:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1185:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1186:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1188:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1189:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1190:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1191:
	.byte	'B'
	.ascii	"read\0"
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
	mov	77,r1
_Label_3940:
	push	r0
	sub	r1,1,r1
	bne	_Label_3940
	mov	2045,r13		! source line 2045
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1196		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1196
	jmp	_Label_1192
_Label_1196:
!   if fileDesc <= 9 then goto _Label_1195		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1195
	jmp	_Label_1192
_Label_1195:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1199 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_1198 = *_temp_1199  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1198) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1200 = _temp_1198 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_1200 [fileDesc ] into _temp_1201
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-248],r1
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
	store	r2,[r14+-244]
!   Data Move: _temp_1197 = *_temp_1201  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1197) then goto _Label_1192
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_1192
!	jmp	_Label_1194
_Label_1194:
!   if sizeInBytes >= 0 then goto _Label_1193		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1193
!	jmp	_Label_1192
_Label_1192:
! THEN...
	mov	2052,r13		! source line 2052
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1193:
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1203 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1202 = *_temp_1203  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1202) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1204 = _temp_1202 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1204 [fileDesc ] into _temp_1205
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
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
	store	r2,[r14+-228]
!   Data Move: openFile = *_temp_1205  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1206 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1206  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1208 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1207 = *_temp_1208  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1207) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1209 = _temp_1207 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_1209  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0WH",r10
_Label_1210:
!	jmp	_Label_1211
_Label_1211:
	mov	2062,r13		! source line 2062
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0IF",r10
!   _temp_1215 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1215 <= fileSize then goto _Label_1214		(int)
	load	[r14+-208],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1214
!	jmp	_Label_1213
_Label_1213:
! THEN...
	mov	2065,r13		! source line 2065
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1214:
! IF STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0IF",r10
!   _temp_1218 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1218 <= sizeInBytes then goto _Label_1217		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1217
!	jmp	_Label_1216
_Label_1216:
! THEN...
	mov	2068,r13		! source line 2068
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1217:
! IF STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1220		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1220
!	jmp	_Label_1219
_Label_1219:
! THEN...
	mov	2071,r13		! source line 2071
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0BR",r10
	jmp	_Label_1212
! END IF...
_Label_1220:
! IF STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1225		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1225
	jmp	_Label_1221
_Label_1225:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1229 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1228 = *_temp_1229  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1228) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1230 = _temp_1228 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1231 = _temp_1230 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1227 = *_temp_1231  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1226 = _temp_1227 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1226 then goto _Label_1224		(int)
	load	[r14+-264],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1224
	jmp	_Label_1221
_Label_1224:
	mov	2074,r13		! source line 2074
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1234 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1233 = *_temp_1234  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1233) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1235 = _temp_1233 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1232  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1232 then goto _Label_1223 else goto _Label_1221
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1221
	jmp	_Label_1223
_Label_1223:
	mov	2074,r13		! source line 2074
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1237 = *_temp_1238  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1237) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1239 = _temp_1237 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1236  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1236 then goto _Label_1222 else goto _Label_1221
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1221
	jmp	_Label_1222
_Label_1221:
! THEN...
	mov	2075,r13		! source line 2075
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1222:
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1241		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1241
!	jmp	_Label_1240
_Label_1240:
! THEN...
	mov	2083,r13		! source line 2083
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0BR",r10
	jmp	_Label_1212
! END IF...
_Label_1241:
! END WHILE...
	jmp	_Label_1210
_Label_1212:
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1242 = *_temp_1243  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1242) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1244 = _temp_1242 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1244 [fileDesc ] into _temp_1245
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1245  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-284],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1246 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1246  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1247 = *_temp_1248  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1247) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1249 = _temp_1247 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1249  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0WH",r10
_Label_1250:
!	jmp	_Label_1251
_Label_1251:
	mov	2096,r13		! source line 2096
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0IF",r10
!   _temp_1255 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1255 <= fileSize then goto _Label_1254		(int)
	load	[r14+-120],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1254
!	jmp	_Label_1253
_Label_1253:
! THEN...
	mov	2099,r13		! source line 2099
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1254:
! IF STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0IF",r10
!   _temp_1258 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1258 <= sizeInBytes then goto _Label_1257		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1257
!	jmp	_Label_1256
_Label_1256:
! THEN...
	mov	2102,r13		! source line 2102
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1257:
! IF STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1260		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1260
!	jmp	_Label_1259
_Label_1259:
! THEN...
	mov	2105,r13		! source line 2105
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0BR",r10
	jmp	_Label_1252
! END IF...
_Label_1260:
! IF STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1265		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1265
	jmp	_Label_1261
_Label_1265:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1269 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1268 = *_temp_1269  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1268) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1270 = _temp_1268 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1271 = _temp_1270 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1267 = *_temp_1271  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1266 = _temp_1267 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1266 then goto _Label_1264		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1264
	jmp	_Label_1261
_Label_1264:
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1274 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1273 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1273) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1275 = _temp_1273 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1272  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1272 then goto _Label_1263 else goto _Label_1261
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1261
	jmp	_Label_1263
_Label_1263:
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1277 = *_temp_1278  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1277) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1279 = _temp_1277 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1276  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1276 then goto _Label_1262 else goto _Label_1261
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1261
	jmp	_Label_1262
_Label_1261:
! THEN...
	mov	2108,r13		! source line 2108
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1262:
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1281 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1280 = *_temp_1281  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1280) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = _temp_1280 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1284 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1283 = *_temp_1284  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1283) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = _temp_1283 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1288 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1287 = *_temp_1288  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1287) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1289 = _temp_1287 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1286  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1286 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   _temp_1290 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=read  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1292		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1292
!	jmp	_Label_1291
_Label_1291:
! THEN...
	mov	2119,r13		! source line 2119
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0BR",r10
	jmp	_Label_1252
! END IF...
_Label_1292:
! END WHILE...
	jmp	_Label_1250
_Label_1252:
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1293 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1293 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1294
	.word	12		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1295
	.word	8
	.word	4
	.word	_Label_1296
	.word	12
	.word	4
	.word	_Label_1297
	.word	16
	.word	4
	.word	_Label_1298
	.word	-20
	.word	4
	.word	_Label_1299
	.word	-24
	.word	4
	.word	_Label_1300
	.word	-28
	.word	4
	.word	_Label_1301
	.word	-32
	.word	4
	.word	_Label_1302
	.word	-36
	.word	4
	.word	_Label_1303
	.word	-40
	.word	4
	.word	_Label_1304
	.word	-44
	.word	4
	.word	_Label_1305
	.word	-48
	.word	4
	.word	_Label_1306
	.word	-52
	.word	4
	.word	_Label_1307
	.word	-56
	.word	4
	.word	_Label_1308
	.word	-60
	.word	4
	.word	_Label_1309
	.word	-64
	.word	4
	.word	_Label_1310
	.word	-68
	.word	4
	.word	_Label_1311
	.word	-72
	.word	4
	.word	_Label_1312
	.word	-76
	.word	4
	.word	_Label_1313
	.word	-9
	.word	1
	.word	_Label_1314
	.word	-80
	.word	4
	.word	_Label_1315
	.word	-84
	.word	4
	.word	_Label_1316
	.word	-88
	.word	4
	.word	_Label_1317
	.word	-10
	.word	1
	.word	_Label_1318
	.word	-92
	.word	4
	.word	_Label_1319
	.word	-96
	.word	4
	.word	_Label_1320
	.word	-100
	.word	4
	.word	_Label_1321
	.word	-104
	.word	4
	.word	_Label_1322
	.word	-108
	.word	4
	.word	_Label_1323
	.word	-112
	.word	4
	.word	_Label_1324
	.word	-116
	.word	4
	.word	_Label_1325
	.word	-120
	.word	4
	.word	_Label_1326
	.word	-124
	.word	4
	.word	_Label_1327
	.word	-128
	.word	4
	.word	_Label_1328
	.word	-132
	.word	4
	.word	_Label_1329
	.word	-136
	.word	4
	.word	_Label_1330
	.word	-140
	.word	4
	.word	_Label_1331
	.word	-144
	.word	4
	.word	_Label_1332
	.word	-148
	.word	4
	.word	_Label_1333
	.word	-152
	.word	4
	.word	_Label_1334
	.word	-156
	.word	4
	.word	_Label_1335
	.word	-160
	.word	4
	.word	_Label_1336
	.word	-164
	.word	4
	.word	_Label_1337
	.word	-11
	.word	1
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
	.word	-12
	.word	1
	.word	_Label_1342
	.word	-180
	.word	4
	.word	_Label_1343
	.word	-184
	.word	4
	.word	_Label_1344
	.word	-188
	.word	4
	.word	_Label_1345
	.word	-192
	.word	4
	.word	_Label_1346
	.word	-196
	.word	4
	.word	_Label_1347
	.word	-200
	.word	4
	.word	_Label_1348
	.word	-204
	.word	4
	.word	_Label_1349
	.word	-208
	.word	4
	.word	_Label_1350
	.word	-212
	.word	4
	.word	_Label_1351
	.word	-216
	.word	4
	.word	_Label_1352
	.word	-220
	.word	4
	.word	_Label_1353
	.word	-224
	.word	4
	.word	_Label_1354
	.word	-228
	.word	4
	.word	_Label_1355
	.word	-232
	.word	4
	.word	_Label_1356
	.word	-236
	.word	4
	.word	_Label_1357
	.word	-240
	.word	4
	.word	_Label_1358
	.word	-244
	.word	4
	.word	_Label_1359
	.word	-248
	.word	4
	.word	_Label_1360
	.word	-252
	.word	4
	.word	_Label_1361
	.word	-256
	.word	4
	.word	_Label_1362
	.word	-260
	.word	4
	.word	_Label_1363
	.word	-264
	.word	4
	.word	_Label_1364
	.word	-268
	.word	4
	.word	_Label_1365
	.word	-272
	.word	4
	.word	_Label_1366
	.word	-276
	.word	4
	.word	_Label_1367
	.word	-280
	.word	4
	.word	_Label_1368
	.word	-284
	.word	4
	.word	_Label_1369
	.word	-288
	.word	4
	.word	_Label_1370
	.word	-292
	.word	4
	.word	_Label_1371
	.word	-296
	.word	4
	.word	_Label_1372
	.word	-13
	.word	1
	.word	0
_Label_1294:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1295:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1296:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1297:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1313:
	.byte	'C'
	.ascii	"_temp_1276\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1317:
	.byte	'C'
	.ascii	"_temp_1272\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1337:
	.byte	'C'
	.ascii	"_temp_1236\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1341:
	.byte	'C'
	.ascii	"_temp_1232\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1363:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1364:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1365:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1367:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1368:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1369:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1370:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1371:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1372:
	.byte	'B'
	.ascii	"read\0"
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
	mov	38,r1
_Label_3941:
	push	r0
	sub	r1,1,r1
	bne	_Label_3941
	mov	2129,r13		! source line 2129
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   _temp_1373 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1374 = _temp_1373 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Send message Lock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1380		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1380
	jmp	_Label_1375
_Label_1380:
!   if fileDesc < 10 then goto _Label_1379		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1379
	jmp	_Label_1375
_Label_1379:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1382 = *_temp_1383  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = _temp_1382 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1384 [fileDesc ] into _temp_1385
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
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
	store	r2,[r14+-128]
!   Data Move: _temp_1381 = *_temp_1385  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1381) then goto _Label_1375
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1375
!	jmp	_Label_1378
_Label_1378:
!   if newCurrentPos >= -1 then goto _Label_1377		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1377
	jmp	_Label_1375
_Label_1377:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1390 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1389 = *_temp_1390  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1389) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _temp_1389 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1391 [fileDesc ] into _temp_1392
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
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
	store	r2,[r14+-100]
!   Data Move: _temp_1388 = *_temp_1392  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1388) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _temp_1388 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1387 = *_temp_1393  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1394 = _temp_1387 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1386 = *_temp_1394  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1386 then goto _Label_1376		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1376
!	jmp	_Label_1375
_Label_1375:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   _temp_1395 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1396 = _temp_1395 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Send message Unlock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1376:
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1398 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1397 = *_temp_1398  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1397) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1399 = _temp_1397 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1399 [fileDesc ] into _temp_1400
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: openFile = *_temp_1400  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1402		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1402
!	jmp	_Label_1401
_Label_1401:
! THEN...
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1403 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1406 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1405 = *_temp_1406  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1405) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = _temp_1405 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1404 = *_temp_1407  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1403 = _temp_1404  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_1408 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1409 = _temp_1408 + 4
	load	[r14+-44],r1
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
! RETURN STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1411 = *_temp_1412  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1411) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1413 = _temp_1411 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1410 = *_temp_1413  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1410  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1402:
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1414 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0SE",r10
!   _temp_1415 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1416 = _temp_1415 + 4
	load	[r14+-16],r1
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
	mov	2145,r13		! source line 2145
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1417
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1418
	.word	8
	.word	4
	.word	_Label_1419
	.word	12
	.word	4
	.word	_Label_1420
	.word	-12
	.word	4
	.word	_Label_1421
	.word	-16
	.word	4
	.word	_Label_1422
	.word	-20
	.word	4
	.word	_Label_1423
	.word	-24
	.word	4
	.word	_Label_1424
	.word	-28
	.word	4
	.word	_Label_1425
	.word	-32
	.word	4
	.word	_Label_1426
	.word	-36
	.word	4
	.word	_Label_1427
	.word	-40
	.word	4
	.word	_Label_1428
	.word	-44
	.word	4
	.word	_Label_1429
	.word	-48
	.word	4
	.word	_Label_1430
	.word	-52
	.word	4
	.word	_Label_1431
	.word	-56
	.word	4
	.word	_Label_1432
	.word	-60
	.word	4
	.word	_Label_1433
	.word	-64
	.word	4
	.word	_Label_1434
	.word	-68
	.word	4
	.word	_Label_1435
	.word	-72
	.word	4
	.word	_Label_1436
	.word	-76
	.word	4
	.word	_Label_1437
	.word	-80
	.word	4
	.word	_Label_1438
	.word	-84
	.word	4
	.word	_Label_1439
	.word	-88
	.word	4
	.word	_Label_1440
	.word	-92
	.word	4
	.word	_Label_1441
	.word	-96
	.word	4
	.word	_Label_1442
	.word	-100
	.word	4
	.word	_Label_1443
	.word	-104
	.word	4
	.word	_Label_1444
	.word	-108
	.word	4
	.word	_Label_1445
	.word	-112
	.word	4
	.word	_Label_1446
	.word	-116
	.word	4
	.word	_Label_1447
	.word	-120
	.word	4
	.word	_Label_1448
	.word	-124
	.word	4
	.word	_Label_1449
	.word	-128
	.word	4
	.word	_Label_1450
	.word	-132
	.word	4
	.word	_Label_1451
	.word	-136
	.word	4
	.word	_Label_1452
	.word	-140
	.word	4
	.word	_Label_1453
	.word	-144
	.word	4
	.word	_Label_1454
	.word	-148
	.word	4
	.word	_Label_1455
	.word	-152
	.word	4
	.word	_Label_1456
	.word	-156
	.word	4
	.word	0
_Label_1417:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1418:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1419:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1456:
	.byte	'P'
	.ascii	"openFile\0"
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
	mov	17,r1
_Label_3942:
	push	r0
	sub	r1,1,r1
	bne	_Label_3942
	mov	2150,r13		! source line 2150
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1460		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1460
	jmp	_Label_1457
_Label_1460:
!   if fileDesc < 10 then goto _Label_1459		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1459
	jmp	_Label_1457
_Label_1459:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1462 = *_temp_1463  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1462) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1464 = _temp_1462 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1464 [fileDesc ] into _temp_1465
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1461 = *_temp_1465  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1461) then goto _Label_1457
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1457
	jmp	_Label_1458
_Label_1457:
	jmp	_Label_1466
_Label_1458:
! ELSE...
	mov	2153,r13		! source line 2153
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1469 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1468 = *_temp_1469  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1468) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1470 = _temp_1468 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1470 [fileDesc ] into _temp_1471
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: _temp_1467 = *_temp_1471  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1472 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1467  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1474 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1473 = *_temp_1474  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1473) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1475 = _temp_1473 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1475 [fileDesc ] into _temp_1476
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1476 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1466:
! RETURN STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1477
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1478
	.word	8
	.word	4
	.word	_Label_1479
	.word	-12
	.word	4
	.word	_Label_1480
	.word	-16
	.word	4
	.word	_Label_1481
	.word	-20
	.word	4
	.word	_Label_1482
	.word	-24
	.word	4
	.word	_Label_1483
	.word	-28
	.word	4
	.word	_Label_1484
	.word	-32
	.word	4
	.word	_Label_1485
	.word	-36
	.word	4
	.word	_Label_1486
	.word	-40
	.word	4
	.word	_Label_1487
	.word	-44
	.word	4
	.word	_Label_1488
	.word	-48
	.word	4
	.word	_Label_1489
	.word	-52
	.word	4
	.word	_Label_1490
	.word	-56
	.word	4
	.word	_Label_1491
	.word	-60
	.word	4
	.word	_Label_1492
	.word	-64
	.word	4
	.word	_Label_1493
	.word	-68
	.word	4
	.word	0
_Label_1477:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_183_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_183_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3943:
	push	r0
	sub	r1,1,r1
	bne	_Label_3943
	mov	2746,r13		! source line 2746
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1494 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1494  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
!   _temp_1495 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1495) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1497 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1497) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1496 = *_temp_1497  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1495 = _temp_1496  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   _temp_1498 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1500 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1500) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1499 = *_temp_1500  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1498 = _temp_1499  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
!   _temp_1501 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1501) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1503 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1503) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1502 = *_temp_1503  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1501 = _temp_1502  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_183_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1504
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1505
	.word	8
	.word	4
	.word	_Label_1506
	.word	12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	_Label_1508
	.word	-9
	.word	1
	.word	_Label_1509
	.word	-20
	.word	4
	.word	_Label_1510
	.word	-24
	.word	4
	.word	_Label_1511
	.word	-10
	.word	1
	.word	_Label_1512
	.word	-28
	.word	4
	.word	_Label_1513
	.word	-32
	.word	4
	.word	_Label_1514
	.word	-11
	.word	1
	.word	_Label_1515
	.word	-36
	.word	4
	.word	_Label_1516
	.word	-12
	.word	1
	.word	_Label_1517
	.word	-40
	.word	4
	.word	_Label_1518
	.word	-44
	.word	4
	.word	0
_Label_1504:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1505:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1506:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1508:
	.byte	'C'
	.ascii	"_temp_1502\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1511:
	.byte	'C'
	.ascii	"_temp_1499\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1514:
	.byte	'C'
	.ascii	"_temp_1496\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1516:
	.byte	'C'
	.ascii	"_temp_1494\0"
	.align
_Label_1517:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1518:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_182_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_182_printFCB,r1
	push	r1
	mov	3,r1
_Label_3944:
	push	r0
	sub	r1,1,r1
	bne	_Label_3944
	mov	2756,r13		! source line 2756
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1520 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1519 = *_temp_1520  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2757,r13		! source line 2757
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2758,r13		! source line 2758
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_182_printFCB:
	.word	_sourceFileName
	.word	_Label_1521
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1522
	.word	8
	.word	4
	.word	_Label_1523
	.word	-12
	.word	4
	.word	_Label_1524
	.word	-16
	.word	4
	.word	0
_Label_1521:
	.ascii	"printFCB\0"
	.align
_Label_1522:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_181_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_181_printOpen,r1
	push	r1
	mov	4,r1
_Label_3945:
	push	r0
	sub	r1,1,r1
	bne	_Label_3945
	mov	2761,r13		! source line 2761
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1525 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1525  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1526 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1527 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2764,r13		! source line 2764
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2765,r13		! source line 2765
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
	mov	2765,r13		! source line 2765
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_181_printOpen:
	.word	_sourceFileName
	.word	_Label_1528
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1529
	.word	8
	.word	4
	.word	_Label_1530
	.word	-12
	.word	4
	.word	_Label_1531
	.word	-16
	.word	4
	.word	_Label_1532
	.word	-20
	.word	4
	.word	0
_Label_1528:
	.ascii	"printOpen\0"
	.align
_Label_1529:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1533
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1533:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1534
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1534:
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
_Label_3946:
	push	r0
	sub	r1,1,r1
	bne	_Label_3946
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1536		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1536
!	jmp	_Label_1535
_Label_1535:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1537 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1537  sizeInBytes=4
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
_Label_1536:
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
	.word	_Label_1539
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1541
	.word	12
	.word	4
	.word	_Label_1542
	.word	-12
	.word	4
	.word	_Label_1543
	.word	-16
	.word	4
	.word	0
_Label_1539:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1540:
	.ascii	"Pself\0"
	.align
_Label_1541:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1537\0"
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
_Label_3947:
	push	r0
	sub	r1,1,r1
	bne	_Label_3947
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
!   if count != 2147483647 then goto _Label_1545		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1545
!	jmp	_Label_1544
_Label_1544:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1546 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
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
_Label_1545:
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
!   if count > 0 then goto _Label_1548		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1548
!	jmp	_Label_1547
_Label_1547:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_1549 = &waitingThreads
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
!   _temp_1550 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1550 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_1551 = &_P_Kernel_readyList
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
_Label_1548:
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
	.word	_Label_1552
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1554
	.word	-12
	.word	4
	.word	_Label_1555
	.word	-16
	.word	4
	.word	_Label_1556
	.word	-20
	.word	4
	.word	_Label_1557
	.word	-24
	.word	4
	.word	_Label_1558
	.word	-28
	.word	4
	.word	_Label_1559
	.word	-32
	.word	4
	.word	0
_Label_1552:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1553:
	.ascii	"Pself\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1558:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1559:
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
_Label_3948:
	push	r0
	sub	r1,1,r1
	bne	_Label_3948
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
!   if count != -2147483648 then goto _Label_1561		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1561
!	jmp	_Label_1560
_Label_1560:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1562 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1562  sizeInBytes=4
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
_Label_1561:
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
!   if count >= 0 then goto _Label_1564		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1564
!	jmp	_Label_1563
_Label_1563:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_1565 = &waitingThreads
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
_Label_1564:
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
	.word	_Label_1566
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1567
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1568
	.word	-12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	_Label_1570
	.word	-20
	.word	4
	.word	0
_Label_1566:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1567:
	.ascii	"Pself\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1571
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1571:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1572
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1572:
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
_Label_3949:
	push	r0
	sub	r1,1,r1
	bne	_Label_3949
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
	.word	_Label_1574
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1576
	.word	-12
	.word	4
	.word	0
_Label_1574:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1575:
	.ascii	"Pself\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1573\0"
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
_Label_3950:
	push	r0
	sub	r1,1,r1
	bne	_Label_3950
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1578		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1578
!	jmp	_Label_1577
_Label_1577:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1579 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
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
_Label_1578:
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
!   if heldBy == 0 then goto _Label_1583		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1583
!   _temp_1582 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1584
_Label_1583:
!   _temp_1582 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1584:
!   if _temp_1582 then goto _Label_1581 else goto _Label_1580
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1580
	jmp	_Label_1581
_Label_1580:
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
	jmp	_Label_1585
_Label_1581:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_1586 = &waitingThreads
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
_Label_1585:
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
	.word	_Label_1587
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1589
	.word	-16
	.word	4
	.word	_Label_1590
	.word	-9
	.word	1
	.word	_Label_1591
	.word	-20
	.word	4
	.word	_Label_1592
	.word	-24
	.word	4
	.word	0
_Label_1587:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1588:
	.ascii	"Pself\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1590:
	.byte	'C'
	.ascii	"_temp_1582\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1592:
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
_Label_3951:
	push	r0
	sub	r1,1,r1
	bne	_Label_3951
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1594		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1594
!	jmp	_Label_1593
_Label_1593:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1595 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1595  sizeInBytes=4
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
_Label_1594:
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
!   _temp_1596 = &waitingThreads
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
!   if t == 0 then goto _Label_1598		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1598
!	jmp	_Label_1597
_Label_1597:
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
!   _temp_1599 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1599 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_1600 = &_P_Kernel_readyList
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
	jmp	_Label_1601
_Label_1598:
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
_Label_1601:
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
	.word	_Label_1602
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-32
	.word	4
	.word	0
_Label_1602:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1609:
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
_Label_3952:
	push	r0
	sub	r1,1,r1
	bne	_Label_3952
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1612		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1612
!	jmp	_Label_1611
_Label_1611:
!   _temp_1610 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1613
_Label_1612:
!   _temp_1610 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1613:
!   ReturnResult: _temp_1610  (sizeInBytes=1)
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
	.word	_Label_1614
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1616
	.word	-9
	.word	1
	.word	0
_Label_1614:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1615:
	.ascii	"Pself\0"
	.align
_Label_1616:
	.byte	'C'
	.ascii	"_temp_1610\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1617
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1617:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1618
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1618:
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
_Label_3953:
	push	r0
	sub	r1,1,r1
	bne	_Label_3953
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
	.word	_Label_1620
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	-12
	.word	4
	.word	0
_Label_1620:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1619\0"
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
_Label_3954:
	push	r0
	sub	r1,1,r1
	bne	_Label_3954
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
!   Retrieve Result: targetName=_temp_1625  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1625 then goto _Label_1624 else goto _Label_1623
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1623
	jmp	_Label_1624
_Label_1623:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1626 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1626  sizeInBytes=4
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
_Label_1624:
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
!   _temp_1627 = &waitingThreads
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
	.word	_Label_1628
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1630
	.word	12
	.word	4
	.word	_Label_1631
	.word	-16
	.word	4
	.word	_Label_1632
	.word	-20
	.word	4
	.word	_Label_1633
	.word	-9
	.word	1
	.word	_Label_1634
	.word	-24
	.word	4
	.word	0
_Label_1628:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1629:
	.ascii	"Pself\0"
	.align
_Label_1630:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1633:
	.byte	'C'
	.ascii	"_temp_1625\0"
	.align
_Label_1634:
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
_Label_3955:
	push	r0
	sub	r1,1,r1
	bne	_Label_3955
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
!   Retrieve Result: targetName=_temp_1637  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1637 then goto _Label_1636 else goto _Label_1635
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1635
	jmp	_Label_1636
_Label_1635:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1638 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1638  sizeInBytes=4
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
_Label_1636:
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
!   _temp_1639 = &waitingThreads
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
!   if t == 0 then goto _Label_1641		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1641
!	jmp	_Label_1640
_Label_1640:
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
!   _temp_1642 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1642 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_1643 = &_P_Kernel_readyList
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
_Label_1641:
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
	.word	_Label_1644
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1645
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1646
	.word	12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-20
	.word	4
	.word	_Label_1649
	.word	-24
	.word	4
	.word	_Label_1650
	.word	-28
	.word	4
	.word	_Label_1651
	.word	-9
	.word	1
	.word	_Label_1652
	.word	-32
	.word	4
	.word	_Label_1653
	.word	-36
	.word	4
	.word	0
_Label_1644:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1645:
	.ascii	"Pself\0"
	.align
_Label_1646:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1651:
	.byte	'C'
	.ascii	"_temp_1637\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1653:
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
_Label_3956:
	push	r0
	sub	r1,1,r1
	bne	_Label_3956
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
!   Retrieve Result: targetName=_temp_1656  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1656 then goto _Label_1655 else goto _Label_1654
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1654
	jmp	_Label_1655
_Label_1654:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1657 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
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
_Label_1655:
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
_Label_1658:
!	jmp	_Label_1659
_Label_1659:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_1661 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1662
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1662
	jmp	_Label_1663
_Label_1662:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_1660
! END IF...
_Label_1663:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1664 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1664 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_1665 = &_P_Kernel_readyList
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
	jmp	_Label_1658
_Label_1660:
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
	.word	_Label_1666
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1668
	.word	12
	.word	4
	.word	_Label_1669
	.word	-16
	.word	4
	.word	_Label_1670
	.word	-20
	.word	4
	.word	_Label_1671
	.word	-24
	.word	4
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-9
	.word	1
	.word	_Label_1674
	.word	-32
	.word	4
	.word	_Label_1675
	.word	-36
	.word	4
	.word	0
_Label_1666:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1667:
	.ascii	"Pself\0"
	.align
_Label_1668:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1673:
	.byte	'C'
	.ascii	"_temp_1656\0"
	.align
_Label_1674:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1675:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1676
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
_Label_1676:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1677
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1677:
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
_Label_3957:
	push	r0
	sub	r1,1,r1
	bne	_Label_3957
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
!   _temp_1678 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1678) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1678 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_1679 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1679 [0 ] into _temp_1680
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
!   Data Move: *_temp_1680 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_1681 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1681 [999 ] into _temp_1682
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
!   Data Move: *_temp_1682 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_1683 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1683 [999 ] into _temp_1684
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
!   stackTop = _temp_1684		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_1685 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1687 = &_temp_1686
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1687 = _temp_1687 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1689:
!   Data Move: *_temp_1687 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1687 = _temp_1687 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1688 = _temp_1688 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1688) then goto _Label_1689
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1689
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1690 = &_temp_1686
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3958
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3958:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1685 = *_temp_1690  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3959:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3959
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
!   _temp_1691 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1693 = &_temp_1692
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1693 = _temp_1693 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1695:
!   Data Move: *_temp_1693 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1693 = _temp_1693 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1694 = _temp_1694 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1694) then goto _Label_1695
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1695
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1696 = &_temp_1692
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3960
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3960:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1691 = *_temp_1696  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3961:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3961
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
	.word	_Label_1697
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1699
	.word	12
	.word	4
	.word	_Label_1700
	.word	-12
	.word	4
	.word	_Label_1701
	.word	-16
	.word	4
	.word	_Label_1702
	.word	-20
	.word	4
	.word	_Label_1703
	.word	-84
	.word	64
	.word	_Label_1704
	.word	-88
	.word	4
	.word	_Label_1705
	.word	-92
	.word	4
	.word	_Label_1706
	.word	-96
	.word	4
	.word	_Label_1707
	.word	-100
	.word	4
	.word	_Label_1708
	.word	-156
	.word	56
	.word	_Label_1709
	.word	-160
	.word	4
	.word	_Label_1710
	.word	-164
	.word	4
	.word	_Label_1711
	.word	-168
	.word	4
	.word	_Label_1712
	.word	-172
	.word	4
	.word	_Label_1713
	.word	-176
	.word	4
	.word	_Label_1714
	.word	-180
	.word	4
	.word	_Label_1715
	.word	-184
	.word	4
	.word	_Label_1716
	.word	-188
	.word	4
	.word	0
_Label_1697:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1698:
	.ascii	"Pself\0"
	.align
_Label_1699:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1678\0"
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
_Label_3962:
	push	r0
	sub	r1,1,r1
	bne	_Label_3962
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
!   _temp_1717 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1717  (sizeInBytes=4)
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
!   _temp_1719 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1718  sizeInBytes=4
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
	.word	_Label_1720
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1721
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1722
	.word	12
	.word	4
	.word	_Label_1723
	.word	16
	.word	4
	.word	_Label_1724
	.word	-12
	.word	4
	.word	_Label_1725
	.word	-16
	.word	4
	.word	_Label_1726
	.word	-20
	.word	4
	.word	_Label_1727
	.word	-24
	.word	4
	.word	_Label_1728
	.word	-28
	.word	4
	.word	0
_Label_1720:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1721:
	.ascii	"Pself\0"
	.align
_Label_1722:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1723:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1727:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1728:
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
_Label_3963:
	push	r0
	sub	r1,1,r1
	bne	_Label_3963
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1731 == _P_Kernel_currentThread then goto _Label_1730		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1730
!	jmp	_Label_1729
_Label_1729:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1732 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
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
_Label_1730:
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
!   _temp_1733 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1735		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1735
!	jmp	_Label_1734
_Label_1734:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1737		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1737
!	jmp	_Label_1736
_Label_1736:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1738 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1738  sizeInBytes=4
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
_Label_1737:
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
!   _temp_1740 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1739  sizeInBytes=4
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
_Label_1735:
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
	.word	_Label_1741
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	-12
	.word	4
	.word	_Label_1744
	.word	-16
	.word	4
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-32
	.word	4
	.word	_Label_1749
	.word	-36
	.word	4
	.word	_Label_1750
	.word	-40
	.word	4
	.word	_Label_1751
	.word	-44
	.word	4
	.word	0
_Label_1741:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1749:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1750:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1751:
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
_Label_3964:
	push	r0
	sub	r1,1,r1
	bne	_Label_3964
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1753		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1753
!	jmp	_Label_1752
_Label_1752:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1754 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
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
_Label_1753:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1757 == _P_Kernel_currentThread then goto _Label_1756		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1756
!	jmp	_Label_1755
_Label_1755:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1758 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
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
_Label_1756:
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
!   _temp_1759 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1760
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1760
	jmp	_Label_1761
_Label_1760:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1762 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1762  sizeInBytes=4
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
_Label_1761:
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
	.word	_Label_1763
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1765
	.word	-12
	.word	4
	.word	_Label_1766
	.word	-16
	.word	4
	.word	_Label_1767
	.word	-20
	.word	4
	.word	_Label_1768
	.word	-24
	.word	4
	.word	_Label_1769
	.word	-28
	.word	4
	.word	_Label_1770
	.word	-32
	.word	4
	.word	0
_Label_1763:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1764:
	.ascii	"Pself\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1770:
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
_Label_3965:
	push	r0
	sub	r1,1,r1
	bne	_Label_3965
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_1774 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1774 [0 ] into _temp_1775
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
!   Data Move: _temp_1773 = *_temp_1775  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1773 == 606348324 then goto _Label_1772		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1772
!	jmp	_Label_1771
_Label_1771:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1776 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1776  sizeInBytes=4
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
	jmp	_Label_1777
_Label_1772:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_1781 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1781 [999 ] into _temp_1782
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
!   Data Move: _temp_1780 = *_temp_1782  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1780 == 606348324 then goto _Label_1779		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1779
!	jmp	_Label_1778
_Label_1778:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1783 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
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
_Label_1779:
! END IF...
_Label_1777:
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
	.word	_Label_1784
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1786
	.word	-12
	.word	4
	.word	_Label_1787
	.word	-16
	.word	4
	.word	_Label_1788
	.word	-20
	.word	4
	.word	_Label_1789
	.word	-24
	.word	4
	.word	_Label_1790
	.word	-28
	.word	4
	.word	_Label_1791
	.word	-32
	.word	4
	.word	_Label_1792
	.word	-36
	.word	4
	.word	_Label_1793
	.word	-40
	.word	4
	.word	0
_Label_1784:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1785:
	.ascii	"Pself\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1773\0"
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
_Label_3966:
	push	r0
	sub	r1,1,r1
	bne	_Label_3966
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
!   _temp_1794 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
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
!   _temp_1795 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1796  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1797 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1798 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1798  sizeInBytes=4
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
!   _temp_1803 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1804 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1803  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1799:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1804 then goto _Label_1802		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1802
_Label_1800:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1805 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1806 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1807 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1809 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1809 [i ] into _temp_1810
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
!   Data Move: _temp_1808 = *_temp_1810  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1811 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1811  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1813 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1813 [i ] into _temp_1814
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
!   Data Move: _temp_1812 = *_temp_1814  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1815 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1801:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1799
! END FOR
_Label_1802:
! CALL STATEMENT...
!   _temp_1816 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-116]
!   _temp_1817 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1816  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1817  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1818 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-108]
!   _temp_1820 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1820 [0 ] into _temp_1821
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
!   _temp_1819 = _temp_1821		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1819  sizeInBytes=4
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
	be	_Label_1824
	cmp	r1,2
	be	_Label_1825
	cmp	r1,3
	be	_Label_1826
	cmp	r1,4
	be	_Label_1827
	cmp	r1,5
	be	_Label_1828
	jmp	_Label_1822
! CASE 1...
_Label_1824:
! CALL STATEMENT...
!   _temp_1829 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_1823
! CASE 2...
_Label_1825:
! CALL STATEMENT...
!   _temp_1830 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1830  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_1823
! CASE 3...
_Label_1826:
! CALL STATEMENT...
!   _temp_1831 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1831  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_1823
! CASE 4...
_Label_1827:
! CALL STATEMENT...
!   _temp_1832 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1832  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_1823
! CASE 5...
_Label_1828:
! CALL STATEMENT...
!   _temp_1833 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1833  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1823
! DEFAULT CASE...
_Label_1822:
! CALL STATEMENT...
!   _temp_1834 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1834  sizeInBytes=4
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
_Label_1823:
! CALL STATEMENT...
!   _temp_1835 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1835  sizeInBytes=4
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
!   _temp_1836 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1836  sizeInBytes=4
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
!   _temp_1841 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1842 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1841  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1837:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1842 then goto _Label_1840		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1840
_Label_1838:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1843 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1844 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1845 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1847 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1847 [i ] into _temp_1848
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
!   Data Move: _temp_1846 = *_temp_1848  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1846  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1849 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1849  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1851 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1851 [i ] into _temp_1852
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
!   Data Move: _temp_1850 = *_temp_1852  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1850  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1853 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1839:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1837
! END FOR
_Label_1840:
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
	.word	_Label_1854
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1856
	.word	-12
	.word	4
	.word	_Label_1857
	.word	-16
	.word	4
	.word	_Label_1858
	.word	-20
	.word	4
	.word	_Label_1859
	.word	-24
	.word	4
	.word	_Label_1860
	.word	-28
	.word	4
	.word	_Label_1861
	.word	-32
	.word	4
	.word	_Label_1862
	.word	-36
	.word	4
	.word	_Label_1863
	.word	-40
	.word	4
	.word	_Label_1864
	.word	-44
	.word	4
	.word	_Label_1865
	.word	-48
	.word	4
	.word	_Label_1866
	.word	-52
	.word	4
	.word	_Label_1867
	.word	-56
	.word	4
	.word	_Label_1868
	.word	-60
	.word	4
	.word	_Label_1869
	.word	-64
	.word	4
	.word	_Label_1870
	.word	-68
	.word	4
	.word	_Label_1871
	.word	-72
	.word	4
	.word	_Label_1872
	.word	-76
	.word	4
	.word	_Label_1873
	.word	-80
	.word	4
	.word	_Label_1874
	.word	-84
	.word	4
	.word	_Label_1875
	.word	-88
	.word	4
	.word	_Label_1876
	.word	-92
	.word	4
	.word	_Label_1877
	.word	-96
	.word	4
	.word	_Label_1878
	.word	-100
	.word	4
	.word	_Label_1879
	.word	-104
	.word	4
	.word	_Label_1880
	.word	-108
	.word	4
	.word	_Label_1881
	.word	-112
	.word	4
	.word	_Label_1882
	.word	-116
	.word	4
	.word	_Label_1883
	.word	-120
	.word	4
	.word	_Label_1884
	.word	-124
	.word	4
	.word	_Label_1885
	.word	-128
	.word	4
	.word	_Label_1886
	.word	-132
	.word	4
	.word	_Label_1887
	.word	-136
	.word	4
	.word	_Label_1888
	.word	-140
	.word	4
	.word	_Label_1889
	.word	-144
	.word	4
	.word	_Label_1890
	.word	-148
	.word	4
	.word	_Label_1891
	.word	-152
	.word	4
	.word	_Label_1892
	.word	-156
	.word	4
	.word	_Label_1893
	.word	-160
	.word	4
	.word	_Label_1894
	.word	-164
	.word	4
	.word	_Label_1895
	.word	-168
	.word	4
	.word	_Label_1896
	.word	-172
	.word	4
	.word	_Label_1897
	.word	-176
	.word	4
	.word	_Label_1898
	.word	-180
	.word	4
	.word	_Label_1899
	.word	-184
	.word	4
	.word	_Label_1900
	.word	-188
	.word	4
	.word	_Label_1901
	.word	-192
	.word	4
	.word	_Label_1902
	.word	-196
	.word	4
	.word	0
_Label_1854:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1855:
	.ascii	"Pself\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1901:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1903
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1903:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1904
	.word	_sourceFileName
	.word	191		! line number
	.word	45860		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1904:
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
_Label_3967:
	push	r0
	sub	r1,1,r1
	bne	_Label_3967
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1905 = _StringConst_79
	set	_StringConst_79,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1905  sizeInBytes=4
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
!   _temp_1906 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50068,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1908 = &_temp_1907
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1908 = _temp_1908 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1910 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3968:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3968
!   _temp_1910 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	11,r1
	store	r1,[r14+-4252]
_Label_1912:
!   Data Move: *_temp_1908 = _temp_1910  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3969:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3969
!   _temp_1908 = _temp_1908 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1909 = _temp_1909 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1909) then goto _Label_1912
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1912
!   Initialize the array size...
	mov	11,r1
	set	-50064,r2
	store	r1,[r14+r2]
!   _temp_1913 = &_temp_1907
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 11
	set	-50068,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3970
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3970:
!   make sure array has size 11
	load	[r14+-80],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1906 = *_temp_1913  (sizeInBytes=45808)
	load	[r14+-80],r5
	set	-50068,r4
	load	[r14+r4],r4
	mov	11452,r3
_Label_3971:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3971
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
!   _temp_1916 = &tmLock
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
!   _temp_1918 = &threadFreed
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
!   _temp_1923 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1924 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1923  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-50076,r2
	store	r1,[r14+r2]
_Label_1919:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1924 then goto _Label_1922		
	set	-50076,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1922
_Label_1920:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_1925 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   _temp_1926 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1926 [i ] into _temp_1927
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
!   Prepare Argument: offset=12  value=_temp_1925  sizeInBytes=4
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
!   _temp_1928 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1928 [i ] into _temp_1929
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
!   _temp_1930 = _temp_1929 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1930 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_1932 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1932 [i ] into _temp_1933
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
!   _temp_1931 = _temp_1933		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1934 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1931  sizeInBytes=4
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
_Label_1921:
!   i = i + 1
	set	-50076,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
	jmp	_Label_1919
! END FOR
_Label_1922:
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
	.word	_Label_1935
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1943
	.word	-36
	.word	4
	.word	_Label_1944
	.word	-40
	.word	4
	.word	_Label_1945
	.word	-44
	.word	4
	.word	_Label_1946
	.word	-48
	.word	4
	.word	_Label_1947
	.word	-52
	.word	4
	.word	_Label_1948
	.word	-56
	.word	4
	.word	_Label_1949
	.word	-60
	.word	4
	.word	_Label_1950
	.word	-64
	.word	4
	.word	_Label_1951
	.word	-68
	.word	4
	.word	_Label_1952
	.word	-72
	.word	4
	.word	_Label_1953
	.word	-76
	.word	4
	.word	_Label_1954
	.word	-80
	.word	4
	.word	_Label_1955
	.word	-84
	.word	4
	.word	_Label_1956
	.word	-4248
	.word	4164
	.word	_Label_1957
	.word	-4252
	.word	4
	.word	_Label_1958
	.word	-4256
	.word	4
	.word	_Label_1959
	.word	-50064
	.word	45808
	.word	_Label_1960
	.word	-50068
	.word	4
	.word	_Label_1961
	.word	-50072
	.word	4
	.word	_Label_1962
	.word	-50076
	.word	4
	.word	0
_Label_1935:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1962:
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
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
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
!   _temp_1963 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1963  sizeInBytes=4
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
!   _temp_1968 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1969 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1968  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1964:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1969 then goto _Label_1967		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1967
_Label_1965:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1970 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
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
!   _temp_1971 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1971  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1973 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1973 [i ] into _temp_1974
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
!   _temp_1972 = _temp_1974		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1972  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1966:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1964
! END FOR
_Label_1967:
! CALL STATEMENT...
!   _temp_1975 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1976 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1977 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1976  sizeInBytes=4
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
	.word	_Label_1978
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1980
	.word	-12
	.word	4
	.word	_Label_1981
	.word	-16
	.word	4
	.word	_Label_1982
	.word	-20
	.word	4
	.word	_Label_1983
	.word	-24
	.word	4
	.word	_Label_1984
	.word	-28
	.word	4
	.word	_Label_1985
	.word	-32
	.word	4
	.word	_Label_1986
	.word	-36
	.word	4
	.word	_Label_1987
	.word	-40
	.word	4
	.word	_Label_1988
	.word	-44
	.word	4
	.word	_Label_1989
	.word	-48
	.word	4
	.word	_Label_1990
	.word	-52
	.word	4
	.word	_Label_1991
	.word	-56
	.word	4
	.word	_Label_1992
	.word	-60
	.word	4
	.word	0
_Label_1978:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1979:
	.ascii	"Pself\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1991:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1992:
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
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1993 = &tmLock
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
_Label_1994:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1997 = &freeList
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
!   if result==true then goto _Label_1995 else goto _Label_1996
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1996
	jmp	_Label_1995
_Label_1995:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_1998 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1999 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1998  sizeInBytes=4
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
	jmp	_Label_1994
_Label_1996:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_2000 = &freeList
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
!   _temp_2001 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2001 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_2002 = &tmLock
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
	.word	_Label_2003
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2005
	.word	-12
	.word	4
	.word	_Label_2006
	.word	-16
	.word	4
	.word	_Label_2007
	.word	-20
	.word	4
	.word	_Label_2008
	.word	-24
	.word	4
	.word	_Label_2009
	.word	-28
	.word	4
	.word	_Label_2010
	.word	-32
	.word	4
	.word	_Label_2011
	.word	-36
	.word	4
	.word	_Label_2012
	.word	-40
	.word	4
	.word	0
_Label_2003:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2004:
	.ascii	"Pself\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2012:
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
_Label_3974:
	push	r0
	sub	r1,1,r1
	bne	_Label_3974
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2013 = &tmLock
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
!   _temp_2014 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2014 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_2015 = &freeList
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
!   _temp_2016 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2017 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2016  sizeInBytes=4
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
!   _temp_2018 = &tmLock
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
	.word	_Label_2019
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2021
	.word	12
	.word	4
	.word	_Label_2022
	.word	-12
	.word	4
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
	.word	-28
	.word	4
	.word	_Label_2027
	.word	-32
	.word	4
	.word	0
_Label_2019:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2020:
	.ascii	"Pself\0"
	.align
_Label_2021:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2028
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2028:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2029
	.word	_sourceFileName
	.word	212		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2029:
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
	mov	18,r1
_Label_3975:
	push	r0
	sub	r1,1,r1
	bne	_Label_3975
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
_Label_3976:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3976
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_2031 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   _temp_2032 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2034 = &_temp_2033
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2034 = _temp_2034 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2036:
!   Data Move: *_temp_2034 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2034 = _temp_2034 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2035 = _temp_2035 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2035) then goto _Label_2036
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2036
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2037 = &_temp_2033
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3977
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3977:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2032 = *_temp_2037  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3978:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3978
! RETURN STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2038
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2039
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2040
	.word	-12
	.word	4
	.word	_Label_2041
	.word	-16
	.word	4
	.word	_Label_2042
	.word	-20
	.word	4
	.word	_Label_2043
	.word	-64
	.word	44
	.word	_Label_2044
	.word	-68
	.word	4
	.word	_Label_2045
	.word	-72
	.word	4
	.word	_Label_2046
	.word	-76
	.word	4
	.word	0
_Label_2038:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2039:
	.ascii	"Pself\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2030\0"
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
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2047) then goto _runtimeErrorNullPointer
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
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_2048 = &addrSpace
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
!   _temp_2049 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	841,r13		! source line 841
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
	.word	_Label_2050
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2052
	.word	-12
	.word	4
	.word	_Label_2053
	.word	-16
	.word	4
	.word	_Label_2054
	.word	-20
	.word	4
	.word	0
_Label_2050:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2051:
	.ascii	"Pself\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2047\0"
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
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2055 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2057 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2058 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2058  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2060		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2060
!	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2061 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2062
_Label_2060:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2064		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2064
!	jmp	_Label_2063
_Label_2063:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2065 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2065  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2066
_Label_2064:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2068		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2068
!	jmp	_Label_2067
_Label_2067:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2069 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2069  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2070
_Label_2068:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2071 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	862,r13		! source line 862
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2070:
! END IF...
_Label_2066:
! END IF...
_Label_2062:
! CALL STATEMENT...
!   _temp_2072 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2073 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	868,r13		! source line 868
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
	.word	_Label_2074
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2075
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2076
	.word	-12
	.word	4
	.word	_Label_2077
	.word	-16
	.word	4
	.word	_Label_2078
	.word	-20
	.word	4
	.word	_Label_2079
	.word	-24
	.word	4
	.word	_Label_2080
	.word	-28
	.word	4
	.word	_Label_2081
	.word	-32
	.word	4
	.word	_Label_2082
	.word	-36
	.word	4
	.word	_Label_2083
	.word	-40
	.word	4
	.word	_Label_2084
	.word	-44
	.word	4
	.word	_Label_2085
	.word	-48
	.word	4
	.word	0
_Label_2074:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2075:
	.ascii	"Pself\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2086
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
_Label_2086:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2087
	.word	_sourceFileName
	.word	232		! line number
	.word	1924		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2087:
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
	mov	531,r1
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_2088 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-2120]
!   NEW ARRAY Constructor...
!   _temp_2090 = &_temp_2089
	add	r14,-2116,r1
	store	r1,[r14+-264]
!   _temp_2090 = _temp_2090 + 4
	load	[r14+-264],r1
	add	r1,4,r1
	store	r1,[r14+-264]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2092 = zeros  (sizeInBytes=168)
	add	r14,-256,r4
	mov	42,r3
_Label_3982:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3982
!   _temp_2092 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-256]
	mov	11,r1
	store	r1,[r14+-260]
_Label_2094:
!   Data Move: *_temp_2090 = _temp_2092  (sizeInBytes=168)
	add	r14,-256,r5
	load	[r14+-264],r4
	mov	42,r3
_Label_3983:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3983
!   _temp_2090 = _temp_2090 + 168
	load	[r14+-264],r1
	add	r1,168,r1
	store	r1,[r14+-264]
!   _temp_2091 = _temp_2091 + -1
	load	[r14+-260],r1
	add	r1,-1,r1
	store	r1,[r14+-260]
!   if intNotZero (_temp_2091) then goto _Label_2094
	load	[r14+-260],r1
	cmp	r1,r0
	bne	_Label_2094
!   Initialize the array size...
	mov	11,r1
	store	r1,[r14+-2116]
!   _temp_2095 = &_temp_2089
	add	r14,-2116,r1
	store	r1,[r14+-84]
!   make sure array has size 11
	load	[r14+-2120],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3984
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3984:
!   make sure array has size 11
	load	[r14+-84],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2088 = *_temp_2095  (sizeInBytes=1852)
	load	[r14+-84],r5
	load	[r14+-2120],r4
	mov	463,r3
_Label_3985:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3985
! ASSIGNMENT STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1856,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1856]
! SEND STATEMENT...
	mov	888,r13		! source line 888
	mov	"\0\0SE",r10
!   _temp_2097 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
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
	mov	889,r13		! source line 889
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1876,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1876]
! SEND STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0SE",r10
!   _temp_2099 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
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
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1892,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1892]
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1904,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1904]
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_2102 = &aProcessDied
	load	[r14+8],r1
	add	r1,1904,r1
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
	mov	894,r13		! source line 894
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2107 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2108 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2107  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-2124]
_Label_2103:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2108 then goto _Label_2106		
	load	[r14+-2124],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2106
_Label_2104:
	mov	894,r13		! source line 894
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_2109 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2109 [i ] into _temp_2110
!     make sure index expr is >= 0
	load	[r14+-2124],r2
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
	set	168,r3
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
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_2112 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2112 [i ] into _temp_2113
!     make sure index expr is >= 0
	load	[r14+-2124],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2111 = _temp_2113		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2114 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2111  sizeInBytes=4
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
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   _temp_2115 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2115 [i ] into _temp_2116
!     make sure index expr is >= 0
	load	[r14+-2124],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2117 = _temp_2116 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2117 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2105:
!   i = i + 1
	load	[r14+-2124],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2124]
	jmp	_Label_2103
! END FOR
_Label_2106:
! ASSIGNMENT STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1920]
! RETURN STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0RE",r10
	add	r15,2128,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2118
	.word	4		! total size of parameters
	.word	2124		! frame size = 2124
	.word	_Label_2119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2120
	.word	-12
	.word	4
	.word	_Label_2121
	.word	-16
	.word	4
	.word	_Label_2122
	.word	-20
	.word	4
	.word	_Label_2123
	.word	-24
	.word	4
	.word	_Label_2124
	.word	-28
	.word	4
	.word	_Label_2125
	.word	-32
	.word	4
	.word	_Label_2126
	.word	-36
	.word	4
	.word	_Label_2127
	.word	-40
	.word	4
	.word	_Label_2128
	.word	-44
	.word	4
	.word	_Label_2129
	.word	-48
	.word	4
	.word	_Label_2130
	.word	-52
	.word	4
	.word	_Label_2131
	.word	-56
	.word	4
	.word	_Label_2132
	.word	-60
	.word	4
	.word	_Label_2133
	.word	-64
	.word	4
	.word	_Label_2134
	.word	-68
	.word	4
	.word	_Label_2135
	.word	-72
	.word	4
	.word	_Label_2136
	.word	-76
	.word	4
	.word	_Label_2137
	.word	-80
	.word	4
	.word	_Label_2138
	.word	-84
	.word	4
	.word	_Label_2139
	.word	-88
	.word	4
	.word	_Label_2140
	.word	-256
	.word	168
	.word	_Label_2141
	.word	-260
	.word	4
	.word	_Label_2142
	.word	-264
	.word	4
	.word	_Label_2143
	.word	-2116
	.word	1852
	.word	_Label_2144
	.word	-2120
	.word	4
	.word	_Label_2145
	.word	-2124
	.word	4
	.word	0
_Label_2118:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2119:
	.ascii	"Pself\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2145:
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
_Label_3986:
	push	r0
	sub	r1,1,r1
	bne	_Label_3986
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
!   _temp_2146 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2146  sizeInBytes=4
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
!   _temp_2151 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2152 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2151  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2147:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2152 then goto _Label_2150		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2150
_Label_2148:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2153 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2153  sizeInBytes=4
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
!   _temp_2154 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2154  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_2155 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2155 [i ] into _temp_2156
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
	set	168,r3
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
_Label_2149:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2147
! END FOR
_Label_2150:
! CALL STATEMENT...
!   _temp_2157 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2158 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2159 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2158  sizeInBytes=4
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
	.word	_Label_2160
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2161
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2162
	.word	-12
	.word	4
	.word	_Label_2163
	.word	-16
	.word	4
	.word	_Label_2164
	.word	-20
	.word	4
	.word	_Label_2165
	.word	-24
	.word	4
	.word	_Label_2166
	.word	-28
	.word	4
	.word	_Label_2167
	.word	-32
	.word	4
	.word	_Label_2168
	.word	-36
	.word	4
	.word	_Label_2169
	.word	-40
	.word	4
	.word	_Label_2170
	.word	-44
	.word	4
	.word	_Label_2171
	.word	-48
	.word	4
	.word	_Label_2172
	.word	-52
	.word	4
	.word	_Label_2173
	.word	-56
	.word	4
	.word	0
_Label_2160:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2161:
	.ascii	"Pself\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2172:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2173:
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
_Label_3987:
	push	r0
	sub	r1,1,r1
	bne	_Label_3987
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
!   _temp_2174 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
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
!   _temp_2179 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2180 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2179  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2175:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2180 then goto _Label_2178		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2178
_Label_2176:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2181 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
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
!   _temp_2182 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2182 [i ] into _temp_2183
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
	set	168,r3
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
_Label_2177:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2175
! END FOR
_Label_2178:
! CALL STATEMENT...
!   _temp_2184 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2184  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_2185 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2186 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2185  sizeInBytes=4
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
	.word	_Label_2187
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2189
	.word	-12
	.word	4
	.word	_Label_2190
	.word	-16
	.word	4
	.word	_Label_2191
	.word	-20
	.word	4
	.word	_Label_2192
	.word	-24
	.word	4
	.word	_Label_2193
	.word	-28
	.word	4
	.word	_Label_2194
	.word	-32
	.word	4
	.word	_Label_2195
	.word	-36
	.word	4
	.word	_Label_2196
	.word	-40
	.word	4
	.word	_Label_2197
	.word	-44
	.word	4
	.word	_Label_2198
	.word	-48
	.word	4
	.word	_Label_2199
	.word	-52
	.word	4
	.word	0
_Label_2187:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2188:
	.ascii	"Pself\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2198:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2199:
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
_Label_3988:
	push	r0
	sub	r1,1,r1
	bne	_Label_3988
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2200 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
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
_Label_2201:
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2204 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2202 else goto _Label_2203
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2203
	jmp	_Label_2202
_Label_2202:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_2205 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-32]
!   _temp_2206 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2205  sizeInBytes=4
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
	jmp	_Label_2201
_Label_2203:
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_2207 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
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
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1920],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1920]
! ASSIGNMENT STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2208 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2208 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2209 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2209 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1920],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2210 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
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
	.word	_Label_2211
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2212
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2213
	.word	-12
	.word	4
	.word	_Label_2214
	.word	-16
	.word	4
	.word	_Label_2215
	.word	-20
	.word	4
	.word	_Label_2216
	.word	-24
	.word	4
	.word	_Label_2217
	.word	-28
	.word	4
	.word	_Label_2218
	.word	-32
	.word	4
	.word	_Label_2219
	.word	-36
	.word	4
	.word	_Label_2220
	.word	-40
	.word	4
	.word	_Label_2221
	.word	-44
	.word	4
	.word	0
_Label_2211:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2212:
	.ascii	"Pself\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2221:
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
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_2222 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
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
!   _temp_2223 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2223 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2224 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
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
!   _temp_2225 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-20]
!   _temp_2226 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2225  sizeInBytes=4
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
!   _temp_2227 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
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
	.word	_Label_2228
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2230
	.word	12
	.word	4
	.word	_Label_2231
	.word	-12
	.word	4
	.word	_Label_2232
	.word	-16
	.word	4
	.word	_Label_2233
	.word	-20
	.word	4
	.word	_Label_2234
	.word	-24
	.word	4
	.word	_Label_2235
	.word	-28
	.word	4
	.word	_Label_2236
	.word	-32
	.word	4
	.word	0
_Label_2228:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2229:
	.ascii	"Pself\0"
	.align
_Label_2230:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2222\0"
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
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	986,r13		! source line 986
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_2237 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2238 = _temp_2237 + 1856
	load	[r14+-244],r1
	add	r1,1856,r1
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
	mov	992,r13		! source line 992
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2243 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2244 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2243  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2239:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2244 then goto _Label_2242		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2242
_Label_2240:
	mov	992,r13		! source line 992
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0IF",r10
!   _temp_2248 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2249 = _temp_2248 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2249 [i ] into _temp_2250
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   _temp_2251 = _temp_2250 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2247 = *_temp_2251  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2253 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2252 = *_temp_2253  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2247 != _temp_2252 then goto _Label_2246		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2246
!	jmp	_Label_2245
_Label_2245:
! THEN...
	mov	995,r13		! source line 995
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   _temp_2254 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2255 = _temp_2254 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2255 [i ] into _temp_2256
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   parent = _temp_2256		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2246:
! IF STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0IF",r10
!   _temp_2261 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2262 = _temp_2261 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2262 [i ] into _temp_2263
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   _temp_2264 = _temp_2263 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2260 = *_temp_2264  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2260 != 2 then goto _Label_2258		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2258
!	jmp	_Label_2259
_Label_2259:
!   _temp_2266 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2267 = _temp_2266 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2267 [i ] into _temp_2268
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_2269 = _temp_2268 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2265 = *_temp_2269  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2271 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2270 = *_temp_2271  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2265 != _temp_2270 then goto _Label_2258		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2258
!	jmp	_Label_2257
_Label_2257:
! THEN...
	mov	999,r13		! source line 999
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   _temp_2272 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2273 = _temp_2272 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2273 [i ] into _temp_2274
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_2275 = _temp_2274 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2275 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_2277 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2278 = _temp_2277 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2278 [i ] into _temp_2279
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-112]
!   _temp_2276 = _temp_2279		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2280 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2281 = _temp_2280 + 1892
	load	[r14+-108],r1
	add	r1,1892,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2276  sizeInBytes=4
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
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_2283 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2284 = _temp_2283 + 1856
	load	[r14+-96],r1
	add	r1,1856,r1
	store	r1,[r14+-92]
!   _temp_2282 = _temp_2284		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2285 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2286 = _temp_2285 + 1876
	load	[r14+-88],r1
	add	r1,1876,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2282  sizeInBytes=4
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
_Label_2258:
!   Increment the FOR-LOOP index variable and jump back
_Label_2241:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2239
! END FOR
_Label_2242:
! IF STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0IF",r10
!   if intIsZero (parent) then goto _Label_2288
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2288
!	jmp	_Label_2289
_Label_2289:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2291 = parent + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2290 = *_temp_2291  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2290 != 1 then goto _Label_2288		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2288
!	jmp	_Label_2287
_Label_2287:
! THEN...
	mov	1006,r13		! source line 1006
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2292 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2292 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2294 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2295 = _temp_2294 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2293 = _temp_2295		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2296 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2297 = _temp_2296 + 1904
	load	[r14+-56],r1
	add	r1,1904,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2293  sizeInBytes=4
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
	jmp	_Label_2298
_Label_2288:
! ELSE...
	mov	1009,r13		! source line 1009
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2299 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2299 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_2300 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2301 = _temp_2300 + 1892
	load	[r14+-44],r1
	add	r1,1892,r1
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
	mov	1011,r13		! source line 1011
	mov	"\0\0SE",r10
!   _temp_2303 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2304 = _temp_2303 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2302 = _temp_2304		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2305 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2306 = _temp_2305 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2302  sizeInBytes=4
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
_Label_2298:
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2307 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2308 = _temp_2307 + 1856
	load	[r14+-16],r1
	add	r1,1856,r1
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
	mov	1014,r13		! source line 1014
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
	.word	_Label_2309
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2310
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2311
	.word	12
	.word	4
	.word	_Label_2312
	.word	-12
	.word	4
	.word	_Label_2313
	.word	-16
	.word	4
	.word	_Label_2314
	.word	-20
	.word	4
	.word	_Label_2315
	.word	-24
	.word	4
	.word	_Label_2316
	.word	-28
	.word	4
	.word	_Label_2317
	.word	-32
	.word	4
	.word	_Label_2318
	.word	-36
	.word	4
	.word	_Label_2319
	.word	-40
	.word	4
	.word	_Label_2320
	.word	-44
	.word	4
	.word	_Label_2321
	.word	-48
	.word	4
	.word	_Label_2322
	.word	-52
	.word	4
	.word	_Label_2323
	.word	-56
	.word	4
	.word	_Label_2324
	.word	-60
	.word	4
	.word	_Label_2325
	.word	-64
	.word	4
	.word	_Label_2326
	.word	-68
	.word	4
	.word	_Label_2327
	.word	-72
	.word	4
	.word	_Label_2328
	.word	-76
	.word	4
	.word	_Label_2329
	.word	-80
	.word	4
	.word	_Label_2330
	.word	-84
	.word	4
	.word	_Label_2331
	.word	-88
	.word	4
	.word	_Label_2332
	.word	-92
	.word	4
	.word	_Label_2333
	.word	-96
	.word	4
	.word	_Label_2334
	.word	-100
	.word	4
	.word	_Label_2335
	.word	-104
	.word	4
	.word	_Label_2336
	.word	-108
	.word	4
	.word	_Label_2337
	.word	-112
	.word	4
	.word	_Label_2338
	.word	-116
	.word	4
	.word	_Label_2339
	.word	-120
	.word	4
	.word	_Label_2340
	.word	-124
	.word	4
	.word	_Label_2341
	.word	-128
	.word	4
	.word	_Label_2342
	.word	-132
	.word	4
	.word	_Label_2343
	.word	-136
	.word	4
	.word	_Label_2344
	.word	-140
	.word	4
	.word	_Label_2345
	.word	-144
	.word	4
	.word	_Label_2346
	.word	-148
	.word	4
	.word	_Label_2347
	.word	-152
	.word	4
	.word	_Label_2348
	.word	-156
	.word	4
	.word	_Label_2349
	.word	-160
	.word	4
	.word	_Label_2350
	.word	-164
	.word	4
	.word	_Label_2351
	.word	-168
	.word	4
	.word	_Label_2352
	.word	-172
	.word	4
	.word	_Label_2353
	.word	-176
	.word	4
	.word	_Label_2354
	.word	-180
	.word	4
	.word	_Label_2355
	.word	-184
	.word	4
	.word	_Label_2356
	.word	-188
	.word	4
	.word	_Label_2357
	.word	-192
	.word	4
	.word	_Label_2358
	.word	-196
	.word	4
	.word	_Label_2359
	.word	-200
	.word	4
	.word	_Label_2360
	.word	-204
	.word	4
	.word	_Label_2361
	.word	-208
	.word	4
	.word	_Label_2362
	.word	-212
	.word	4
	.word	_Label_2363
	.word	-216
	.word	4
	.word	_Label_2364
	.word	-220
	.word	4
	.word	_Label_2365
	.word	-224
	.word	4
	.word	_Label_2366
	.word	-228
	.word	4
	.word	_Label_2367
	.word	-232
	.word	4
	.word	_Label_2368
	.word	-236
	.word	4
	.word	_Label_2369
	.word	-240
	.word	4
	.word	_Label_2370
	.word	-244
	.word	4
	.word	_Label_2371
	.word	-248
	.word	4
	.word	_Label_2372
	.word	-252
	.word	4
	.word	0
_Label_2309:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2310:
	.ascii	"Pself\0"
	.align
_Label_2311:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2371:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2372:
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
_Label_3991:
	push	r0
	sub	r1,1,r1
	bne	_Label_3991
	mov	1019,r13		! source line 1019
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_2373 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_2374 = _temp_2373 + 1856
	load	[r14+-84],r1
	add	r1,1856,r1
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
	mov	1023,r13		! source line 1023
	mov	"\0\0WH",r10
_Label_2375:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2379 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2378 = *_temp_2379  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_2378 == 2 then goto _Label_2377		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2377
!	jmp	_Label_2376
_Label_2376:
	mov	1023,r13		! source line 1023
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2381 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2382 = _temp_2381 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2380 = _temp_2382		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2383 = &aProcessDied
	load	[r14+8],r1
	add	r1,1904,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2380  sizeInBytes=4
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
	jmp	_Label_2375
_Label_2377:
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2384 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_2384  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2385 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2385 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_2386 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2387 = _temp_2386 + 1892
	load	[r14+-44],r1
	add	r1,1892,r1
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
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_2389 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2390 = _temp_2389 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2388 = _temp_2390		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2391 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2392 = _temp_2391 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2388  sizeInBytes=4
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
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_2393 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2394 = _temp_2393 + 1856
	load	[r14+-16],r1
	add	r1,1856,r1
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
	mov	1033,r13		! source line 1033
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
	.word	_Label_2395
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_2396
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2397
	.word	12
	.word	4
	.word	_Label_2398
	.word	-12
	.word	4
	.word	_Label_2399
	.word	-16
	.word	4
	.word	_Label_2400
	.word	-20
	.word	4
	.word	_Label_2401
	.word	-24
	.word	4
	.word	_Label_2402
	.word	-28
	.word	4
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
	.word	_Label_2407
	.word	-48
	.word	4
	.word	_Label_2408
	.word	-52
	.word	4
	.word	_Label_2409
	.word	-56
	.word	4
	.word	_Label_2410
	.word	-60
	.word	4
	.word	_Label_2411
	.word	-64
	.word	4
	.word	_Label_2412
	.word	-68
	.word	4
	.word	_Label_2413
	.word	-72
	.word	4
	.word	_Label_2414
	.word	-76
	.word	4
	.word	_Label_2415
	.word	-80
	.word	4
	.word	_Label_2416
	.word	-84
	.word	4
	.word	_Label_2417
	.word	-88
	.word	4
	.word	0
_Label_2395:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2396:
	.ascii	"Pself\0"
	.align
_Label_2397:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2417:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2418
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2418:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2419
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2419:
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
_Label_3992:
	push	r0
	sub	r1,1,r1
	bne	_Label_3992
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2420 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2420  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1094,r13		! source line 1094
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
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
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_2422 = &framesInUse
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
	mov	1097,r13		! source line 1097
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1098,r13		! source line 1098
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
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_2424 = &frameManagerLock
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
	mov	1100,r13		! source line 1100
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
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_2426 = &newFramesAvailable
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
	mov	1107,r13		! source line 1107
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2431 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2432 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2431  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2427:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2432 then goto _Label_2430		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2430
_Label_2428:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2435 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2435) then goto _Label_2434
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2434
!	jmp	_Label_2433
_Label_2433:
! THEN...
	mov	1111,r13		! source line 1111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2436 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2436  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1111,r13		! source line 1111
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2434:
!   Increment the FOR-LOOP index variable and jump back
_Label_2429:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2427
! END FOR
_Label_2430:
! RETURN STATEMENT...
	mov	1107,r13		! source line 1107
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
	.word	_Label_2437
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	-12
	.word	4
	.word	_Label_2440
	.word	-16
	.word	4
	.word	_Label_2441
	.word	-20
	.word	4
	.word	_Label_2442
	.word	-24
	.word	4
	.word	_Label_2443
	.word	-28
	.word	4
	.word	_Label_2444
	.word	-32
	.word	4
	.word	_Label_2445
	.word	-36
	.word	4
	.word	_Label_2446
	.word	-40
	.word	4
	.word	_Label_2447
	.word	-44
	.word	4
	.word	_Label_2448
	.word	-48
	.word	4
	.word	_Label_2449
	.word	-52
	.word	4
	.word	_Label_2450
	.word	-56
	.word	4
	.word	0
_Label_2437:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2450:
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
_Label_3993:
	push	r0
	sub	r1,1,r1
	bne	_Label_3993
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_2451 = &frameManagerLock
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
!   _temp_2452 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2453 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1124,r13		! source line 1124
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2454 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2454  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_2455 = &framesInUse
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
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_2456 = &frameManagerLock
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
	mov	1127,r13		! source line 1127
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
	.word	_Label_2457
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2458
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2459
	.word	-12
	.word	4
	.word	_Label_2460
	.word	-16
	.word	4
	.word	_Label_2461
	.word	-20
	.word	4
	.word	_Label_2462
	.word	-24
	.word	4
	.word	_Label_2463
	.word	-28
	.word	4
	.word	_Label_2464
	.word	-32
	.word	4
	.word	0
_Label_2457:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2458:
	.ascii	"Pself\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2451\0"
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
_Label_3994:
	push	r0
	sub	r1,1,r1
	bne	_Label_3994
	mov	1132,r13		! source line 1132
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_2465 = &frameManagerLock
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
	mov	1143,r13		! source line 1143
	mov	"\0\0WH",r10
_Label_2466:
!   if numberFreeFrames >= 1 then goto _Label_2468		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2468
!	jmp	_Label_2467
_Label_2467:
	mov	1143,r13		! source line 1143
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_2469 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2470 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2469  sizeInBytes=4
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
	jmp	_Label_2466
_Label_2468:
! ASSIGNMENT STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0AS",r10
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_2471 = &framesInUse
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
	mov	1149,r13		! source line 1149
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_2472 = &frameManagerLock
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
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
!   _temp_2473 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2473		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1157,r13		! source line 1157
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
	.word	_Label_2474
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2476
	.word	-12
	.word	4
	.word	_Label_2477
	.word	-16
	.word	4
	.word	_Label_2478
	.word	-20
	.word	4
	.word	_Label_2479
	.word	-24
	.word	4
	.word	_Label_2480
	.word	-28
	.word	4
	.word	_Label_2481
	.word	-32
	.word	4
	.word	_Label_2482
	.word	-36
	.word	4
	.word	_Label_2483
	.word	-40
	.word	4
	.word	0
_Label_2474:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2475:
	.ascii	"Pself\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2482:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2483:
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
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	1162,r13		! source line 1162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_2484 = &frameManagerLock
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
	mov	1166,r13		! source line 1166
	mov	"\0\0WH",r10
_Label_2485:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2487		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2487
!	jmp	_Label_2486
_Label_2486:
	mov	1166,r13		! source line 1166
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_2488 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2489 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2488  sizeInBytes=4
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
	jmp	_Label_2485
_Label_2487:
! FOR STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2494 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2495 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2494  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2490:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2495 then goto _Label_2493		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2493
_Label_2491:
	mov	1169,r13		! source line 1169
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
!   _temp_2496 = &framesInUse
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
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   _temp_2497 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2497		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
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
_Label_2492:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2490
! END FOR
_Label_2493:
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
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
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2498 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_2499 = &frameManagerLock
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
	mov	1176,r13		! source line 1176
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
	.word	_Label_2500
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2502
	.word	12
	.word	4
	.word	_Label_2503
	.word	16
	.word	4
	.word	_Label_2504
	.word	-12
	.word	4
	.word	_Label_2505
	.word	-16
	.word	4
	.word	_Label_2506
	.word	-20
	.word	4
	.word	_Label_2507
	.word	-24
	.word	4
	.word	_Label_2508
	.word	-28
	.word	4
	.word	_Label_2509
	.word	-32
	.word	4
	.word	_Label_2510
	.word	-36
	.word	4
	.word	_Label_2511
	.word	-40
	.word	4
	.word	_Label_2512
	.word	-44
	.word	4
	.word	_Label_2513
	.word	-48
	.word	4
	.word	_Label_2514
	.word	-52
	.word	4
	.word	_Label_2515
	.word	-56
	.word	4
	.word	0
_Label_2500:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2501:
	.ascii	"Pself\0"
	.align
_Label_2502:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2503:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2513:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2514:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2515:
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
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	1181,r13		! source line 1181
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2516 = &frameManagerLock
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
	mov	1185,r13		! source line 1185
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2521 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2524 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2523 = *_temp_2524  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2522 = _temp_2523 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2521  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2517:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2522 then goto _Label_2520		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2520
_Label_2518:
	mov	1185,r13		! source line 1185
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
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
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   _temp_2525 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2525 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_2526 = &framesInUse
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
_Label_2519:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2517
! END FOR
_Label_2520:
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2528 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2527 = *_temp_2528  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2527		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_2529 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2530 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2529  sizeInBytes=4
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
	mov	1192,r13		! source line 1192
	mov	"\0\0SE",r10
!   _temp_2531 = &frameManagerLock
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
	mov	1192,r13		! source line 1192
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
	.word	_Label_2532
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2534
	.word	12
	.word	4
	.word	_Label_2535
	.word	-12
	.word	4
	.word	_Label_2536
	.word	-16
	.word	4
	.word	_Label_2537
	.word	-20
	.word	4
	.word	_Label_2538
	.word	-24
	.word	4
	.word	_Label_2539
	.word	-28
	.word	4
	.word	_Label_2540
	.word	-32
	.word	4
	.word	_Label_2541
	.word	-36
	.word	4
	.word	_Label_2542
	.word	-40
	.word	4
	.word	_Label_2543
	.word	-44
	.word	4
	.word	_Label_2544
	.word	-48
	.word	4
	.word	_Label_2545
	.word	-52
	.word	4
	.word	_Label_2546
	.word	-56
	.word	4
	.word	_Label_2547
	.word	-60
	.word	4
	.word	_Label_2548
	.word	-64
	.word	4
	.word	_Label_2549
	.word	-68
	.word	4
	.word	0
_Label_2532:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2533:
	.ascii	"Pself\0"
	.align
_Label_2534:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2547:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2548:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2549:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2550
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
_Label_2550:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2551
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2551:
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
_Label_3997:
	push	r0
	sub	r1,1,r1
	bne	_Label_3997
	mov	1203,r13		! source line 1203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   _temp_2552 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2554 = &_temp_2553
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2554 = _temp_2554 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2556:
!   Data Move: *_temp_2554 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2554 = _temp_2554 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2555 = _temp_2555 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2555) then goto _Label_2556
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2556
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2557 = &_temp_2553
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3998
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3998:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2552 = *_temp_2557  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3999:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3999
! RETURN STATEMENT...
	mov	1208,r13		! source line 1208
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
	.word	_Label_2558
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2560
	.word	-12
	.word	4
	.word	_Label_2561
	.word	-16
	.word	4
	.word	_Label_2562
	.word	-20
	.word	4
	.word	_Label_2563
	.word	-104
	.word	84
	.word	_Label_2564
	.word	-108
	.word	4
	.word	0
_Label_2558:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2559:
	.ascii	"Pself\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2552\0"
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
_Label_4000:
	push	r0
	sub	r1,1,r1
	bne	_Label_4000
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2565 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2565  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2566 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1220,r13		! source line 1220
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2571 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2572 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2571  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2567:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2572 then goto _Label_2570		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2570
_Label_2568:
	mov	1220,r13		! source line 1220
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2573 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2573  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2575 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2575 [i ] into _temp_2576
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
!   _temp_2574 = _temp_2576		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2574  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2577 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2577  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2579 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2579 [i ] into _temp_2580
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
!   Data Move: _temp_2578 = *_temp_2580  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2581 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2582 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2582  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2583 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2583  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2585) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2584  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2584  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2586 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2586  sizeInBytes=4
	load	[r14+-96],r1
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
	store	r1,[r14+-88]
!   if intIsZero (_temp_2590) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2589  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2589) then goto _Label_2588
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2588
!	jmp	_Label_2587
_Label_2587:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2592) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2591  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2591  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2593
_Label_2588:
! ELSE...
	mov	1233,r13		! source line 1233
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2594 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2594  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2593:
! CALL STATEMENT...
!   _temp_2595 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2595  sizeInBytes=4
	load	[r14+-72],r1
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
	store	r1,[r14+-68]
!   if intIsZero (_temp_2598) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2596 else goto _Label_2597
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2597
	jmp	_Label_2596
_Label_2596:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2599 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2599  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2600
_Label_2597:
! ELSE...
	mov	1239,r13		! source line 1239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2601 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2601  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2600:
! CALL STATEMENT...
!   _temp_2602 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2602  sizeInBytes=4
	load	[r14+-56],r1
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
	store	r1,[r14+-52]
!   if intIsZero (_temp_2605) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2603 else goto _Label_2604
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2604
	jmp	_Label_2603
_Label_2603:
! THEN...
	mov	1243,r13		! source line 1243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2606 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2607
_Label_2604:
! ELSE...
	mov	1245,r13		! source line 1245
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2608 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2607:
! CALL STATEMENT...
!   _temp_2609 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2609  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0IF",r10
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2612) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2610 else goto _Label_2611
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2611
	jmp	_Label_2610
_Label_2610:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2613 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2613  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2614
_Label_2611:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2615 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2615  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2614:
! CALL STATEMENT...
!   _temp_2616 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2616  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1254,r13		! source line 1254
	mov	"\0\0IF",r10
	mov	1254,r13		! source line 1254
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2619) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2617 else goto _Label_2618
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2618
	jmp	_Label_2617
_Label_2617:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2620 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2620  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2621
_Label_2618:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2622 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2622  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2621:
! CALL STATEMENT...
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2569:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2567
! END FOR
_Label_2570:
! RETURN STATEMENT...
	mov	1220,r13		! source line 1220
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
	.word	_Label_2623
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2625
	.word	-12
	.word	4
	.word	_Label_2626
	.word	-16
	.word	4
	.word	_Label_2627
	.word	-20
	.word	4
	.word	_Label_2628
	.word	-24
	.word	4
	.word	_Label_2629
	.word	-28
	.word	4
	.word	_Label_2630
	.word	-32
	.word	4
	.word	_Label_2631
	.word	-36
	.word	4
	.word	_Label_2632
	.word	-40
	.word	4
	.word	_Label_2633
	.word	-44
	.word	4
	.word	_Label_2634
	.word	-48
	.word	4
	.word	_Label_2635
	.word	-52
	.word	4
	.word	_Label_2636
	.word	-56
	.word	4
	.word	_Label_2637
	.word	-60
	.word	4
	.word	_Label_2638
	.word	-64
	.word	4
	.word	_Label_2639
	.word	-68
	.word	4
	.word	_Label_2640
	.word	-72
	.word	4
	.word	_Label_2641
	.word	-76
	.word	4
	.word	_Label_2642
	.word	-80
	.word	4
	.word	_Label_2643
	.word	-84
	.word	4
	.word	_Label_2644
	.word	-88
	.word	4
	.word	_Label_2645
	.word	-92
	.word	4
	.word	_Label_2646
	.word	-96
	.word	4
	.word	_Label_2647
	.word	-100
	.word	4
	.word	_Label_2648
	.word	-104
	.word	4
	.word	_Label_2649
	.word	-108
	.word	4
	.word	_Label_2650
	.word	-112
	.word	4
	.word	_Label_2651
	.word	-116
	.word	4
	.word	_Label_2652
	.word	-120
	.word	4
	.word	_Label_2653
	.word	-124
	.word	4
	.word	_Label_2654
	.word	-128
	.word	4
	.word	_Label_2655
	.word	-132
	.word	4
	.word	_Label_2656
	.word	-136
	.word	4
	.word	_Label_2657
	.word	-140
	.word	4
	.word	_Label_2658
	.word	-144
	.word	4
	.word	_Label_2659
	.word	-148
	.word	4
	.word	_Label_2660
	.word	-152
	.word	4
	.word	_Label_2661
	.word	-156
	.word	4
	.word	_Label_2662
	.word	-160
	.word	4
	.word	_Label_2663
	.word	-164
	.word	4
	.word	_Label_2664
	.word	-168
	.word	4
	.word	0
_Label_2623:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2624:
	.ascii	"Pself\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2664:
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
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0RE",r10
!   _temp_2667 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2667 [entry ] into _temp_2668
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
!   Data Move: _temp_2666 = *_temp_2668  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2665 = _temp_2666 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2665  (sizeInBytes=4)
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
	.word	_Label_2669
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2671
	.word	12
	.word	4
	.word	_Label_2672
	.word	-12
	.word	4
	.word	_Label_2673
	.word	-16
	.word	4
	.word	_Label_2674
	.word	-20
	.word	4
	.word	_Label_2675
	.word	-24
	.word	4
	.word	0
_Label_2669:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2670:
	.ascii	"Pself\0"
	.align
_Label_2671:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2665\0"
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
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
!   _temp_2678 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2678 [entry ] into _temp_2679
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
!   Data Move: _temp_2677 = *_temp_2679  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2676 = _temp_2677 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2676  (sizeInBytes=4)
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
	.word	_Label_2680
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2682
	.word	12
	.word	4
	.word	_Label_2683
	.word	-12
	.word	4
	.word	_Label_2684
	.word	-16
	.word	4
	.word	_Label_2685
	.word	-20
	.word	4
	.word	_Label_2686
	.word	-24
	.word	4
	.word	0
_Label_2680:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2681:
	.ascii	"Pself\0"
	.align
_Label_2682:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2676\0"
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
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2687 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2687 [entry ] into _temp_2688
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
!   _temp_2692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2692 [entry ] into _temp_2693
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
!   Data Move: _temp_2691 = *_temp_2693  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2690 = _temp_2691 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2689 = _temp_2690 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2688 = _temp_2689  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1289,r13		! source line 1289
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
	.word	_Label_2694
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2696
	.word	12
	.word	4
	.word	_Label_2697
	.word	16
	.word	4
	.word	_Label_2698
	.word	-12
	.word	4
	.word	_Label_2699
	.word	-16
	.word	4
	.word	_Label_2700
	.word	-20
	.word	4
	.word	_Label_2701
	.word	-24
	.word	4
	.word	_Label_2702
	.word	-28
	.word	4
	.word	_Label_2703
	.word	-32
	.word	4
	.word	_Label_2704
	.word	-36
	.word	4
	.word	0
_Label_2694:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2695:
	.ascii	"Pself\0"
	.align
_Label_2696:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2687\0"
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
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0RE",r10
!   _temp_2708 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2708 [entry ] into _temp_2709
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
!   Data Move: _temp_2707 = *_temp_2709  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2706 = _temp_2707 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2706) then goto _Label_2710
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2710
!   _temp_2705 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2711
_Label_2710:
!   _temp_2705 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2711:
!   ReturnResult: _temp_2705  (sizeInBytes=1)
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
	.word	_Label_2712
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2714
	.word	12
	.word	4
	.word	_Label_2715
	.word	-16
	.word	4
	.word	_Label_2716
	.word	-20
	.word	4
	.word	_Label_2717
	.word	-24
	.word	4
	.word	_Label_2718
	.word	-28
	.word	4
	.word	_Label_2719
	.word	-9
	.word	1
	.word	0
_Label_2712:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2713:
	.ascii	"Pself\0"
	.align
_Label_2714:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2719:
	.byte	'C'
	.ascii	"_temp_2705\0"
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
_Label_4005:
	push	r0
	sub	r1,1,r1
	bne	_Label_4005
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0RE",r10
!   _temp_2723 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2723 [entry ] into _temp_2724
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
!   Data Move: _temp_2722 = *_temp_2724  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2721 = _temp_2722 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2721) then goto _Label_2725
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2725
!   _temp_2720 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2726
_Label_2725:
!   _temp_2720 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2726:
!   ReturnResult: _temp_2720  (sizeInBytes=1)
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
	.word	_Label_2727
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2729
	.word	12
	.word	4
	.word	_Label_2730
	.word	-16
	.word	4
	.word	_Label_2731
	.word	-20
	.word	4
	.word	_Label_2732
	.word	-24
	.word	4
	.word	_Label_2733
	.word	-28
	.word	4
	.word	_Label_2734
	.word	-9
	.word	1
	.word	0
_Label_2727:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2728:
	.ascii	"Pself\0"
	.align
_Label_2729:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2734:
	.byte	'C'
	.ascii	"_temp_2720\0"
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
_Label_4006:
	push	r0
	sub	r1,1,r1
	bne	_Label_4006
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_2738 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2738 [entry ] into _temp_2739
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
!   Data Move: _temp_2737 = *_temp_2739  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2736 = _temp_2737 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2736) then goto _Label_2740
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2740
!   _temp_2735 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2741
_Label_2740:
!   _temp_2735 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2741:
!   ReturnResult: _temp_2735  (sizeInBytes=1)
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
	.word	_Label_2742
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2743
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2744
	.word	12
	.word	4
	.word	_Label_2745
	.word	-16
	.word	4
	.word	_Label_2746
	.word	-20
	.word	4
	.word	_Label_2747
	.word	-24
	.word	4
	.word	_Label_2748
	.word	-28
	.word	4
	.word	_Label_2749
	.word	-9
	.word	1
	.word	0
_Label_2742:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2743:
	.ascii	"Pself\0"
	.align
_Label_2744:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2749:
	.byte	'C'
	.ascii	"_temp_2735\0"
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
_Label_4007:
	push	r0
	sub	r1,1,r1
	bne	_Label_4007
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_2753 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2753 [entry ] into _temp_2754
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
!   Data Move: _temp_2752 = *_temp_2754  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2751 = _temp_2752 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2751) then goto _Label_2755
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2755
!   _temp_2750 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2756
_Label_2755:
!   _temp_2750 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2756:
!   ReturnResult: _temp_2750  (sizeInBytes=1)
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
	.word	_Label_2757
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2759
	.word	12
	.word	4
	.word	_Label_2760
	.word	-16
	.word	4
	.word	_Label_2761
	.word	-20
	.word	4
	.word	_Label_2762
	.word	-24
	.word	4
	.word	_Label_2763
	.word	-28
	.word	4
	.word	_Label_2764
	.word	-9
	.word	1
	.word	0
_Label_2757:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2758:
	.ascii	"Pself\0"
	.align
_Label_2759:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2764:
	.byte	'C'
	.ascii	"_temp_2750\0"
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
_Label_4008:
	push	r0
	sub	r1,1,r1
	bne	_Label_4008
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_2765 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2765 [entry ] into _temp_2766
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
!   _temp_2769 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2769 [entry ] into _temp_2770
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
!   Data Move: _temp_2768 = *_temp_2770  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2767 = _temp_2768 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2766 = _temp_2767  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
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
	.word	_Label_2771
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2772
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2773
	.word	12
	.word	4
	.word	_Label_2774
	.word	-12
	.word	4
	.word	_Label_2775
	.word	-16
	.word	4
	.word	_Label_2776
	.word	-20
	.word	4
	.word	_Label_2777
	.word	-24
	.word	4
	.word	_Label_2778
	.word	-28
	.word	4
	.word	_Label_2779
	.word	-32
	.word	4
	.word	0
_Label_2771:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2772:
	.ascii	"Pself\0"
	.align
_Label_2773:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2765\0"
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
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   _temp_2780 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2780 [entry ] into _temp_2781
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
!   _temp_2784 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2784 [entry ] into _temp_2785
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
!   Data Move: _temp_2783 = *_temp_2785  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2782 = _temp_2783 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2781 = _temp_2782  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
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
	.word	_Label_2786
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2788
	.word	12
	.word	4
	.word	_Label_2789
	.word	-12
	.word	4
	.word	_Label_2790
	.word	-16
	.word	4
	.word	_Label_2791
	.word	-20
	.word	4
	.word	_Label_2792
	.word	-24
	.word	4
	.word	_Label_2793
	.word	-28
	.word	4
	.word	_Label_2794
	.word	-32
	.word	4
	.word	0
_Label_2786:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2787:
	.ascii	"Pself\0"
	.align
_Label_2788:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2780\0"
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
_Label_4010:
	push	r0
	sub	r1,1,r1
	bne	_Label_4010
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_2795 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2795 [entry ] into _temp_2796
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
!   _temp_2799 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2799 [entry ] into _temp_2800
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
!   Data Move: _temp_2798 = *_temp_2800  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2797 = _temp_2798 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2796 = _temp_2797  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
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
	.word	_Label_2801
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2803
	.word	12
	.word	4
	.word	_Label_2804
	.word	-12
	.word	4
	.word	_Label_2805
	.word	-16
	.word	4
	.word	_Label_2806
	.word	-20
	.word	4
	.word	_Label_2807
	.word	-24
	.word	4
	.word	_Label_2808
	.word	-28
	.word	4
	.word	_Label_2809
	.word	-32
	.word	4
	.word	0
_Label_2801:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2802:
	.ascii	"Pself\0"
	.align
_Label_2803:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2795\0"
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
_Label_4011:
	push	r0
	sub	r1,1,r1
	bne	_Label_4011
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_2810 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2810 [entry ] into _temp_2811
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
!   _temp_2814 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2814 [entry ] into _temp_2815
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
!   Data Move: _temp_2813 = *_temp_2815  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2812 = _temp_2813 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2811 = _temp_2812  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
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
	.word	_Label_2816
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2818
	.word	12
	.word	4
	.word	_Label_2819
	.word	-12
	.word	4
	.word	_Label_2820
	.word	-16
	.word	4
	.word	_Label_2821
	.word	-20
	.word	4
	.word	_Label_2822
	.word	-24
	.word	4
	.word	_Label_2823
	.word	-28
	.word	4
	.word	_Label_2824
	.word	-32
	.word	4
	.word	0
_Label_2816:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2817:
	.ascii	"Pself\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2810\0"
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
_Label_4012:
	push	r0
	sub	r1,1,r1
	bne	_Label_4012
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_2825 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2825 [entry ] into _temp_2826
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
!   _temp_2829 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2829 [entry ] into _temp_2830
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
!   Data Move: _temp_2828 = *_temp_2830  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2827 = _temp_2828 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2826 = _temp_2827  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
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
	.word	_Label_2831
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2833
	.word	12
	.word	4
	.word	_Label_2834
	.word	-12
	.word	4
	.word	_Label_2835
	.word	-16
	.word	4
	.word	_Label_2836
	.word	-20
	.word	4
	.word	_Label_2837
	.word	-24
	.word	4
	.word	_Label_2838
	.word	-28
	.word	4
	.word	_Label_2839
	.word	-32
	.word	4
	.word	0
_Label_2831:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2832:
	.ascii	"Pself\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2825\0"
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
_Label_4013:
	push	r0
	sub	r1,1,r1
	bne	_Label_4013
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_2840 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2840 [entry ] into _temp_2841
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
!   _temp_2844 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2844 [entry ] into _temp_2845
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
!   Data Move: _temp_2843 = *_temp_2845  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2842 = _temp_2843 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2841 = _temp_2842  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
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
	.word	_Label_2846
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	12
	.word	4
	.word	_Label_2849
	.word	-12
	.word	4
	.word	_Label_2850
	.word	-16
	.word	4
	.word	_Label_2851
	.word	-20
	.word	4
	.word	_Label_2852
	.word	-24
	.word	4
	.word	_Label_2853
	.word	-28
	.word	4
	.word	_Label_2854
	.word	-32
	.word	4
	.word	0
_Label_2846:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2840\0"
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
_Label_4014:
	push	r0
	sub	r1,1,r1
	bne	_Label_4014
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_2855 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2855 [entry ] into _temp_2856
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
!   _temp_2859 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2859 [entry ] into _temp_2860
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
!   Data Move: _temp_2858 = *_temp_2860  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2857 = _temp_2858 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2856 = _temp_2857  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
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
	.word	_Label_2861
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2863
	.word	12
	.word	4
	.word	_Label_2864
	.word	-12
	.word	4
	.word	_Label_2865
	.word	-16
	.word	4
	.word	_Label_2866
	.word	-20
	.word	4
	.word	_Label_2867
	.word	-24
	.word	4
	.word	_Label_2868
	.word	-28
	.word	4
	.word	_Label_2869
	.word	-32
	.word	4
	.word	0
_Label_2861:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2862:
	.ascii	"Pself\0"
	.align
_Label_2863:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2855\0"
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
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_2870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2870 [entry ] into _temp_2871
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
!   _temp_2874 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2874 [entry ] into _temp_2875
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
!   Data Move: _temp_2873 = *_temp_2875  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2872 = _temp_2873 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2871 = _temp_2872  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
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
	.word	_Label_2876
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2878
	.word	12
	.word	4
	.word	_Label_2879
	.word	-12
	.word	4
	.word	_Label_2880
	.word	-16
	.word	4
	.word	_Label_2881
	.word	-20
	.word	4
	.word	_Label_2882
	.word	-24
	.word	4
	.word	_Label_2883
	.word	-28
	.word	4
	.word	_Label_2884
	.word	-32
	.word	4
	.word	0
_Label_2876:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2877:
	.ascii	"Pself\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2870\0"
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
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2886 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2886 [0 ] into _temp_2887
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
!   _temp_2885 = _temp_2887		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2888 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2885  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2888  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1408,r13		! source line 1408
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
	.word	_Label_2889
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2891
	.word	-12
	.word	4
	.word	_Label_2892
	.word	-16
	.word	4
	.word	_Label_2893
	.word	-20
	.word	4
	.word	_Label_2894
	.word	-24
	.word	4
	.word	0
_Label_2889:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2890:
	.ascii	"Pself\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2885\0"
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
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2895
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2895
	jmp	_Label_2896
_Label_2895:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2897
_Label_2896:
! ELSE...
	mov	1430,r13		! source line 1430
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2899		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2899
!	jmp	_Label_2898
_Label_2898:
! THEN...
	mov	1431,r13		! source line 1431
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2899:
! END IF...
_Label_2897:
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
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
	mov	1434,r13		! source line 1434
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
	mov	1437,r13		! source line 1437
	mov	"\0\0WH",r10
_Label_2900:
!	jmp	_Label_2901
_Label_2901:
	mov	1437,r13		! source line 1437
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2904		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2905 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2905  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2908  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2908 then goto _Label_2907 else goto _Label_2906
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2906
	jmp	_Label_2907
_Label_2906:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2910 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2910  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2907:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
	mov	1446,r13		! source line 1446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2912) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2911  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2911 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0WH",r10
_Label_2913:
!   if offset >= 8192 then goto _Label_2915		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2915
!	jmp	_Label_2914
_Label_2914:
	mov	1448,r13		! source line 1448
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2916 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2916  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2918		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2918
!	jmp	_Label_2917
_Label_2917:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2918:
! END WHILE...
	jmp	_Label_2913
_Label_2915:
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2900
_Label_2902:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2919
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2921
	.word	12
	.word	4
	.word	_Label_2922
	.word	16
	.word	4
	.word	_Label_2923
	.word	20
	.word	4
	.word	_Label_2924
	.word	-9
	.word	1
	.word	_Label_2925
	.word	-16
	.word	4
	.word	_Label_2926
	.word	-20
	.word	4
	.word	_Label_2927
	.word	-24
	.word	4
	.word	_Label_2928
	.word	-28
	.word	4
	.word	_Label_2929
	.word	-10
	.word	1
	.word	_Label_2930
	.word	-32
	.word	4
	.word	_Label_2931
	.word	-36
	.word	4
	.word	_Label_2932
	.word	-40
	.word	4
	.word	_Label_2933
	.word	-44
	.word	4
	.word	_Label_2934
	.word	-48
	.word	4
	.word	0
_Label_2919:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2920:
	.ascii	"Pself\0"
	.align
_Label_2921:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2922:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2923:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2924:
	.byte	'C'
	.ascii	"_temp_2916\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2929:
	.byte	'C'
	.ascii	"_temp_2908\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2932:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2934:
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
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2935
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2935
	jmp	_Label_2936
_Label_2935:
! THEN...
	mov	1479,r13		! source line 1479
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2937
_Label_2936:
! ELSE...
	mov	1480,r13		! source line 1480
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2939		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2939
!	jmp	_Label_2938
_Label_2938:
! THEN...
	mov	1481,r13		! source line 1481
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2939:
! END IF...
_Label_2937:
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
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
	mov	1484,r13		! source line 1484
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
	mov	1485,r13		! source line 1485
	mov	"\0\0WH",r10
_Label_2940:
!	jmp	_Label_2941
_Label_2941:
	mov	1485,r13		! source line 1485
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2946		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2946
	jmp	_Label_2943
_Label_2946:
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2948) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2947  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2947 then goto _Label_2945 else goto _Label_2943
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2943
	jmp	_Label_2945
_Label_2945:
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2950) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2949  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2949 then goto _Label_2944 else goto _Label_2943
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2943
	jmp	_Label_2944
_Label_2943:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2944:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2952) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2951  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2951 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0WH",r10
_Label_2953:
!   if offset >= 8192 then goto _Label_2955		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2955
!	jmp	_Label_2954
_Label_2954:
	mov	1492,r13		! source line 1492
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2956 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2956  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2958		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2958
!	jmp	_Label_2957
_Label_2957:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2958:
! END WHILE...
	jmp	_Label_2953
_Label_2955:
! ASSIGNMENT STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2940
_Label_2942:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2959
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2960
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2961
	.word	12
	.word	4
	.word	_Label_2962
	.word	16
	.word	4
	.word	_Label_2963
	.word	20
	.word	4
	.word	_Label_2964
	.word	-9
	.word	1
	.word	_Label_2965
	.word	-16
	.word	4
	.word	_Label_2966
	.word	-20
	.word	4
	.word	_Label_2967
	.word	-24
	.word	4
	.word	_Label_2968
	.word	-10
	.word	1
	.word	_Label_2969
	.word	-28
	.word	4
	.word	_Label_2970
	.word	-11
	.word	1
	.word	_Label_2971
	.word	-32
	.word	4
	.word	_Label_2972
	.word	-36
	.word	4
	.word	_Label_2973
	.word	-40
	.word	4
	.word	_Label_2974
	.word	-44
	.word	4
	.word	0
_Label_2959:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2960:
	.ascii	"Pself\0"
	.align
_Label_2961:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2962:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2963:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2964:
	.byte	'C'
	.ascii	"_temp_2956\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2968:
	.byte	'C'
	.ascii	"_temp_2949\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2970:
	.byte	'C'
	.ascii	"_temp_2947\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2974:
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
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0IF",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_2978 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2979) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2978  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2977  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2977 >= 4 then goto _Label_2976		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2976
!	jmp	_Label_2975
_Label_2975:
! THEN...
	mov	1536,r13		! source line 1536
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2976:
! IF STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2981		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2981
!	jmp	_Label_2980
_Label_2980:
! THEN...
	mov	1541,r13		! source line 1541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2981:
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
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
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
	mov	1546,r13		! source line 1546
	mov	"\0\0SE",r10
!   _temp_2984 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2983 = _temp_2984 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2985 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2986) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2983  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2985  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2982  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2982  (sizeInBytes=4)
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
	.word	_Label_2987
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2989
	.word	12
	.word	4
	.word	_Label_2990
	.word	16
	.word	4
	.word	_Label_2991
	.word	20
	.word	4
	.word	_Label_2992
	.word	-12
	.word	4
	.word	_Label_2993
	.word	-16
	.word	4
	.word	_Label_2994
	.word	-20
	.word	4
	.word	_Label_2995
	.word	-24
	.word	4
	.word	_Label_2996
	.word	-28
	.word	4
	.word	_Label_2997
	.word	-32
	.word	4
	.word	_Label_2998
	.word	-36
	.word	4
	.word	_Label_2999
	.word	-40
	.word	4
	.word	_Label_3000
	.word	-44
	.word	4
	.word	0
_Label_2987:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2988:
	.ascii	"Pself\0"
	.align
_Label_2989:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2990:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2991:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3001
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3001:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3002
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3002:
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
_Label_4020:
	push	r0
	sub	r1,1,r1
	bne	_Label_4020
	mov	2182,r13		! source line 2182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3003 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3003  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2183,r13		! source line 2183
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
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
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_3005 = &semUsedInSynchMethods
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
	mov	2192,r13		! source line 2192
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
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_3007 = &diskBusy
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
	mov	2193,r13		! source line 2193
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
	.word	_Label_3008
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3010
	.word	-12
	.word	4
	.word	_Label_3011
	.word	-16
	.word	4
	.word	_Label_3012
	.word	-20
	.word	4
	.word	_Label_3013
	.word	-24
	.word	4
	.word	_Label_3014
	.word	-28
	.word	4
	.word	0
_Label_3008:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3009:
	.ascii	"Pself\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3003\0"
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
_Label_4021:
	push	r0
	sub	r1,1,r1
	bne	_Label_4021
	mov	2198,r13		! source line 2198
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_3015 = &diskBusy
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
	mov	2212,r13		! source line 2212
	mov	"\0\0WH",r10
_Label_3016:
!	jmp	_Label_3017
_Label_3017:
	mov	2212,r13		! source line 2212
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0SE",r10
!   _temp_3019 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3020) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3019  sizeInBytes=4
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
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_3021 = &semUsedInSynchMethods
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
	mov	2219,r13		! source line 2219
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3030 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3024
	cmp	r1,2
	be	_Label_3025
	cmp	r1,3
	be	_Label_3026
	cmp	r1,4
	be	_Label_3027
	cmp	r1,5
	be	_Label_3028
	cmp	r1,6
	be	_Label_3029
	jmp	_Label_3022
! CASE 1...
_Label_3024:
! SEND STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0SE",r10
!   _temp_3031 = &diskBusy
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
	mov	2222,r13		! source line 2222
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3025:
! CALL STATEMENT...
!   _temp_3032 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3032  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2224,r13		! source line 2224
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3026:
! CALL STATEMENT...
!   _temp_3033 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3033  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2226,r13		! source line 2226
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3027:
! CALL STATEMENT...
!   _temp_3034 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3034  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2228,r13		! source line 2228
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3028:
! BREAK STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0BR",r10
	jmp	_Label_3023
! CASE 6...
_Label_3029:
! CALL STATEMENT...
!   _temp_3035 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3035  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2234,r13		! source line 2234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3022:
! CALL STATEMENT...
!   _temp_3036 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3036  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2236,r13		! source line 2236
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3023:
! END WHILE...
	jmp	_Label_3016
_Label_3018:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3037
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3038
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3039
	.word	12
	.word	4
	.word	_Label_3040
	.word	16
	.word	4
	.word	_Label_3041
	.word	20
	.word	4
	.word	_Label_3042
	.word	-12
	.word	4
	.word	_Label_3043
	.word	-16
	.word	4
	.word	_Label_3044
	.word	-20
	.word	4
	.word	_Label_3045
	.word	-24
	.word	4
	.word	_Label_3046
	.word	-28
	.word	4
	.word	_Label_3047
	.word	-32
	.word	4
	.word	_Label_3048
	.word	-36
	.word	4
	.word	_Label_3049
	.word	-40
	.word	4
	.word	_Label_3050
	.word	-44
	.word	4
	.word	_Label_3051
	.word	-48
	.word	4
	.word	_Label_3052
	.word	-52
	.word	4
	.word	0
_Label_3037:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3038:
	.ascii	"Pself\0"
	.align
_Label_3039:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3032\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3015\0"
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
	mov	2245,r13		! source line 2245
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
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
	mov	2264,r13		! source line 2264
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
	mov	2265,r13		! source line 2265
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
	mov	2266,r13		! source line 2266
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
	mov	2266,r13		! source line 2266
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
	.word	_Label_3053
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3055
	.word	12
	.word	4
	.word	_Label_3056
	.word	16
	.word	4
	.word	_Label_3057
	.word	20
	.word	4
	.word	_Label_3058
	.word	24
	.word	4
	.word	0
_Label_3053:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3054:
	.ascii	"Pself\0"
	.align
_Label_3055:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3056:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3057:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3058:
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
_Label_4022:
	push	r0
	sub	r1,1,r1
	bne	_Label_4022
	mov	2271,r13		! source line 2271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_3059 = &diskBusy
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
	mov	2284,r13		! source line 2284
	mov	"\0\0WH",r10
_Label_3060:
!	jmp	_Label_3061
_Label_3061:
	mov	2284,r13		! source line 2284
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_3063 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3064) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3063  sizeInBytes=4
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
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_3065 = &semUsedInSynchMethods
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
	mov	2290,r13		! source line 2290
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3074 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3068
	cmp	r1,2
	be	_Label_3069
	cmp	r1,3
	be	_Label_3070
	cmp	r1,4
	be	_Label_3071
	cmp	r1,5
	be	_Label_3072
	cmp	r1,6
	be	_Label_3073
	jmp	_Label_3066
! CASE 1...
_Label_3068:
! SEND STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0SE",r10
!   _temp_3075 = &diskBusy
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
	mov	2293,r13		! source line 2293
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3069:
! CALL STATEMENT...
!   _temp_3076 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3076  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2295,r13		! source line 2295
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3070:
! CALL STATEMENT...
!   _temp_3077 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3077  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2297,r13		! source line 2297
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3071:
! CALL STATEMENT...
!   _temp_3078 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3078  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2299,r13		! source line 2299
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3072:
! BREAK STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0BR",r10
	jmp	_Label_3067
! CASE 6...
_Label_3073:
! CALL STATEMENT...
!   _temp_3079 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3079  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2305,r13		! source line 2305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3066:
! CALL STATEMENT...
!   _temp_3080 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3080  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2307,r13		! source line 2307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3067:
! END WHILE...
	jmp	_Label_3060
_Label_3062:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3081
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3083
	.word	12
	.word	4
	.word	_Label_3084
	.word	16
	.word	4
	.word	_Label_3085
	.word	20
	.word	4
	.word	_Label_3086
	.word	-12
	.word	4
	.word	_Label_3087
	.word	-16
	.word	4
	.word	_Label_3088
	.word	-20
	.word	4
	.word	_Label_3089
	.word	-24
	.word	4
	.word	_Label_3090
	.word	-28
	.word	4
	.word	_Label_3091
	.word	-32
	.word	4
	.word	_Label_3092
	.word	-36
	.word	4
	.word	_Label_3093
	.word	-40
	.word	4
	.word	_Label_3094
	.word	-44
	.word	4
	.word	_Label_3095
	.word	-48
	.word	4
	.word	_Label_3096
	.word	-52
	.word	4
	.word	0
_Label_3081:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3082:
	.ascii	"Pself\0"
	.align
_Label_3083:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3084:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3059\0"
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
	mov	2316,r13		! source line 2316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
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
	mov	2334,r13		! source line 2334
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
	mov	2335,r13		! source line 2335
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
	mov	2336,r13		! source line 2336
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
	mov	2336,r13		! source line 2336
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
	.word	_Label_3097
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3099
	.word	12
	.word	4
	.word	_Label_3100
	.word	16
	.word	4
	.word	_Label_3101
	.word	20
	.word	4
	.word	_Label_3102
	.word	24
	.word	4
	.word	0
_Label_3097:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3098:
	.ascii	"Pself\0"
	.align
_Label_3099:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3100:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3101:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3102:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3103
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
_Label_3103:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3104
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3104:
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
_Label_4023:
	push	r0
	sub	r1,1,r1
	bne	_Label_4023
	mov	2347,r13		! source line 2347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3105 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3105  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2354,r13		! source line 2354
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
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
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   _temp_3107 = &fileManagerLock
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
	mov	2359,r13		! source line 2359
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
	mov	2360,r13		! source line 2360
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
	mov	2361,r13		! source line 2361
	mov	"\0\0SE",r10
!   _temp_3110 = &anFCBBecameFree
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
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   _temp_3111 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3113 = &_temp_3112
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3113 = _temp_3113 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3115 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4024:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4024
!   _temp_3115 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3117:
!   Data Move: *_temp_3113 = _temp_3115  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4025:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4025
!   _temp_3113 = _temp_3113 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3114 = _temp_3114 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3114) then goto _Label_3117
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3117
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3118 = &_temp_3112
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4026
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4026:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3111 = *_temp_3118  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4027:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4027
! FOR STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3123 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3124 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3123  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3119:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3124 then goto _Label_3122		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3122
_Label_3120:
	mov	2364,r13		! source line 2364
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   _temp_3125 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3125 [i ] into _temp_3126
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
!   _temp_3127 = _temp_3126 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3127 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_3128 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3128 [i ] into _temp_3129
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
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_3131 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3131 [i ] into _temp_3132
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
!   _temp_3130 = _temp_3132		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3133 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3130  sizeInBytes=4
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
_Label_3121:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3119
! END FOR
_Label_3122:
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
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
	mov	2372,r13		! source line 2372
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
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_3136 = &anOpenFileBecameFree
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
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   _temp_3137 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3139 = &_temp_3138
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3139 = _temp_3139 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3141 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4028:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4028
!   _temp_3141 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3143:
!   Data Move: *_temp_3139 = _temp_3141  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4029:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4029
!   _temp_3139 = _temp_3139 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3140 = _temp_3140 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3140) then goto _Label_3143
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3143
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3144 = &_temp_3138
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4030
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4030:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3137 = *_temp_3144  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4031:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4031
! FOR STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3149 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3150 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3149  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3145:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3150 then goto _Label_3148		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3148
_Label_3146:
	mov	2376,r13		! source line 2376
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   _temp_3151 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3151 [i ] into _temp_3152
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
!   _temp_3153 = _temp_3152 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3153 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_3155 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3155 [i ] into _temp_3156
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
!   _temp_3154 = _temp_3156		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3157 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3154  sizeInBytes=4
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
_Label_3147:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3145
! END FOR
_Label_3148:
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4032:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4032
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   _temp_3159 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3160 = _temp_3159 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3160 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
	mov	2388,r13		! source line 2388
	mov	"\0\0SE",r10
!   _temp_3161 = &_P_Kernel_frameManager
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
	mov	2389,r13		! source line 2389
	mov	"\0\0SE",r10
!   _temp_3162 = &_P_Kernel_diskDriver
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
	mov	2389,r13		! source line 2389
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
	.word	_Label_3163
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3164
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3165
	.word	-12
	.word	4
	.word	_Label_3166
	.word	-16
	.word	4
	.word	_Label_3167
	.word	-20
	.word	4
	.word	_Label_3168
	.word	-24
	.word	4
	.word	_Label_3169
	.word	-28
	.word	4
	.word	_Label_3170
	.word	-32
	.word	4
	.word	_Label_3171
	.word	-36
	.word	4
	.word	_Label_3172
	.word	-40
	.word	4
	.word	_Label_3173
	.word	-44
	.word	4
	.word	_Label_3174
	.word	-48
	.word	4
	.word	_Label_3175
	.word	-52
	.word	4
	.word	_Label_3176
	.word	-56
	.word	4
	.word	_Label_3177
	.word	-60
	.word	4
	.word	_Label_3178
	.word	-64
	.word	4
	.word	_Label_3179
	.word	-68
	.word	4
	.word	_Label_3180
	.word	-72
	.word	4
	.word	_Label_3181
	.word	-100
	.word	28
	.word	_Label_3182
	.word	-104
	.word	4
	.word	_Label_3183
	.word	-108
	.word	4
	.word	_Label_3184
	.word	-392
	.word	284
	.word	_Label_3185
	.word	-396
	.word	4
	.word	_Label_3186
	.word	-400
	.word	4
	.word	_Label_3187
	.word	-404
	.word	4
	.word	_Label_3188
	.word	-408
	.word	4
	.word	_Label_3189
	.word	-412
	.word	4
	.word	_Label_3190
	.word	-416
	.word	4
	.word	_Label_3191
	.word	-420
	.word	4
	.word	_Label_3192
	.word	-424
	.word	4
	.word	_Label_3193
	.word	-428
	.word	4
	.word	_Label_3194
	.word	-432
	.word	4
	.word	_Label_3195
	.word	-436
	.word	4
	.word	_Label_3196
	.word	-440
	.word	4
	.word	_Label_3197
	.word	-444
	.word	4
	.word	_Label_3198
	.word	-448
	.word	4
	.word	_Label_3199
	.word	-452
	.word	4
	.word	_Label_3200
	.word	-456
	.word	4
	.word	_Label_3201
	.word	-460
	.word	4
	.word	_Label_3202
	.word	-500
	.word	40
	.word	_Label_3203
	.word	-504
	.word	4
	.word	_Label_3204
	.word	-508
	.word	4
	.word	_Label_3205
	.word	-912
	.word	404
	.word	_Label_3206
	.word	-916
	.word	4
	.word	_Label_3207
	.word	-920
	.word	4
	.word	_Label_3208
	.word	-924
	.word	4
	.word	_Label_3209
	.word	-928
	.word	4
	.word	_Label_3210
	.word	-932
	.word	4
	.word	_Label_3211
	.word	-936
	.word	4
	.word	_Label_3212
	.word	-940
	.word	4
	.word	_Label_3213
	.word	-944
	.word	4
	.word	0
_Label_3163:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3164:
	.ascii	"Pself\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3213:
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
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	2396,r13		! source line 2396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0SE",r10
!   _temp_3214 = &fileManagerLock
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
!   _temp_3215 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3215  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2399,r13		! source line 2399
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3220 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3221 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3220  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3216:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3221 then goto _Label_3219		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3219
_Label_3217:
	mov	2400,r13		! source line 2400
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3222 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3222  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2401,r13		! source line 2401
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2402,r13		! source line 2402
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3223 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3223  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2403,r13		! source line 2403
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   _temp_3224 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3224 [i ] into _temp_3225
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
_Label_3218:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3216
! END FOR
_Label_3219:
! CALL STATEMENT...
!   _temp_3226 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3226  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2406,r13		! source line 2406
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_3227 = _function_182_printFCB
	set	_function_182_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3228 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3227  sizeInBytes=4
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
	mov	2408,r13		! source line 2408
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3229 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3229  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2409,r13		! source line 2409
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3234 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3235 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3234  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3230:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3235 then goto _Label_3233		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3233
_Label_3231:
	mov	2410,r13		! source line 2410
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3236 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3236  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2411,r13		! source line 2411
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2412,r13		! source line 2412
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3237 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3237  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2413,r13		! source line 2413
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3239 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3239 [i ] into _temp_3240
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
!   _temp_3238 = _temp_3240		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3238  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2414,r13		! source line 2414
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3241 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3241  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2415,r13		! source line 2415
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_3242 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3242 [i ] into _temp_3243
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
_Label_3232:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3230
! END FOR
_Label_3233:
! CALL STATEMENT...
!   _temp_3244 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3244  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2418,r13		! source line 2418
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_3245 = _function_181_printOpen
	set	_function_181_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3246 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3245  sizeInBytes=4
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
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_3247 = &fileManagerLock
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
	mov	2420,r13		! source line 2420
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
	.word	_Label_3248
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3250
	.word	-12
	.word	4
	.word	_Label_3251
	.word	-16
	.word	4
	.word	_Label_3252
	.word	-20
	.word	4
	.word	_Label_3253
	.word	-24
	.word	4
	.word	_Label_3254
	.word	-28
	.word	4
	.word	_Label_3255
	.word	-32
	.word	4
	.word	_Label_3256
	.word	-36
	.word	4
	.word	_Label_3257
	.word	-40
	.word	4
	.word	_Label_3258
	.word	-44
	.word	4
	.word	_Label_3259
	.word	-48
	.word	4
	.word	_Label_3260
	.word	-52
	.word	4
	.word	_Label_3261
	.word	-56
	.word	4
	.word	_Label_3262
	.word	-60
	.word	4
	.word	_Label_3263
	.word	-64
	.word	4
	.word	_Label_3264
	.word	-68
	.word	4
	.word	_Label_3265
	.word	-72
	.word	4
	.word	_Label_3266
	.word	-76
	.word	4
	.word	_Label_3267
	.word	-80
	.word	4
	.word	_Label_3268
	.word	-84
	.word	4
	.word	_Label_3269
	.word	-88
	.word	4
	.word	_Label_3270
	.word	-92
	.word	4
	.word	_Label_3271
	.word	-96
	.word	4
	.word	_Label_3272
	.word	-100
	.word	4
	.word	_Label_3273
	.word	-104
	.word	4
	.word	_Label_3274
	.word	-108
	.word	4
	.word	_Label_3275
	.word	-112
	.word	4
	.word	_Label_3276
	.word	-116
	.word	4
	.word	0
_Label_3248:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3249:
	.ascii	"Pself\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3276:
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
_Label_4034:
	push	r0
	sub	r1,1,r1
	bne	_Label_4034
	mov	2425,r13		! source line 2425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_3277 = &_P_Kernel_fileManager
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
	mov	2442,r13		! source line 2442
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3278
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3278
	jmp	_Label_3279
_Label_3278:
! THEN...
	mov	2443,r13		! source line 2443
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3279:
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_3280 = &fileManagerLock
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
	mov	2448,r13		! source line 2448
	mov	"\0\0WH",r10
_Label_3281:
	mov	2448,r13		! source line 2448
	mov	"\0\0SE",r10
!   _temp_3284 = &openFileFreeList
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
!   if result==true then goto _Label_3282 else goto _Label_3283
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3283
	jmp	_Label_3282
_Label_3282:
	mov	2448,r13		! source line 2448
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_3285 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3286 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3285  sizeInBytes=4
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
	jmp	_Label_3281
_Label_3283:
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_3287 = &openFileFreeList
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
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3288 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3288 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3289 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3289 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3290 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3290 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   _temp_3291 = &fileManagerLock
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
	mov	2461,r13		! source line 2461
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
	.word	_Label_3292
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3294
	.word	12
	.word	4
	.word	_Label_3295
	.word	-12
	.word	4
	.word	_Label_3296
	.word	-16
	.word	4
	.word	_Label_3297
	.word	-20
	.word	4
	.word	_Label_3298
	.word	-24
	.word	4
	.word	_Label_3299
	.word	-28
	.word	4
	.word	_Label_3300
	.word	-32
	.word	4
	.word	_Label_3301
	.word	-36
	.word	4
	.word	_Label_3302
	.word	-40
	.word	4
	.word	_Label_3303
	.word	-44
	.word	4
	.word	_Label_3304
	.word	-48
	.word	4
	.word	_Label_3305
	.word	-52
	.word	4
	.word	_Label_3306
	.word	-56
	.word	4
	.word	0
_Label_3292:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3293:
	.ascii	"Pself\0"
	.align
_Label_3294:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3305:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3306:
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
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	2466,r13		! source line 2466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
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
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3308		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3308
!	jmp	_Label_3307
_Label_3307:
! THEN...
	mov	2497,r13		! source line 2497
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3309 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3309  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2497,r13		! source line 2497
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3308:
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
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
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2503,r13		! source line 2503
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
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0WH",r10
_Label_3310:
!   if numFiles <= 0 then goto _Label_3312		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3312
!	jmp	_Label_3311
_Label_3311:
	mov	2507,r13		! source line 2507
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3313 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3313  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3314 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3314  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2510,r13		! source line 2510
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3315 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3315  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2512,r13		! source line 2512
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3319 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3319 then goto _Label_3317		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3317
!	jmp	_Label_3318
_Label_3318:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3321
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
!   _temp_3320 = _temp_3321		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3320  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3316 else goto _Label_3317
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3317
	jmp	_Label_3316
_Label_3316:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0BR",r10
	jmp	_Label_3312
! END IF...
_Label_3317:
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3310
_Label_3312:
! IF STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3323		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3323
!	jmp	_Label_3322
_Label_3322:
! THEN...
	mov	2524,r13		! source line 2524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3323:
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_3324 = &fileManagerLock
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
	mov	2529,r13		! source line 2529
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3329 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3330 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3329  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3325:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3330 then goto _Label_3328		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3328
_Label_3326:
	mov	2529,r13		! source line 2529
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   _temp_3331 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3331 [i ] into _temp_3332
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
!   fcb = _temp_3332		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3336 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3335 = *_temp_3336  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3335 != start then goto _Label_3334		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3334
!	jmp	_Label_3333
_Label_3333:
! THEN...
	mov	2532,r13		! source line 2532
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3337 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3340 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3339 = *_temp_3340  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3338 = _temp_3339 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3337 = _temp_3338  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0SE",r10
!   _temp_3341 = &fileManagerLock
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
	mov	2534,r13		! source line 2534
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3334:
!   Increment the FOR-LOOP index variable and jump back
_Label_3327:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3325
! END FOR
_Label_3328:
! WHILE STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0WH",r10
_Label_3342:
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_3345 = &fcbFreeList
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
!   if result==true then goto _Label_3343 else goto _Label_3344
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3344
	jmp	_Label_3343
_Label_3343:
	mov	2539,r13		! source line 2539
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   _temp_3346 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3347 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3346  sizeInBytes=4
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
	jmp	_Label_3342
_Label_3344:
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
	mov	2542,r13		! source line 2542
	mov	"\0\0SE",r10
!   _temp_3348 = &fcbFreeList
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
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_3349 = &fileManagerLock
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
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3350 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3350 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3351 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3351 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3352 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3352 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3357 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3356 = *_temp_3357  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3356 < 0 then goto _Label_3355		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3355
	jmp	_Label_3353
_Label_3355:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3358 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3358 ) then goto _Label_3354		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3354
!	jmp	_Label_3353
_Label_3353:
! THEN...
	mov	2552,r13		! source line 2552
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3359 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3359  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2552,r13		! source line 2552
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3354:
! RETURN STATEMENT...
	mov	2554,r13		! source line 2554
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
	.word	_Label_3360
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3362
	.word	12
	.word	4
	.word	_Label_3363
	.word	-12
	.word	4
	.word	_Label_3364
	.word	-16
	.word	4
	.word	_Label_3365
	.word	-20
	.word	4
	.word	_Label_3366
	.word	-24
	.word	4
	.word	_Label_3367
	.word	-28
	.word	4
	.word	_Label_3368
	.word	-32
	.word	4
	.word	_Label_3369
	.word	-36
	.word	4
	.word	_Label_3370
	.word	-40
	.word	4
	.word	_Label_3371
	.word	-44
	.word	4
	.word	_Label_3372
	.word	-48
	.word	4
	.word	_Label_3373
	.word	-52
	.word	4
	.word	_Label_3374
	.word	-56
	.word	4
	.word	_Label_3375
	.word	-60
	.word	4
	.word	_Label_3376
	.word	-64
	.word	4
	.word	_Label_3377
	.word	-68
	.word	4
	.word	_Label_3378
	.word	-72
	.word	4
	.word	_Label_3379
	.word	-76
	.word	4
	.word	_Label_3380
	.word	-80
	.word	4
	.word	_Label_3381
	.word	-84
	.word	4
	.word	_Label_3382
	.word	-88
	.word	4
	.word	_Label_3383
	.word	-92
	.word	4
	.word	_Label_3384
	.word	-96
	.word	4
	.word	_Label_3385
	.word	-100
	.word	4
	.word	_Label_3386
	.word	-104
	.word	4
	.word	_Label_3387
	.word	-108
	.word	4
	.word	_Label_3388
	.word	-112
	.word	4
	.word	_Label_3389
	.word	-116
	.word	4
	.word	_Label_3390
	.word	-120
	.word	4
	.word	_Label_3391
	.word	-124
	.word	4
	.word	_Label_3392
	.word	-128
	.word	4
	.word	_Label_3393
	.word	-132
	.word	4
	.word	_Label_3394
	.word	-136
	.word	4
	.word	_Label_3395
	.word	-140
	.word	4
	.word	_Label_3396
	.word	-144
	.word	4
	.word	_Label_3397
	.word	-148
	.word	4
	.word	_Label_3398
	.word	-152
	.word	4
	.word	_Label_3399
	.word	-156
	.word	4
	.word	_Label_3400
	.word	-160
	.word	4
	.word	0
_Label_3360:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3361:
	.ascii	"Pself\0"
	.align
_Label_3362:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3339\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3338\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3394:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3395:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3396:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3397:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3398:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3399:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3400:
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
_Label_4036:
	push	r0
	sub	r1,1,r1
	bne	_Label_4036
	mov	2567,r13		! source line 2567
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   _temp_3403 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3403 then goto _Label_3402		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3402
!	jmp	_Label_3401
_Label_3401:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3402:
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_3404 = &fileManagerLock
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
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_3405 = &_P_Kernel_fileManager
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
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3406 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3406  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3407 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3410 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3409 = *_temp_3410  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3408 = _temp_3409 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3407 = _temp_3408  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3414 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3413 = *_temp_3414  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3413 > 0 then goto _Label_3412		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3412
!	jmp	_Label_3411
_Label_3411:
! THEN...
	mov	2577,r13		! source line 2577
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_3415 = &openFileFreeList
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
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   _temp_3416 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3417 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3416  sizeInBytes=4
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
	mov	2579,r13		! source line 2579
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3418 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3421 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3420 = *_temp_3421  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3419 = _temp_3420 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3418 = _temp_3419  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3425 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3424 = *_temp_3425  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3424 > 0 then goto _Label_3423		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3423
!	jmp	_Label_3422
_Label_3422:
! THEN...
	mov	2581,r13		! source line 2581
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_3426 = &fcbFreeList
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
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_3427 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3428 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3427  sizeInBytes=4
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
_Label_3423:
! END IF...
_Label_3412:
! SEND STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0SE",r10
!   _temp_3429 = &fileManagerLock
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
	mov	2585,r13		! source line 2585
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
	.word	_Label_3430
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3432
	.word	12
	.word	4
	.word	_Label_3433
	.word	-12
	.word	4
	.word	_Label_3434
	.word	-16
	.word	4
	.word	_Label_3435
	.word	-20
	.word	4
	.word	_Label_3436
	.word	-24
	.word	4
	.word	_Label_3437
	.word	-28
	.word	4
	.word	_Label_3438
	.word	-32
	.word	4
	.word	_Label_3439
	.word	-36
	.word	4
	.word	_Label_3440
	.word	-40
	.word	4
	.word	_Label_3441
	.word	-44
	.word	4
	.word	_Label_3442
	.word	-48
	.word	4
	.word	_Label_3443
	.word	-52
	.word	4
	.word	_Label_3444
	.word	-56
	.word	4
	.word	_Label_3445
	.word	-60
	.word	4
	.word	_Label_3446
	.word	-64
	.word	4
	.word	_Label_3447
	.word	-68
	.word	4
	.word	_Label_3448
	.word	-72
	.word	4
	.word	_Label_3449
	.word	-76
	.word	4
	.word	_Label_3450
	.word	-80
	.word	4
	.word	_Label_3451
	.word	-84
	.word	4
	.word	_Label_3452
	.word	-88
	.word	4
	.word	_Label_3453
	.word	-92
	.word	4
	.word	_Label_3454
	.word	-96
	.word	4
	.word	_Label_3455
	.word	-100
	.word	4
	.word	_Label_3456
	.word	-104
	.word	4
	.word	0
_Label_3430:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3431:
	.ascii	"Pself\0"
	.align
_Label_3432:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3456:
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
_Label_4037:
	push	r0
	sub	r1,1,r1
	bne	_Label_4037
	mov	2590,r13		! source line 2590
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3460 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3459 = *_temp_3460  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3459) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3461 = _temp_3459 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3461 ) then goto _Label_3458		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3458
!	jmp	_Label_3457
_Label_3457:
! THEN...
	mov	2596,r13		! source line 2596
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3466 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3465 = *_temp_3466  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3465) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3467 = _temp_3465 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3464 = *_temp_3467  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3464 >= 0 then goto _Label_3463		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3463
!	jmp	_Label_3462
_Label_3462:
! THEN...
	mov	2597,r13		! source line 2597
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3468 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3468  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2597,r13		! source line 2597
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3463:
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3470 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3469 = *_temp_3470  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3469) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3471 = _temp_3469 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3471 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3475 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3474 = *_temp_3475  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3474) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3476 = _temp_3474 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3473 = *_temp_3476  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3479 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3478 = *_temp_3479  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3478) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3480 = _temp_3478 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3477 = *_temp_3480  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3472 = _temp_3473 + _temp_3477		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3482 = *_temp_3483  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3482) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3484 = _temp_3482 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3481 = *_temp_3484  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3485 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3472  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3481  sizeInBytes=4
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
_Label_3458:
! RETURN STATEMENT...
	mov	2595,r13		! source line 2595
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
	.word	_Label_3486
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3488
	.word	12
	.word	4
	.word	_Label_3489
	.word	-12
	.word	4
	.word	_Label_3490
	.word	-16
	.word	4
	.word	_Label_3491
	.word	-20
	.word	4
	.word	_Label_3492
	.word	-24
	.word	4
	.word	_Label_3493
	.word	-28
	.word	4
	.word	_Label_3494
	.word	-32
	.word	4
	.word	_Label_3495
	.word	-36
	.word	4
	.word	_Label_3496
	.word	-40
	.word	4
	.word	_Label_3497
	.word	-44
	.word	4
	.word	_Label_3498
	.word	-48
	.word	4
	.word	_Label_3499
	.word	-52
	.word	4
	.word	_Label_3500
	.word	-56
	.word	4
	.word	_Label_3501
	.word	-60
	.word	4
	.word	_Label_3502
	.word	-64
	.word	4
	.word	_Label_3503
	.word	-68
	.word	4
	.word	_Label_3504
	.word	-72
	.word	4
	.word	_Label_3505
	.word	-76
	.word	4
	.word	_Label_3506
	.word	-80
	.word	4
	.word	_Label_3507
	.word	-84
	.word	4
	.word	_Label_3508
	.word	-88
	.word	4
	.word	_Label_3509
	.word	-92
	.word	4
	.word	_Label_3510
	.word	-96
	.word	4
	.word	_Label_3511
	.word	-100
	.word	4
	.word	_Label_3512
	.word	-104
	.word	4
	.word	_Label_3513
	.word	-108
	.word	4
	.word	0
_Label_3486:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3487:
	.ascii	"Pself\0"
	.align
_Label_3488:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3502:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3459\0"
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
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	2609,r13		! source line 2609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_3514 = &fileManagerLock
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
	mov	2625,r13		! source line 2625
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3520		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3520
!   _temp_3519 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3521
_Label_3520:
!   _temp_3519 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3521:
!   if _temp_3519 then goto _Label_3518 else goto _Label_3515
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3515
	jmp	_Label_3518
_Label_3518:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3524 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3523 = *_temp_3524  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3523 == 0 then goto _Label_3525		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3525
!   _temp_3522 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3526
_Label_3525:
!   _temp_3522 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3526:
!   if _temp_3522 then goto _Label_3517 else goto _Label_3515
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3515
	jmp	_Label_3517
_Label_3517:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3529 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3528 = *_temp_3529  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3528) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3530 = _temp_3528 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3527 = *_temp_3530  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3527 >= 0 then goto _Label_3516		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3516
!	jmp	_Label_3515
_Label_3515:
! THEN...
	mov	2626,r13		! source line 2626
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3531 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3531  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2626,r13		! source line 2626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3516:
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3532 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3532  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0WH",r10
_Label_3533:
!   if numBytes <= 0 then goto _Label_3535		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3535
!	jmp	_Label_3534
_Label_3534:
	mov	2629,r13		! source line 2629
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
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
	mov	2639,r13		! source line 2639
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
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3539 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3538 = *_temp_3539  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3538 == sector then goto _Label_3537		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3537
!	jmp	_Label_3536
_Label_3536:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3540) then goto _runtimeErrorNullPointer
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
	mov	2646,r13		! source line 2646
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3543 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3542 = *_temp_3543  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3541 = sector + _temp_3542		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3545 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3544 = *_temp_3545  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3546 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3541  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3544  sizeInBytes=4
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
	mov	2649,r13		! source line 2649
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3547 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3547 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3548 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3548 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3537:
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3550 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3549 = *_temp_3550  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3549 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   _temp_3551 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3551  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2653,r13		! source line 2653
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
	mov	2657,r13		! source line 2657
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3533
_Label_3535:
! SEND STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
!   _temp_3552 = &fileManagerLock
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
	mov	2668,r13		! source line 2668
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
	.word	_Label_3553
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3555
	.word	12
	.word	4
	.word	_Label_3556
	.word	16
	.word	4
	.word	_Label_3557
	.word	20
	.word	4
	.word	_Label_3558
	.word	24
	.word	4
	.word	_Label_3559
	.word	-16
	.word	4
	.word	_Label_3560
	.word	-20
	.word	4
	.word	_Label_3561
	.word	-24
	.word	4
	.word	_Label_3562
	.word	-28
	.word	4
	.word	_Label_3563
	.word	-32
	.word	4
	.word	_Label_3564
	.word	-36
	.word	4
	.word	_Label_3565
	.word	-40
	.word	4
	.word	_Label_3566
	.word	-44
	.word	4
	.word	_Label_3567
	.word	-48
	.word	4
	.word	_Label_3568
	.word	-52
	.word	4
	.word	_Label_3569
	.word	-56
	.word	4
	.word	_Label_3570
	.word	-60
	.word	4
	.word	_Label_3571
	.word	-64
	.word	4
	.word	_Label_3572
	.word	-68
	.word	4
	.word	_Label_3573
	.word	-72
	.word	4
	.word	_Label_3574
	.word	-76
	.word	4
	.word	_Label_3575
	.word	-80
	.word	4
	.word	_Label_3576
	.word	-84
	.word	4
	.word	_Label_3577
	.word	-88
	.word	4
	.word	_Label_3578
	.word	-92
	.word	4
	.word	_Label_3579
	.word	-96
	.word	4
	.word	_Label_3580
	.word	-100
	.word	4
	.word	_Label_3581
	.word	-104
	.word	4
	.word	_Label_3582
	.word	-9
	.word	1
	.word	_Label_3583
	.word	-10
	.word	1
	.word	_Label_3584
	.word	-108
	.word	4
	.word	_Label_3585
	.word	-112
	.word	4
	.word	_Label_3586
	.word	-116
	.word	4
	.word	_Label_3587
	.word	-120
	.word	4
	.word	_Label_3588
	.word	-124
	.word	4
	.word	_Label_3589
	.word	-128
	.word	4
	.word	0
_Label_3553:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3554:
	.ascii	"Pself\0"
	.align
_Label_3555:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3556:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3557:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3558:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3582:
	.byte	'C'
	.ascii	"_temp_3522\0"
	.align
_Label_3583:
	.byte	'C'
	.ascii	"_temp_3519\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3585:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3586:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3587:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3588:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3589:
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
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	2673,r13		! source line 2673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_3590 = &fileManagerLock
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
	mov	2690,r13		! source line 2690
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3596		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3596
!   _temp_3595 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3597
_Label_3596:
!   _temp_3595 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3597:
!   if _temp_3595 then goto _Label_3594 else goto _Label_3591
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3591
	jmp	_Label_3594
_Label_3594:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3600 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3599 = *_temp_3600  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3599 == 0 then goto _Label_3601		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3601
!   _temp_3598 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3602
_Label_3601:
!   _temp_3598 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3602:
!   if _temp_3598 then goto _Label_3593 else goto _Label_3591
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3591
	jmp	_Label_3593
_Label_3593:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3605 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3604 = *_temp_3605  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3604) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3606 = _temp_3604 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3603 = *_temp_3606  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3603 >= 0 then goto _Label_3592		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3592
!	jmp	_Label_3591
_Label_3591:
! THEN...
	mov	2691,r13		! source line 2691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3607 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3607  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2691,r13		! source line 2691
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3592:
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3608 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3608  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0WH",r10
_Label_3609:
!   if numBytes <= 0 then goto _Label_3611		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3611
!	jmp	_Label_3610
_Label_3610:
	mov	2694,r13		! source line 2694
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
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
	mov	2704,r13		! source line 2704
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
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3615 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3614 = *_temp_3615  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3614 == sector then goto _Label_3613		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3613
!	jmp	_Label_3612
_Label_3612:
! THEN...
	mov	2710,r13		! source line 2710
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3616) then goto _runtimeErrorNullPointer
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
_Label_3613:
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3618 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3617 = *_temp_3618  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3617 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0AS",r10
!   _temp_3619 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3619  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3623 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3622 = *_temp_3623  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3622 != sector then goto _Label_3621		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3621
!	jmp	_Label_3620
_Label_3620:
	jmp	_Label_3624
_Label_3621:
! ELSE...
	mov	2716,r13		! source line 2716
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3627
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3627
	jmp	_Label_3626
_Label_3627:
!   if bytesToMove != 8192 then goto _Label_3626		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3626
!	jmp	_Label_3625
_Label_3625:
	jmp	_Label_3628
_Label_3626:
! ELSE...
	mov	2720,r13		! source line 2720
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3631 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3630 = *_temp_3631  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3629 = sector + _temp_3630		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3633 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3632 = *_temp_3633  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3634 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3629  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3632  sizeInBytes=4
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
_Label_3628:
! END IF...
_Label_3624:
! ASSIGNMENT STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3635 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3635 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3636 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3636 = 1  (sizeInBytes=1)
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
	mov	2729,r13		! source line 2729
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3609
_Label_3611:
! SEND STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
!   _temp_3637 = &fileManagerLock
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
	mov	2741,r13		! source line 2741
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
	.word	_Label_3638
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3639
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3640
	.word	12
	.word	4
	.word	_Label_3641
	.word	16
	.word	4
	.word	_Label_3642
	.word	20
	.word	4
	.word	_Label_3643
	.word	24
	.word	4
	.word	_Label_3644
	.word	-16
	.word	4
	.word	_Label_3645
	.word	-20
	.word	4
	.word	_Label_3646
	.word	-24
	.word	4
	.word	_Label_3647
	.word	-28
	.word	4
	.word	_Label_3648
	.word	-32
	.word	4
	.word	_Label_3649
	.word	-36
	.word	4
	.word	_Label_3650
	.word	-40
	.word	4
	.word	_Label_3651
	.word	-44
	.word	4
	.word	_Label_3652
	.word	-48
	.word	4
	.word	_Label_3653
	.word	-52
	.word	4
	.word	_Label_3654
	.word	-56
	.word	4
	.word	_Label_3655
	.word	-60
	.word	4
	.word	_Label_3656
	.word	-64
	.word	4
	.word	_Label_3657
	.word	-68
	.word	4
	.word	_Label_3658
	.word	-72
	.word	4
	.word	_Label_3659
	.word	-76
	.word	4
	.word	_Label_3660
	.word	-80
	.word	4
	.word	_Label_3661
	.word	-84
	.word	4
	.word	_Label_3662
	.word	-88
	.word	4
	.word	_Label_3663
	.word	-92
	.word	4
	.word	_Label_3664
	.word	-96
	.word	4
	.word	_Label_3665
	.word	-100
	.word	4
	.word	_Label_3666
	.word	-104
	.word	4
	.word	_Label_3667
	.word	-108
	.word	4
	.word	_Label_3668
	.word	-112
	.word	4
	.word	_Label_3669
	.word	-9
	.word	1
	.word	_Label_3670
	.word	-10
	.word	1
	.word	_Label_3671
	.word	-116
	.word	4
	.word	_Label_3672
	.word	-120
	.word	4
	.word	_Label_3673
	.word	-124
	.word	4
	.word	_Label_3674
	.word	-128
	.word	4
	.word	_Label_3675
	.word	-132
	.word	4
	.word	_Label_3676
	.word	-136
	.word	4
	.word	0
_Label_3638:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3639:
	.ascii	"Pself\0"
	.align
_Label_3640:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3641:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3642:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3643:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3669:
	.byte	'C'
	.ascii	"_temp_3598\0"
	.align
_Label_3670:
	.byte	'C'
	.ascii	"_temp_3595\0"
	.align
_Label_3671:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3672:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3673:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3674:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3675:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3676:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3677
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3677:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3678
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3678:
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
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
	mov	2777,r13		! source line 2777
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0AS",r10
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   _temp_3679 = &_P_Kernel_frameManager
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
	mov	2780,r13		! source line 2780
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
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
	.word	_Label_3680
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3682
	.word	-12
	.word	4
	.word	0
_Label_3680:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3681:
	.ascii	"Pself\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3679\0"
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
_Label_4041:
	push	r0
	sub	r1,1,r1
	bne	_Label_4041
	mov	2787,r13		! source line 2787
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3683 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3683  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3684 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3684  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3685 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3685  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3686 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3686  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3687 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3687  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3688 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3688  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2798,r13		! source line 2798
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2800,r13		! source line 2800
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
	.word	_Label_3689
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3691
	.word	-12
	.word	4
	.word	_Label_3692
	.word	-16
	.word	4
	.word	_Label_3693
	.word	-20
	.word	4
	.word	_Label_3694
	.word	-24
	.word	4
	.word	_Label_3695
	.word	-28
	.word	4
	.word	_Label_3696
	.word	-32
	.word	4
	.word	0
_Label_3689:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3690:
	.ascii	"Pself\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3697
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3697:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3698
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3698:
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
_Label_4042:
	push	r0
	sub	r1,1,r1
	bne	_Label_4042
	mov	2811,r13		! source line 2811
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3699 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3699  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3700 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3700  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3702		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3702
!	jmp	_Label_3701
_Label_3701:
! THEN...
	mov	2816,r13		! source line 2816
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
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
	jmp	_Label_3703
_Label_3702:
! ELSE...
	mov	2818,r13		! source line 2818
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3704 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2818,r13		! source line 2818
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3703:
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
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
	.word	_Label_3705
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3707
	.word	-12
	.word	4
	.word	_Label_3708
	.word	-16
	.word	4
	.word	_Label_3709
	.word	-20
	.word	4
	.word	0
_Label_3705:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3706:
	.ascii	"Pself\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3699\0"
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
_Label_4043:
	push	r0
	sub	r1,1,r1
	bne	_Label_4043
	mov	2824,r13		! source line 2824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0SE",r10
!   _temp_3710 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3711 = _temp_3710 + 4
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
	mov	2835,r13		! source line 2835
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
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
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   _temp_3712 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3713 = _temp_3712 + 4
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
	mov	2838,r13		! source line 2838
	mov	"\0\0RE",r10
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3716 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3715  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3714  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3714  (sizeInBytes=1)
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
	.word	_Label_3717
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3719
	.word	12
	.word	4
	.word	_Label_3720
	.word	16
	.word	4
	.word	_Label_3721
	.word	-16
	.word	4
	.word	_Label_3722
	.word	-20
	.word	4
	.word	_Label_3723
	.word	-9
	.word	1
	.word	_Label_3724
	.word	-24
	.word	4
	.word	_Label_3725
	.word	-28
	.word	4
	.word	_Label_3726
	.word	-32
	.word	4
	.word	_Label_3727
	.word	-36
	.word	4
	.word	_Label_3728
	.word	-40
	.word	4
	.word	0
_Label_3717:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3718:
	.ascii	"Pself\0"
	.align
_Label_3719:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3720:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3723:
	.byte	'C'
	.ascii	"_temp_3714\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3728:
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
_Label_4044:
	push	r0
	sub	r1,1,r1
	bne	_Label_4044
	mov	2843,r13		! source line 2843
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0IF",r10
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_3732 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3733) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3732  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3731  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3731 then goto _Label_3730 else goto _Label_3729
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3729
	jmp	_Label_3730
_Label_3729:
! THEN...
	mov	2849,r13		! source line 2849
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3734 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3734  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2849,r13		! source line 2849
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3730:
! RETURN STATEMENT...
	mov	2851,r13		! source line 2851
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
	.word	_Label_3735
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3736
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3737
	.word	-16
	.word	4
	.word	_Label_3738
	.word	-20
	.word	4
	.word	_Label_3739
	.word	-24
	.word	4
	.word	_Label_3740
	.word	-9
	.word	1
	.word	_Label_3741
	.word	-28
	.word	4
	.word	0
_Label_3735:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3736:
	.ascii	"Pself\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3740:
	.byte	'C'
	.ascii	"_temp_3731\0"
	.align
_Label_3741:
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
_Label_4045:
	push	r0
	sub	r1,1,r1
	bne	_Label_4045
	mov	2856,r13		! source line 2856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3745 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3744 = *_temp_3745  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3744) then goto _Label_3743
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3743
!	jmp	_Label_3742
_Label_3742:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3746 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3746  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2883,r13		! source line 2883
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3743:
! IF STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0IF",r10
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3750) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3749  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3749 == 1112300152 then goto _Label_3748		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3748
!	jmp	_Label_3747
_Label_3747:
! THEN...
	mov	2888,r13		! source line 2888
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3751 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3751  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3748:
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
	mov	2893,r13		! source line 2893
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3752) then goto _runtimeErrorNullPointer
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
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
	mov	2894,r13		! source line 2894
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3753) then goto _runtimeErrorNullPointer
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
	mov	2895,r13		! source line 2895
	mov	"\0\0AS",r10
	mov	2895,r13		! source line 2895
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3754) then goto _runtimeErrorNullPointer
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
	mov	2896,r13		! source line 2896
	mov	"\0\0AS",r10
	mov	2896,r13		! source line 2896
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3755) then goto _runtimeErrorNullPointer
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
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
	mov	2897,r13		! source line 2897
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3756) then goto _runtimeErrorNullPointer
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
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
	mov	2898,r13		! source line 2898
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3757) then goto _runtimeErrorNullPointer
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
	mov	2901,r13		! source line 2901
	mov	"\0\0IF",r10
!   _temp_3760 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3760) then goto _Label_3759
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3759
!	jmp	_Label_3758
_Label_3758:
! THEN...
	mov	2902,r13		! source line 2902
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3761 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3761  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3759:
! ASSIGNMENT STATEMENT...
	mov	2905,r13		! source line 2905
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
	mov	2909,r13		! source line 2909
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3763
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3763
!	jmp	_Label_3762
_Label_3762:
! THEN...
	mov	2910,r13		! source line 2910
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3764 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3764  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3763:
! IF STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0IF",r10
!   _temp_3767 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3767) then goto _Label_3766
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3766
!	jmp	_Label_3765
_Label_3765:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3768 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3768  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3766:
! IF STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0IF",r10
!   _temp_3771 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3771 then goto _Label_3770		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3770
!	jmp	_Label_3769
_Label_3769:
! THEN...
	mov	2920,r13		! source line 2920
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3772 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3772  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3770:
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
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
	mov	2926,r13		! source line 2926
	mov	"\0\0IF",r10
!   _temp_3775 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3775) then goto _Label_3774
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3774
!	jmp	_Label_3773
_Label_3773:
! THEN...
	mov	2927,r13		! source line 2927
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3776 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3776  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2927,r13		! source line 2927
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3774:
! IF STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0IF",r10
!   _temp_3779 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3779 then goto _Label_3778		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3778
!	jmp	_Label_3777
_Label_3777:
! THEN...
	mov	2931,r13		! source line 2931
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3780 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3780  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3778:
! ASSIGNMENT STATEMENT...
	mov	2934,r13		! source line 2934
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
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   _temp_3783 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3782 = _temp_3783 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3781 = _temp_3782 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3781 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3785		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3785
!	jmp	_Label_3784
_Label_3784:
! THEN...
	mov	2953,r13		! source line 2953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3786 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3786  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3787 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3787  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3788 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3788  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3785:
! SEND STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_3789 = &_P_Kernel_frameManager
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
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
	mov	2964,r13		! source line 2964
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3793) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3792  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3792 == 707406378 then goto _Label_3791		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3791
!	jmp	_Label_3790
_Label_3790:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3794 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3794  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2965,r13		! source line 2965
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_3795 = &_P_Kernel_frameManager
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
	mov	2967,r13		! source line 2967
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3791:
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
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
	mov	2972,r13		! source line 2972
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3800 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3801 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3800  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3796:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3801 then goto _Label_3799		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3799
_Label_3797:
	mov	2972,r13		! source line 2972
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
	mov	2973,r13		! source line 2973
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
	mov	2976,r13		! source line 2976
	mov	"\0\0IF",r10
	mov	2976,r13		! source line 2976
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3805) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3804  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3804 then goto _Label_3803 else goto _Label_3802
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3802
	jmp	_Label_3803
_Label_3802:
! THEN...
	mov	2977,r13		! source line 2977
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3806 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3806  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2977,r13		! source line 2977
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
!   _temp_3807 = &_P_Kernel_frameManager
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
	mov	2979,r13		! source line 2979
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3803:
! SEND STATEMENT...
	mov	2981,r13		! source line 2981
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
	mov	2982,r13		! source line 2982
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3798:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3796
! END FOR
_Label_3799:
! IF STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0IF",r10
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3811) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3810  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3810 == 707406378 then goto _Label_3809		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3809
!	jmp	_Label_3808
_Label_3808:
! THEN...
	mov	2987,r13		! source line 2987
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3812 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3812  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_3813 = &_P_Kernel_frameManager
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
	mov	2989,r13		! source line 2989
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3809:
! FOR STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3818 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3819 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3818  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3814:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3819 then goto _Label_3817		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3817
_Label_3815:
	mov	2993,r13		! source line 2993
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0AS",r10
	mov	2994,r13		! source line 2994
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
	mov	2997,r13		! source line 2997
	mov	"\0\0IF",r10
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3823) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3822  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3822 then goto _Label_3821 else goto _Label_3820
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3820
	jmp	_Label_3821
_Label_3820:
! THEN...
	mov	2998,r13		! source line 2998
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3824 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3824  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2998,r13		! source line 2998
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
!   _temp_3825 = &_P_Kernel_frameManager
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
	mov	3000,r13		! source line 3000
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3821:
! ASSIGNMENT STATEMENT...
	mov	3002,r13		! source line 3002
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3816:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3814
! END FOR
_Label_3817:
! IF STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0IF",r10
	mov	3006,r13		! source line 3006
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3829) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3828  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3828 == 707406378 then goto _Label_3827		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3827
!	jmp	_Label_3826
_Label_3826:
! THEN...
	mov	3007,r13		! source line 3007
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3830 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3830  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3007,r13		! source line 3007
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0SE",r10
!   _temp_3831 = &_P_Kernel_frameManager
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
	mov	3009,r13		! source line 3009
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3827:
! ASSIGNMENT STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0AS",r10
	mov	3013,r13		! source line 3013
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
	mov	3017,r13		! source line 3017
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3020,r13		! source line 3020
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
	.word	_Label_3832
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3834
	.word	12
	.word	4
	.word	_Label_3835
	.word	-16
	.word	4
	.word	_Label_3836
	.word	-20
	.word	4
	.word	_Label_3837
	.word	-24
	.word	4
	.word	_Label_3838
	.word	-28
	.word	4
	.word	_Label_3839
	.word	-32
	.word	4
	.word	_Label_3840
	.word	-36
	.word	4
	.word	_Label_3841
	.word	-40
	.word	4
	.word	_Label_3842
	.word	-9
	.word	1
	.word	_Label_3843
	.word	-44
	.word	4
	.word	_Label_3844
	.word	-48
	.word	4
	.word	_Label_3845
	.word	-52
	.word	4
	.word	_Label_3846
	.word	-56
	.word	4
	.word	_Label_3847
	.word	-60
	.word	4
	.word	_Label_3848
	.word	-64
	.word	4
	.word	_Label_3849
	.word	-68
	.word	4
	.word	_Label_3850
	.word	-72
	.word	4
	.word	_Label_3851
	.word	-76
	.word	4
	.word	_Label_3852
	.word	-10
	.word	1
	.word	_Label_3853
	.word	-80
	.word	4
	.word	_Label_3854
	.word	-84
	.word	4
	.word	_Label_3855
	.word	-88
	.word	4
	.word	_Label_3856
	.word	-92
	.word	4
	.word	_Label_3857
	.word	-96
	.word	4
	.word	_Label_3858
	.word	-100
	.word	4
	.word	_Label_3859
	.word	-104
	.word	4
	.word	_Label_3860
	.word	-108
	.word	4
	.word	_Label_3861
	.word	-112
	.word	4
	.word	_Label_3862
	.word	-116
	.word	4
	.word	_Label_3863
	.word	-120
	.word	4
	.word	_Label_3864
	.word	-124
	.word	4
	.word	_Label_3865
	.word	-128
	.word	4
	.word	_Label_3866
	.word	-132
	.word	4
	.word	_Label_3867
	.word	-136
	.word	4
	.word	_Label_3868
	.word	-140
	.word	4
	.word	_Label_3869
	.word	-144
	.word	4
	.word	_Label_3870
	.word	-148
	.word	4
	.word	_Label_3871
	.word	-152
	.word	4
	.word	_Label_3872
	.word	-156
	.word	4
	.word	_Label_3873
	.word	-160
	.word	4
	.word	_Label_3874
	.word	-164
	.word	4
	.word	_Label_3875
	.word	-168
	.word	4
	.word	_Label_3876
	.word	-172
	.word	4
	.word	_Label_3877
	.word	-176
	.word	4
	.word	_Label_3878
	.word	-180
	.word	4
	.word	_Label_3879
	.word	-184
	.word	4
	.word	_Label_3880
	.word	-188
	.word	4
	.word	_Label_3881
	.word	-192
	.word	4
	.word	_Label_3882
	.word	-196
	.word	4
	.word	_Label_3883
	.word	-200
	.word	4
	.word	_Label_3884
	.word	-204
	.word	4
	.word	_Label_3885
	.word	-208
	.word	4
	.word	_Label_3886
	.word	-212
	.word	4
	.word	_Label_3887
	.word	-216
	.word	4
	.word	_Label_3888
	.word	-220
	.word	4
	.word	_Label_3889
	.word	-224
	.word	4
	.word	_Label_3890
	.word	-228
	.word	4
	.word	_Label_3891
	.word	-232
	.word	4
	.word	_Label_3892
	.word	-236
	.word	4
	.word	_Label_3893
	.word	-240
	.word	4
	.word	_Label_3894
	.word	-244
	.word	4
	.word	_Label_3895
	.word	-248
	.word	4
	.word	_Label_3896
	.word	-252
	.word	4
	.word	_Label_3897
	.word	-256
	.word	4
	.word	_Label_3898
	.word	-260
	.word	4
	.word	_Label_3899
	.word	-264
	.word	4
	.word	_Label_3900
	.word	-268
	.word	4
	.word	0
_Label_3832:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3833:
	.ascii	"Pself\0"
	.align
_Label_3834:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3836:
	.byte	'?'
	.ascii	"_temp_3830\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3825\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3842:
	.byte	'C'
	.ascii	"_temp_3822\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3807\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3806\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3805\0"
	.align
_Label_3852:
	.byte	'C'
	.ascii	"_temp_3804\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3801\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3800\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3782\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3868:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3870:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3871:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3873:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3875:
	.byte	'?'
	.ascii	"_temp_3761\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3750\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3749\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3889:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3890:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3891:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3892:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3893:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3894:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3895:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3896:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3897:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3898:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3899:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3900:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
