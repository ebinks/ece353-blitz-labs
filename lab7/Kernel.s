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
_Label_3788:
	push	r0
	sub	r1,1,r1
	bne	_Label_3788
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
_Label_3789:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3789
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
_Label_3790:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3790
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
_Label_3791:
	push	r0
	sub	r1,1,r1
	bne	_Label_3791
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
_Label_3792:
	push	r0
	sub	r1,1,r1
	bne	_Label_3792
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
_Label_3793:
	push	r0
	sub	r1,1,r1
	bne	_Label_3793
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
_Label_3794:
	push	r0
	sub	r1,1,r1
	bne	_Label_3794
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
_Label_3795:
	push	r0
	sub	r1,1,r1
	bne	_Label_3795
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
_Label_3796:
	push	r0
	sub	r1,1,r1
	bne	_Label_3796
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
_Label_3797:
	push	r0
	sub	r1,1,r1
	bne	_Label_3797
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
_Label_3798:
	push	r0
	sub	r1,1,r1
	bne	_Label_3798
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
_Label_3799:
	push	r0
	sub	r1,1,r1
	bne	_Label_3799
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
_Label_3800:
	push	r0
	sub	r1,1,r1
	bne	_Label_3800
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
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
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
	mov	19,r1
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
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
	store	r1,[r14+-68]
!   Data Move: _temp_421 = *_temp_422  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_421) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = _temp_421 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_423 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
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
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_425 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_424 = *_temp_425  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_424) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _temp_424 + 24
	load	[r14+-60],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_426 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_427 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1062,r13		! source line 1062
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_430 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_429 = *_temp_430  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_429) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = _temp_429 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_428 = _temp_431		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-44]
!   _temp_432 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
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
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_433 = *_temp_434  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_435 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_433  sizeInBytes=4
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
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_436 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1066,r13		! source line 1066
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1066,r13		! source line 1066
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
	.word	_Label_437
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_438
	.word	8
	.word	4
	.word	_Label_439
	.word	-12
	.word	4
	.word	_Label_440
	.word	-16
	.word	4
	.word	_Label_441
	.word	-20
	.word	4
	.word	_Label_442
	.word	-24
	.word	4
	.word	_Label_443
	.word	-28
	.word	4
	.word	_Label_444
	.word	-32
	.word	4
	.word	_Label_445
	.word	-36
	.word	4
	.word	_Label_446
	.word	-40
	.word	4
	.word	_Label_447
	.word	-44
	.word	4
	.word	_Label_448
	.word	-48
	.word	4
	.word	_Label_449
	.word	-52
	.word	4
	.word	_Label_450
	.word	-56
	.word	4
	.word	_Label_451
	.word	-60
	.word	4
	.word	_Label_452
	.word	-64
	.word	4
	.word	_Label_453
	.word	-68
	.word	4
	.word	_Label_454
	.word	-72
	.word	4
	.word	_Label_455
	.word	-76
	.word	4
	.word	0
_Label_437:
	.ascii	"ProcessFinish\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_455:
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
_Label_3803:
	push	r0
	sub	r1,1,r1
	bne	_Label_3803
	mov	1542,r13		! source line 1542
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1554,r13		! source line 1554
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
	mov	1555,r13		! source line 1555
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1555,r13		! source line 1555
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
	.word	_Label_456
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_456:
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
_Label_3804:
	push	r0
	sub	r1,1,r1
	bne	_Label_3804
	mov	1560,r13		! source line 1560
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0IF",r10
!   _temp_460 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_461 = _temp_460 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_459 = *_temp_461  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_459 == 0 then goto _Label_458		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_458
!	jmp	_Label_457
_Label_457:
! THEN...
	mov	1575,r13		! source line 1575
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0SE",r10
!   _temp_463 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_464 = _temp_463 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_462 = *_temp_464  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_462) then goto _runtimeErrorNullPointer
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
_Label_458:
! RETURN STATEMENT...
	mov	1574,r13		! source line 1574
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
	.word	_Label_465
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	_Label_469
	.word	-24
	.word	4
	.word	_Label_470
	.word	-28
	.word	4
	.word	_Label_471
	.word	-32
	.word	4
	.word	0
_Label_465:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_459\0"
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
	mov	1582,r13		! source line 1582
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
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
	.word	_Label_472
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_472:
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
_Label_3805:
	push	r0
	sub	r1,1,r1
	bne	_Label_3805
	mov	1596,r13		! source line 1596
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_473 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1603,r13		! source line 1603
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
	.word	_Label_474
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_475
	.word	-12
	.word	4
	.word	0
_Label_474:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_473\0"
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
_Label_3806:
	push	r0
	sub	r1,1,r1
	bne	_Label_3806
	mov	1608,r13		! source line 1608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_476 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1615,r13		! source line 1615
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1615,r13		! source line 1615
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_478
	.word	-12
	.word	4
	.word	0
_Label_477:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_476\0"
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
_Label_3807:
	push	r0
	sub	r1,1,r1
	bne	_Label_3807
	mov	1620,r13		! source line 1620
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_479 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_479  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1627,r13		! source line 1627
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1627,r13		! source line 1627
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
	.word	_Label_480
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_481
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_479\0"
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
_Label_3808:
	push	r0
	sub	r1,1,r1
	bne	_Label_3808
	mov	1632,r13		! source line 1632
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_482 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_482  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1639,r13		! source line 1639
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
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
	.word	_Label_483
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_484
	.word	-12
	.word	4
	.word	0
_Label_483:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_482\0"
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
_Label_3809:
	push	r0
	sub	r1,1,r1
	bne	_Label_3809
	mov	1644,r13		! source line 1644
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_485 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1651,r13		! source line 1651
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1651,r13		! source line 1651
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_487
	.word	-12
	.word	4
	.word	0
_Label_486:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_485\0"
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
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	1656,r13		! source line 1656
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_488 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_488  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1663,r13		! source line 1663
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1663,r13		! source line 1663
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
	.word	_Label_489
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_490
	.word	-12
	.word	4
	.word	0
_Label_489:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_488\0"
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
_Label_3811:
	push	r0
	sub	r1,1,r1
	bne	_Label_3811
	mov	1668,r13		! source line 1668
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_491 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1675,r13		! source line 1675
	mov	"\0\0CA",r10
	call	_function_185_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1675,r13		! source line 1675
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_493
	.word	-12
	.word	4
	.word	0
_Label_492:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_491\0"
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
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	1680,r13		! source line 1680
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_494 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_495 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1687,r13		! source line 1687
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_499 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_498 = *_temp_499  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_498 == 0 then goto _Label_497		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_497
!	jmp	_Label_496
_Label_496:
! THEN...
	mov	1691,r13		! source line 1691
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_501 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_500 = *_temp_501  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_500) then goto _runtimeErrorNullPointer
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
	jmp	_Label_502
_Label_497:
! ELSE...
	mov	1693,r13		! source line 1693
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_502:
! SEND STATEMENT...
	mov	1695,r13		! source line 1695
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
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
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
	.word	_Label_504
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_505
	.word	8
	.word	4
	.word	_Label_506
	.word	-12
	.word	4
	.word	_Label_507
	.word	-16
	.word	4
	.word	_Label_508
	.word	-20
	.word	4
	.word	_Label_509
	.word	-24
	.word	4
	.word	_Label_510
	.word	-28
	.word	4
	.word	_Label_511
	.word	-32
	.word	4
	.word	_Label_512
	.word	-36
	.word	4
	.word	0
_Label_504:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
	mov	1706,r13		! source line 1706
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1727,r13		! source line 1727
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3814
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_513
_Label_3814:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_513
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_513
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_527,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_527:
	jmp	_Label_519	! 1:	
	jmp	_Label_526	! 2:	
	jmp	_Label_516	! 3:	
	jmp	_Label_515	! 4:	
	jmp	_Label_518	! 5:	
	jmp	_Label_517	! 6:	
	jmp	_Label_520	! 7:	
	jmp	_Label_521	! 8:	
	jmp	_Label_522	! 9:	
	jmp	_Label_523	! 10:	
	jmp	_Label_524	! 11:	
	jmp	_Label_525	! 12:	
! CASE 4...
_Label_515:
! RETURN STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0RE",r10
!   Call the function
	mov	1729,r13		! source line 1729
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_516:
! CALL STATEMENT...
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_517:
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_518:
! RETURN STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_519:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_520:
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_521:
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_532  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_532  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_522:
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
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
	mov	1745,r13		! source line 1745
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_533  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_533  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_523:
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
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
	mov	1747,r13		! source line 1747
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_534  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_534  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_524:
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_535  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_535  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_525:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
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
! CASE 2...
_Label_526:
! CALL STATEMENT...
!   Call the function
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_513:
! CALL STATEMENT...
!   _temp_536 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_537 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1760,r13		! source line 1760
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_514:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
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
	.word	_Label_538
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_539
	.word	8
	.word	4
	.word	_Label_540
	.word	12
	.word	4
	.word	_Label_541
	.word	16
	.word	4
	.word	_Label_542
	.word	20
	.word	4
	.word	_Label_543
	.word	24
	.word	4
	.word	_Label_544
	.word	-12
	.word	4
	.word	_Label_545
	.word	-16
	.word	4
	.word	_Label_546
	.word	-20
	.word	4
	.word	_Label_547
	.word	-24
	.word	4
	.word	_Label_548
	.word	-28
	.word	4
	.word	_Label_549
	.word	-32
	.word	4
	.word	_Label_550
	.word	-36
	.word	4
	.word	_Label_551
	.word	-40
	.word	4
	.word	_Label_552
	.word	-44
	.word	4
	.word	_Label_553
	.word	-48
	.word	4
	.word	0
_Label_538:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_542:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_543:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_528\0"
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
_Label_3815:
	push	r0
	sub	r1,1,r1
	bne	_Label_3815
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
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
	.word	_Label_554
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_555
	.word	8
	.word	4
	.word	0
_Label_554:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_555:
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
_Label_3816:
	push	r0
	sub	r1,1,r1
	bne	_Label_3816
	mov	1773,r13		! source line 1773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_556 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1774,r13		! source line 1774
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
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
	.word	_Label_557
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_558
	.word	-12
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_556\0"
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
_Label_3817:
	push	r0
	sub	r1,1,r1
	bne	_Label_3817
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1780,r13		! source line 1780
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
	mov	1780,r13		! source line 1780
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
	.word	_Label_559
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_559:
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
_Label_3818:
	push	r0
	sub	r1,1,r1
	bne	_Label_3818
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
	mov	1791,r13		! source line 1791
	mov	"\0\0SE",r10
!   _temp_560 = &_P_Kernel_threadManager
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
	mov	1794,r13		! source line 1794
	mov	"\0\0AS",r10
	mov	1794,r13		! source line 1794
	mov	"\0\0SE",r10
!   _temp_561 = &_P_Kernel_processManager
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
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = pcb + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_562 = th  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = pcb + 16
	load	[r14+-204],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_565 = *_temp_566  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_565) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = _temp_565 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_564 = *_temp_567  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_563 = _temp_564  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_568 = th + 76
	load	[r14+-200],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_568 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = th + 4160
	load	[r14+-200],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_569 = pcb  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = th + 4096
	load	[r14+-200],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_571 [0 ] into _temp_572
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
!   _temp_570 = _temp_572		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_573 = th + 68
	load	[r14+-200],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = th + 88
	load	[r14+-200],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_575 [999 ] into _temp_576
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
!   _temp_574 = _temp_576		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_573 = _temp_574  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = pcb + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_577 = _temp_578		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_581 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_580 = *_temp_581  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_580) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = _temp_580 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_583 = _temp_582 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_579 = *_temp_583  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_584 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_577  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_579  sizeInBytes=4
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
	mov	1806,r13		! source line 1806
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_589 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_592 = *_temp_593  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_592) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _temp_592 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_595 = _temp_594 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_591 = *_temp_595  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_590 = _temp_591 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_589  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-212]
_Label_585:
!   Perform the FOR-LOOP termination test
!   if i > _temp_590 then goto _Label_588		
	load	[r14+-212],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_588
_Label_586:
	mov	1806,r13		! source line 1806
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = pcb + 32
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
!   Retrieve Result: targetName=_temp_596  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1807,r13		! source line 1807
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_599 = *_temp_600  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_599) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _temp_599 + 32
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
!   Retrieve Result: targetName=_temp_598  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_598  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0IF",r10
	mov	1808,r13		! source line 1808
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 32
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
!   Retrieve Result: targetName=_temp_604  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_604 then goto _Label_603 else goto _Label_602
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_602
	jmp	_Label_603
_Label_602:
! THEN...
	mov	1809,r13		! source line 1809
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = pcb + 32
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
	jmp	_Label_609
_Label_603:
! ELSE...
	mov	1811,r13		! source line 1811
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = pcb + 32
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
_Label_609:
!   Increment the FOR-LOOP index variable and jump back
_Label_587:
!   i = i + 1
	load	[r14+-212],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
	jmp	_Label_585
! END FOR
_Label_588:
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! SEND STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   _temp_611 = _function_184_ResumeChildAfterFork
	set	_function_184_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_611  sizeInBytes=4
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
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = pcb + 12
	load	[r14+-204],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_612 = *_temp_613  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_612  (sizeInBytes=4)
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
	.word	_Label_614
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_615
	.word	-16
	.word	4
	.word	_Label_616
	.word	-20
	.word	4
	.word	_Label_617
	.word	-24
	.word	4
	.word	_Label_618
	.word	-28
	.word	4
	.word	_Label_619
	.word	-32
	.word	4
	.word	_Label_620
	.word	-36
	.word	4
	.word	_Label_621
	.word	-40
	.word	4
	.word	_Label_622
	.word	-44
	.word	4
	.word	_Label_623
	.word	-9
	.word	1
	.word	_Label_624
	.word	-48
	.word	4
	.word	_Label_625
	.word	-52
	.word	4
	.word	_Label_626
	.word	-56
	.word	4
	.word	_Label_627
	.word	-60
	.word	4
	.word	_Label_628
	.word	-64
	.word	4
	.word	_Label_629
	.word	-68
	.word	4
	.word	_Label_630
	.word	-72
	.word	4
	.word	_Label_631
	.word	-76
	.word	4
	.word	_Label_632
	.word	-80
	.word	4
	.word	_Label_633
	.word	-84
	.word	4
	.word	_Label_634
	.word	-88
	.word	4
	.word	_Label_635
	.word	-92
	.word	4
	.word	_Label_636
	.word	-96
	.word	4
	.word	_Label_637
	.word	-100
	.word	4
	.word	_Label_638
	.word	-104
	.word	4
	.word	_Label_639
	.word	-108
	.word	4
	.word	_Label_640
	.word	-112
	.word	4
	.word	_Label_641
	.word	-116
	.word	4
	.word	_Label_642
	.word	-120
	.word	4
	.word	_Label_643
	.word	-124
	.word	4
	.word	_Label_644
	.word	-128
	.word	4
	.word	_Label_645
	.word	-132
	.word	4
	.word	_Label_646
	.word	-136
	.word	4
	.word	_Label_647
	.word	-140
	.word	4
	.word	_Label_648
	.word	-144
	.word	4
	.word	_Label_649
	.word	-148
	.word	4
	.word	_Label_650
	.word	-152
	.word	4
	.word	_Label_651
	.word	-156
	.word	4
	.word	_Label_652
	.word	-160
	.word	4
	.word	_Label_653
	.word	-164
	.word	4
	.word	_Label_654
	.word	-168
	.word	4
	.word	_Label_655
	.word	-172
	.word	4
	.word	_Label_656
	.word	-176
	.word	4
	.word	_Label_657
	.word	-180
	.word	4
	.word	_Label_658
	.word	-184
	.word	4
	.word	_Label_659
	.word	-188
	.word	4
	.word	_Label_660
	.word	-192
	.word	4
	.word	_Label_661
	.word	-196
	.word	4
	.word	_Label_662
	.word	-200
	.word	4
	.word	_Label_663
	.word	-204
	.word	4
	.word	_Label_664
	.word	-208
	.word	4
	.word	_Label_665
	.word	-212
	.word	4
	.word	_Label_666
	.word	-216
	.word	4
	.word	0
_Label_614:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_623:
	.byte	'C'
	.ascii	"_temp_604\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_593\0"
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
	.ascii	"_temp_584\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_662:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_666:
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
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
	mov	1820,r13		! source line 1820
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_667 = *_temp_668  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_667) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = _temp_667 + 32
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
!   _temp_671 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_671 [0 ] into _temp_672
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
!   _temp_670 = _temp_672		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_673 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_674 [14 ] into _temp_675
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
!   Data Move: initUserStackTop = *_temp_675  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_676 [999 ] into _temp_677
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
!   initSystemStackTop = _temp_677		(4 bytes)
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
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
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
	.word	_Label_678
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_679
	.word	8
	.word	4
	.word	_Label_680
	.word	-12
	.word	4
	.word	_Label_681
	.word	-16
	.word	4
	.word	_Label_682
	.word	-20
	.word	4
	.word	_Label_683
	.word	-24
	.word	4
	.word	_Label_684
	.word	-28
	.word	4
	.word	_Label_685
	.word	-32
	.word	4
	.word	_Label_686
	.word	-36
	.word	4
	.word	_Label_687
	.word	-40
	.word	4
	.word	_Label_688
	.word	-44
	.word	4
	.word	_Label_689
	.word	-48
	.word	4
	.word	_Label_690
	.word	-52
	.word	4
	.word	_Label_691
	.word	-56
	.word	4
	.word	_Label_692
	.word	-60
	.word	4
	.word	_Label_693
	.word	-64
	.word	4
	.word	0
_Label_678:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_679:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_691:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_693:
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
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_698 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_699 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_698  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_694:
!   Perform the FOR-LOOP termination test
!   if i > _temp_699 then goto _Label_697		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_697
_Label_695:
	mov	1838,r13		! source line 1838
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0IF",r10
!   _temp_705 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_706 = _temp_705 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_706 [i ] into _temp_707
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
!   _temp_708 = _temp_707 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_704 = *_temp_708  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_704 != processID then goto _Label_701		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_701
!	jmp	_Label_703
_Label_703:
!   _temp_710 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_711 = _temp_710 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_711 [i ] into _temp_712
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
!   _temp_713 = _temp_712 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_709 = *_temp_713  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_716 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_715 = *_temp_716  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_715) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_717 = _temp_715 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_714 = *_temp_717  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_709 != _temp_714 then goto _Label_701		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_701
!	jmp	_Label_702
_Label_702:
!   _temp_719 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_720 = _temp_719 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_720 [i ] into _temp_721
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
!   _temp_722 = _temp_721 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_718 = *_temp_722  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_718 == 3 then goto _Label_701		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_701
!	jmp	_Label_700
_Label_700:
! THEN...
	mov	1840,r13		! source line 1840
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0AS",r10
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   _temp_724 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_725 = _temp_724 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_725 [i ] into _temp_726
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
!   _temp_723 = _temp_726		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_727 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_723  sizeInBytes=4
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
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_701:
!   Increment the FOR-LOOP index variable and jump back
_Label_696:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_694
! END FOR
_Label_697:
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
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
	.word	_Label_728
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_729
	.word	8
	.word	4
	.word	_Label_730
	.word	-12
	.word	4
	.word	_Label_731
	.word	-16
	.word	4
	.word	_Label_732
	.word	-20
	.word	4
	.word	_Label_733
	.word	-24
	.word	4
	.word	_Label_734
	.word	-28
	.word	4
	.word	_Label_735
	.word	-32
	.word	4
	.word	_Label_736
	.word	-36
	.word	4
	.word	_Label_737
	.word	-40
	.word	4
	.word	_Label_738
	.word	-44
	.word	4
	.word	_Label_739
	.word	-48
	.word	4
	.word	_Label_740
	.word	-52
	.word	4
	.word	_Label_741
	.word	-56
	.word	4
	.word	_Label_742
	.word	-60
	.word	4
	.word	_Label_743
	.word	-64
	.word	4
	.word	_Label_744
	.word	-68
	.word	4
	.word	_Label_745
	.word	-72
	.word	4
	.word	_Label_746
	.word	-76
	.word	4
	.word	_Label_747
	.word	-80
	.word	4
	.word	_Label_748
	.word	-84
	.word	4
	.word	_Label_749
	.word	-88
	.word	4
	.word	_Label_750
	.word	-92
	.word	4
	.word	_Label_751
	.word	-96
	.word	4
	.word	_Label_752
	.word	-100
	.word	4
	.word	_Label_753
	.word	-104
	.word	4
	.word	_Label_754
	.word	-108
	.word	4
	.word	_Label_755
	.word	-112
	.word	4
	.word	_Label_756
	.word	-116
	.word	4
	.word	_Label_757
	.word	-120
	.word	4
	.word	0
_Label_728:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_756:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_757:
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
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	1849,r13		! source line 1849
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1859,r13		! source line 1859
	mov	"\0\0AS",r10
	mov	1859,r13		! source line 1859
	mov	"\0\0SE",r10
!   _temp_758 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-112]
!   _temp_759 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_761 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_760 = *_temp_761  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_760) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_762 = _temp_760 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_758  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_759  sizeInBytes=4
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
	mov	1860,r13		! source line 1860
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_764		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_764
!	jmp	_Label_763
_Label_763:
! THEN...
	mov	1860,r13		! source line 1860
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_764:
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3822:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3822
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0SE",r10
!   _temp_766 = &newAddrSpace
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
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
	mov	1865,r13		! source line 1865
	mov	"\0\0SE",r10
!   _temp_767 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_768 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_767  sizeInBytes=4
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
	mov	1866,r13		! source line 1866
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_769
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_769
	jmp	_Label_770
_Label_769:
! THEN...
	mov	1866,r13		! source line 1866
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_770:
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
	mov	1869,r13		! source line 1869
	mov	"\0\0SE",r10
!   _temp_771 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_771  sizeInBytes=4
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
	mov	1870,r13		! source line 1870
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_773		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_773
!	jmp	_Label_772
_Label_772:
! THEN...
	mov	1870,r13		! source line 1870
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_773:
! ASSIGNMENT STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_775 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_774 = *_temp_775  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_774) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_776 = _temp_774 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_776 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3823:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3823
! SEND STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_778 = *_temp_779  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_778) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_780 = _temp_778 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_777 = _temp_780		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_781 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_777  sizeInBytes=4
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
	mov	1875,r13		! source line 1875
	mov	"\0\0SE",r10
!   _temp_782 = &_P_Kernel_fileManager
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
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   _temp_784 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_785 = _temp_784 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_783 = *_temp_785  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_783 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_786 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_786 [999 ] into _temp_787
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
!   initSystemStackTop = _temp_787		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0SE",r10
!   _temp_788 = &newAddrSpace
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
	mov	1881,r13		! source line 1881
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_789 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_789 = 1  (sizeInBytes=1)
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
	mov	1882,r13		! source line 1882
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
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
	.word	_Label_790
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_791
	.word	8
	.word	4
	.word	_Label_792
	.word	-12
	.word	4
	.word	_Label_793
	.word	-16
	.word	4
	.word	_Label_794
	.word	-20
	.word	4
	.word	_Label_795
	.word	-24
	.word	4
	.word	_Label_796
	.word	-28
	.word	4
	.word	_Label_797
	.word	-32
	.word	4
	.word	_Label_798
	.word	-36
	.word	4
	.word	_Label_799
	.word	-40
	.word	4
	.word	_Label_800
	.word	-44
	.word	4
	.word	_Label_801
	.word	-48
	.word	4
	.word	_Label_802
	.word	-52
	.word	4
	.word	_Label_803
	.word	-56
	.word	4
	.word	_Label_804
	.word	-60
	.word	4
	.word	_Label_805
	.word	-64
	.word	4
	.word	_Label_806
	.word	-68
	.word	4
	.word	_Label_807
	.word	-72
	.word	4
	.word	_Label_808
	.word	-76
	.word	4
	.word	_Label_809
	.word	-80
	.word	4
	.word	_Label_810
	.word	-84
	.word	4
	.word	_Label_811
	.word	-88
	.word	4
	.word	_Label_812
	.word	-92
	.word	4
	.word	_Label_813
	.word	-96
	.word	4
	.word	_Label_814
	.word	-100
	.word	4
	.word	_Label_815
	.word	-104
	.word	4
	.word	_Label_816
	.word	-108
	.word	4
	.word	_Label_817
	.word	-112
	.word	4
	.word	_Label_818
	.word	-204
	.word	92
	.word	_Label_819
	.word	-208
	.word	4
	.word	_Label_820
	.word	-212
	.word	4
	.word	_Label_821
	.word	-236
	.word	24
	.word	_Label_822
	.word	-240
	.word	4
	.word	_Label_823
	.word	-244
	.word	4
	.word	_Label_824
	.word	-248
	.word	4
	.word	0
_Label_790:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_791:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_818:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_819:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_820:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_821:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_823:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_824:
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
_Label_3824:
	push	r0
	sub	r1,1,r1
	bne	_Label_3824
	mov	1889,r13		! source line 1889
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
	mov	1893,r13		! source line 1893
	mov	"\0\0SE",r10
!   _temp_825 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-44]
!   _temp_826 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_827 = *_temp_828  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_827) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _temp_827 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_825  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_826  sizeInBytes=4
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
	mov	1894,r13		! source line 1894
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_831		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_831
!	jmp	_Label_830
_Label_830:
! THEN...
	mov	1894,r13		! source line 1894
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_831:
! CALL STATEMENT...
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_832 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_833 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_834 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_835 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1903,r13		! source line 1903
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
	.word	_Label_836
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_837
	.word	8
	.word	4
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	_Label_842
	.word	-28
	.word	4
	.word	_Label_843
	.word	-32
	.word	4
	.word	_Label_844
	.word	-36
	.word	4
	.word	_Label_845
	.word	-40
	.word	4
	.word	_Label_846
	.word	-44
	.word	4
	.word	_Label_847
	.word	-48
	.word	4
	.word	_Label_848
	.word	-72
	.word	24
	.word	0
_Label_836:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_837:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_832\0"
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
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_848:
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
_Label_3825:
	push	r0
	sub	r1,1,r1
	bne	_Label_3825
	mov	1908,r13		! source line 1908
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0AS",r10
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   _temp_849 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-80]
!   _temp_850 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_852 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_851 = *_temp_852  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_851) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_853 = _temp_851 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_849  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_850  sizeInBytes=4
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
	mov	1914,r13		! source line 1914
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_855		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_855
!	jmp	_Label_854
_Label_854:
! THEN...
	mov	1914,r13		! source line 1914
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_855:
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-92]
! FOR STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_860 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_861 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_860  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-88]
_Label_856:
!   Perform the FOR-LOOP termination test
!   if i > _temp_861 then goto _Label_859		
	load	[r14+-88],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_859
_Label_857:
	mov	1918,r13		! source line 1918
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_866 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_865 = *_temp_866  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_865) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_867 = _temp_865 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_867 [i ] into _temp_868
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
!   Data Move: _temp_864 = *_temp_868  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_864) then goto _Label_862
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_862
	jmp	_Label_863
_Label_862:
! THEN...
	mov	1920,r13		! source line 1920
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
! BREAK STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0BR",r10
	jmp	_Label_859
! END IF...
_Label_863:
!   Increment the FOR-LOOP index variable and jump back
_Label_858:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_856
! END FOR
_Label_859:
! IF STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_870		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_870
!	jmp	_Label_869
_Label_869:
! THEN...
	mov	1925,r13		! source line 1925
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_870:
! ASSIGNMENT STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0AS",r10
	mov	1928,r13		! source line 1928
	mov	"\0\0SE",r10
!   _temp_871 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-32]
!   _temp_872 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_871  sizeInBytes=4
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
	mov	1929,r13		! source line 1929
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_873
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_873
	jmp	_Label_874
_Label_873:
! THEN...
	mov	1930,r13		! source line 1930
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_874:
! ASSIGNMENT STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_875 = *_temp_876  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_875) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_877 = _temp_875 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_877 [fileDescriptorIndex ] into _temp_878
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
!   Data Move: *_temp_878 = openFile  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
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
	.word	_Label_879
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_880
	.word	8
	.word	4
	.word	_Label_881
	.word	-12
	.word	4
	.word	_Label_882
	.word	-16
	.word	4
	.word	_Label_883
	.word	-20
	.word	4
	.word	_Label_884
	.word	-24
	.word	4
	.word	_Label_885
	.word	-28
	.word	4
	.word	_Label_886
	.word	-32
	.word	4
	.word	_Label_887
	.word	-36
	.word	4
	.word	_Label_888
	.word	-40
	.word	4
	.word	_Label_889
	.word	-44
	.word	4
	.word	_Label_890
	.word	-48
	.word	4
	.word	_Label_891
	.word	-52
	.word	4
	.word	_Label_892
	.word	-56
	.word	4
	.word	_Label_893
	.word	-60
	.word	4
	.word	_Label_894
	.word	-64
	.word	4
	.word	_Label_895
	.word	-68
	.word	4
	.word	_Label_896
	.word	-72
	.word	4
	.word	_Label_897
	.word	-76
	.word	4
	.word	_Label_898
	.word	-80
	.word	4
	.word	_Label_899
	.word	-84
	.word	4
	.word	_Label_900
	.word	-88
	.word	4
	.word	_Label_901
	.word	-92
	.word	4
	.word	_Label_902
	.word	-116
	.word	24
	.word	_Label_903
	.word	-120
	.word	4
	.word	0
_Label_879:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_880:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_900:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_902:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_903:
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
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
	mov	1939,r13		! source line 1939
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_908		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_908
	jmp	_Label_904
_Label_908:
!   if fileDesc < 10 then goto _Label_907		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_907
	jmp	_Label_904
_Label_907:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_910 = *_temp_911  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_910) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_912 = _temp_910 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_912 [fileDesc ] into _temp_913
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
!   Data Move: _temp_909 = *_temp_913  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_909) then goto _Label_904
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_904
!	jmp	_Label_906
_Label_906:
!   if sizeInBytes >= 0 then goto _Label_905		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_905
!	jmp	_Label_904
_Label_904:
! THEN...
	mov	1946,r13		! source line 1946
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1946,r13		! source line 1946
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_905:
! ASSIGNMENT STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_915 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_914 = *_temp_915  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_914) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_916 = _temp_914 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_916 [fileDesc ] into _temp_917
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
!   Data Move: openFile = *_temp_917  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
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
	mov	1951,r13		! source line 1951
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
	mov	1952,r13		! source line 1952
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_918 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_918  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_919 = *_temp_920  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_919) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_921 = _temp_919 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_921  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0WH",r10
_Label_922:
!	jmp	_Label_923
_Label_923:
	mov	1956,r13		! source line 1956
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0IF",r10
!   _temp_927 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_927 <= fileSize then goto _Label_926		(int)
	load	[r14+-208],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_926
!	jmp	_Label_925
_Label_925:
! THEN...
	mov	1959,r13		! source line 1959
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_926:
! IF STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0IF",r10
!   _temp_930 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_930 <= sizeInBytes then goto _Label_929		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_929
!	jmp	_Label_928
_Label_928:
! THEN...
	mov	1962,r13		! source line 1962
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_929:
! IF STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_932		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_932
!	jmp	_Label_931
_Label_931:
! THEN...
	mov	1965,r13		! source line 1965
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0BR",r10
	jmp	_Label_924
! END IF...
_Label_932:
! IF STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_937		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_937
	jmp	_Label_933
_Label_937:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_940 = *_temp_941  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _temp_940 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_943 = _temp_942 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_939 = *_temp_943  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_938 = _temp_939 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_938 then goto _Label_936		(int)
	load	[r14+-264],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_936
	jmp	_Label_933
_Label_936:
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_946 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_945 = *_temp_946  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_945) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _temp_945 + 32
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
!   Retrieve Result: targetName=_temp_944  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_944 then goto _Label_935 else goto _Label_933
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_933
	jmp	_Label_935
_Label_935:
	mov	1968,r13		! source line 1968
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_950 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_949 = *_temp_950  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_949) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = _temp_949 + 32
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
!   Retrieve Result: targetName=_temp_948  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_948 then goto _Label_934 else goto _Label_933
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_933
	jmp	_Label_934
_Label_933:
! THEN...
	mov	1969,r13		! source line 1969
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_934:
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_953		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_953
!	jmp	_Label_952
_Label_952:
! THEN...
	mov	1977,r13		! source line 1977
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0BR",r10
	jmp	_Label_924
! END IF...
_Label_953:
! END WHILE...
	jmp	_Label_922
_Label_924:
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_955 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_954 = *_temp_955  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_954) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_956 = _temp_954 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_956 [fileDesc ] into _temp_957
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
!   Data Move: openFile = *_temp_957  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
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
	mov	1985,r13		! source line 1985
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
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_958 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_958  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_960 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_959 = *_temp_960  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_959) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_961 = _temp_959 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_961  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0WH",r10
_Label_962:
!	jmp	_Label_963
_Label_963:
	mov	1990,r13		! source line 1990
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0IF",r10
!   _temp_967 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_967 <= fileSize then goto _Label_966		(int)
	load	[r14+-120],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_966
!	jmp	_Label_965
_Label_965:
! THEN...
	mov	1993,r13		! source line 1993
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_966:
! IF STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0IF",r10
!   _temp_970 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_970 <= sizeInBytes then goto _Label_969		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_969
!	jmp	_Label_968
_Label_968:
! THEN...
	mov	1996,r13		! source line 1996
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_969:
! IF STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_972		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_972
!	jmp	_Label_971
_Label_971:
! THEN...
	mov	1999,r13		! source line 1999
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0BR",r10
	jmp	_Label_964
! END IF...
_Label_972:
! IF STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_977		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_977
	jmp	_Label_973
_Label_977:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_980 = *_temp_981  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_980) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = _temp_980 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_983 = _temp_982 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_979 = *_temp_983  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_978 = _temp_979 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_978 then goto _Label_976		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_976
	jmp	_Label_973
_Label_976:
	mov	2001,r13		! source line 2001
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_985 = *_temp_986  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_985) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _temp_985 + 32
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
!   Retrieve Result: targetName=_temp_984  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_984 then goto _Label_975 else goto _Label_973
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_973
	jmp	_Label_975
_Label_975:
	mov	2001,r13		! source line 2001
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_989 = *_temp_990  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_989) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = _temp_989 + 32
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
!   Retrieve Result: targetName=_temp_988  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_988 then goto _Label_974 else goto _Label_973
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_973
	jmp	_Label_974
_Label_973:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_974:
! SEND STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_993 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_992 = *_temp_993  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_992) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_994 = _temp_992 + 32
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
	mov	2005,r13		! source line 2005
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_996 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_995 = *_temp_996  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_995) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_997 = _temp_995 + 32
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
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
	mov	2006,r13		! source line 2006
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1000 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_999 = *_temp_1000  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_999) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1001 = _temp_999 + 32
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
!   Retrieve Result: targetName=_temp_998  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_998 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
	mov	2007,r13		! source line 2007
	mov	"\0\0SE",r10
!   _temp_1002 = &_P_Kernel_fileManager
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
	mov	2008,r13		! source line 2008
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1004		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1004
!	jmp	_Label_1003
_Label_1003:
! THEN...
	mov	2013,r13		! source line 2013
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0BR",r10
	jmp	_Label_964
! END IF...
_Label_1004:
! END WHILE...
	jmp	_Label_962
_Label_964:
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1005 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1005 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2018,r13		! source line 2018
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
	.word	_Label_1006
	.word	12		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1007
	.word	8
	.word	4
	.word	_Label_1008
	.word	12
	.word	4
	.word	_Label_1009
	.word	16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	_Label_1015
	.word	-40
	.word	4
	.word	_Label_1016
	.word	-44
	.word	4
	.word	_Label_1017
	.word	-48
	.word	4
	.word	_Label_1018
	.word	-52
	.word	4
	.word	_Label_1019
	.word	-56
	.word	4
	.word	_Label_1020
	.word	-60
	.word	4
	.word	_Label_1021
	.word	-64
	.word	4
	.word	_Label_1022
	.word	-68
	.word	4
	.word	_Label_1023
	.word	-72
	.word	4
	.word	_Label_1024
	.word	-76
	.word	4
	.word	_Label_1025
	.word	-9
	.word	1
	.word	_Label_1026
	.word	-80
	.word	4
	.word	_Label_1027
	.word	-84
	.word	4
	.word	_Label_1028
	.word	-88
	.word	4
	.word	_Label_1029
	.word	-10
	.word	1
	.word	_Label_1030
	.word	-92
	.word	4
	.word	_Label_1031
	.word	-96
	.word	4
	.word	_Label_1032
	.word	-100
	.word	4
	.word	_Label_1033
	.word	-104
	.word	4
	.word	_Label_1034
	.word	-108
	.word	4
	.word	_Label_1035
	.word	-112
	.word	4
	.word	_Label_1036
	.word	-116
	.word	4
	.word	_Label_1037
	.word	-120
	.word	4
	.word	_Label_1038
	.word	-124
	.word	4
	.word	_Label_1039
	.word	-128
	.word	4
	.word	_Label_1040
	.word	-132
	.word	4
	.word	_Label_1041
	.word	-136
	.word	4
	.word	_Label_1042
	.word	-140
	.word	4
	.word	_Label_1043
	.word	-144
	.word	4
	.word	_Label_1044
	.word	-148
	.word	4
	.word	_Label_1045
	.word	-152
	.word	4
	.word	_Label_1046
	.word	-156
	.word	4
	.word	_Label_1047
	.word	-160
	.word	4
	.word	_Label_1048
	.word	-164
	.word	4
	.word	_Label_1049
	.word	-11
	.word	1
	.word	_Label_1050
	.word	-168
	.word	4
	.word	_Label_1051
	.word	-172
	.word	4
	.word	_Label_1052
	.word	-176
	.word	4
	.word	_Label_1053
	.word	-12
	.word	1
	.word	_Label_1054
	.word	-180
	.word	4
	.word	_Label_1055
	.word	-184
	.word	4
	.word	_Label_1056
	.word	-188
	.word	4
	.word	_Label_1057
	.word	-192
	.word	4
	.word	_Label_1058
	.word	-196
	.word	4
	.word	_Label_1059
	.word	-200
	.word	4
	.word	_Label_1060
	.word	-204
	.word	4
	.word	_Label_1061
	.word	-208
	.word	4
	.word	_Label_1062
	.word	-212
	.word	4
	.word	_Label_1063
	.word	-216
	.word	4
	.word	_Label_1064
	.word	-220
	.word	4
	.word	_Label_1065
	.word	-224
	.word	4
	.word	_Label_1066
	.word	-228
	.word	4
	.word	_Label_1067
	.word	-232
	.word	4
	.word	_Label_1068
	.word	-236
	.word	4
	.word	_Label_1069
	.word	-240
	.word	4
	.word	_Label_1070
	.word	-244
	.word	4
	.word	_Label_1071
	.word	-248
	.word	4
	.word	_Label_1072
	.word	-252
	.word	4
	.word	_Label_1073
	.word	-256
	.word	4
	.word	_Label_1074
	.word	-260
	.word	4
	.word	_Label_1075
	.word	-264
	.word	4
	.word	_Label_1076
	.word	-268
	.word	4
	.word	_Label_1077
	.word	-272
	.word	4
	.word	_Label_1078
	.word	-276
	.word	4
	.word	_Label_1079
	.word	-280
	.word	4
	.word	_Label_1080
	.word	-284
	.word	4
	.word	_Label_1081
	.word	-288
	.word	4
	.word	_Label_1082
	.word	-292
	.word	4
	.word	_Label_1083
	.word	-296
	.word	4
	.word	_Label_1084
	.word	-13
	.word	1
	.word	0
_Label_1006:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1008:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1025:
	.byte	'C'
	.ascii	"_temp_988\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1029:
	.byte	'C'
	.ascii	"_temp_984\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1049:
	.byte	'C'
	.ascii	"_temp_948\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_1053:
	.byte	'C'
	.ascii	"_temp_944\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_1075:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1076:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1077:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1078:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1079:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1080:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1081:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1082:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1083:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1084:
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
	mov	74,r1
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
	mov	2023,r13		! source line 2023
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1089		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1089
	jmp	_Label_1085
_Label_1089:
!   if fileDesc <= 9 then goto _Label_1088		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1088
	jmp	_Label_1085
_Label_1088:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1092 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1091 = *_temp_1092  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1091) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1093 = _temp_1091 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_1093 [fileDesc ] into _temp_1094
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
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
	store	r2,[r14+-232]
!   Data Move: _temp_1090 = *_temp_1094  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1090) then goto _Label_1085
	load	[r14+-248],r1
	cmp	r1,r0
	be	_Label_1085
!	jmp	_Label_1087
_Label_1087:
!   if sizeInBytes >= 0 then goto _Label_1086		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1086
!	jmp	_Label_1085
_Label_1085:
! THEN...
	mov	2033,r13		! source line 2033
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1086:
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1096 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1095 = *_temp_1096  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1095) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1097 = _temp_1095 + 124
	load	[r14+-228],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   Move address of _temp_1097 [fileDesc ] into _temp_1098
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Data Move: openFile = *_temp_1098  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-252],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-252],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = openFile + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-212]
!   Data Move: nextPosInFile = *_temp_1099  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = openFile + 20
	load	[r14+-284],r1
	add	r1,20,r1
	store	r1,[r14+-204]
!   Data Move: _temp_1100 = *_temp_1101  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_1100) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = _temp_1100 + 24
	load	[r14+-208],r1
	add	r1,24,r1
	store	r1,[r14+-200]
!   Data Move: fileSize = *_temp_1102  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-276]
! WHILE STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0WH",r10
_Label_1103:
!	jmp	_Label_1104
_Label_1104:
	mov	2043,r13		! source line 2043
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-260],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0IF",r10
!   _temp_1108 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   if _temp_1108 <= fileSize then goto _Label_1107		(int)
	load	[r14+-196],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1107
!	jmp	_Label_1106
_Label_1106:
! THEN...
	mov	2046,r13		! source line 2046
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-276],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1107:
! IF STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0IF",r10
!   _temp_1111 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   if _temp_1111 <= sizeInBytes then goto _Label_1110		(int)
	load	[r14+-192],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1110
!	jmp	_Label_1109
_Label_1109:
! THEN...
	mov	2049,r13		! source line 2049
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1110:
! IF STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1113		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1113
!	jmp	_Label_1112
_Label_1112:
! THEN...
	mov	2052,r13		! source line 2052
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0BR",r10
	jmp	_Label_1105
! END IF...
_Label_1113:
! IF STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1118		(int)
	load	[r14+-256],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1118
	jmp	_Label_1114
_Label_1118:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1122 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1121 = *_temp_1122  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1121) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1123 = _temp_1121 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   _temp_1124 = _temp_1123 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1120 = *_temp_1124  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   _temp_1119 = _temp_1120 - 1		(int)
	load	[r14+-184],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
!   if virtPage <= _temp_1119 then goto _Label_1117		(int)
	load	[r14+-256],r1
	load	[r14+-188],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1117
	jmp	_Label_1114
_Label_1117:
	mov	2054,r13		! source line 2054
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1127 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1126 = *_temp_1127  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1126) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = _temp_1126 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1125  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1125 then goto _Label_1116 else goto _Label_1114
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1114
	jmp	_Label_1116
_Label_1116:
	mov	2054,r13		! source line 2054
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1131 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1130 = *_temp_1131  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1130) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _temp_1130 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1129  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1129 then goto _Label_1115 else goto _Label_1114
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1114
	jmp	_Label_1115
_Label_1114:
! THEN...
	mov	2055,r13		! source line 2055
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1115:
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-256],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1134		(int)
	load	[r14+-264],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1134
!	jmp	_Label_1133
_Label_1133:
! THEN...
	mov	2062,r13		! source line 2062
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0BR",r10
	jmp	_Label_1105
! END IF...
_Label_1134:
! END WHILE...
	jmp	_Label_1103
_Label_1105:
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1136 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1135 = *_temp_1136  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1135) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1137 = _temp_1135 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1137 [fileDesc ] into _temp_1138
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
!   Data Move: openFile = *_temp_1138  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-252],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-252],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1139 = openFile + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: nextPosInFile = *_temp_1139  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1141 = openFile + 20
	load	[r14+-284],r1
	add	r1,20,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1140 = *_temp_1141  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1140) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1142 = _temp_1140 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-112]
!   Data Move: fileSize = *_temp_1142  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-276]
! WHILE STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0WH",r10
_Label_1143:
!	jmp	_Label_1144
_Label_1144:
	mov	2074,r13		! source line 2074
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   currentChunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-260],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0IF",r10
!   _temp_1148 = nextPosInFile + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
!   if _temp_1148 <= fileSize then goto _Label_1147		(int)
	load	[r14+-108],r1
	load	[r14+-276],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1147
!	jmp	_Label_1146
_Label_1146:
! THEN...
	mov	2077,r13		! source line 2077
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   currentChunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-276],r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1147:
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   _temp_1151 = copiedSoFar + currentChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
!   if _temp_1151 <= sizeInBytes then goto _Label_1150		(int)
	load	[r14+-104],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1150
!	jmp	_Label_1149
_Label_1149:
! THEN...
	mov	2080,r13		! source line 2080
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   currentChunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-264],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1150:
! IF STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0IF",r10
!   if currentChunkSize > 0 then goto _Label_1153		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1153
!	jmp	_Label_1152
_Label_1152:
! THEN...
	mov	2083,r13		! source line 2083
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0BR",r10
	jmp	_Label_1145
! END IF...
_Label_1153:
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1158		(int)
	load	[r14+-256],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1158
	jmp	_Label_1154
_Label_1158:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1161 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1161) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _temp_1161 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   _temp_1164 = _temp_1163 + 4
	load	[r14+-84],r1
	add	r1,4,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1160 = *_temp_1164  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_1159 = _temp_1160 - 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   if virtPage <= _temp_1159 then goto _Label_1157		(int)
	load	[r14+-256],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1157
	jmp	_Label_1154
_Label_1157:
	mov	2085,r13		! source line 2085
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1165  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1165 then goto _Label_1156 else goto _Label_1154
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1154
	jmp	_Label_1156
_Label_1156:
	mov	2085,r13		! source line 2085
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1171 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1170 = *_temp_1171  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1170) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1172 = _temp_1170 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1169  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1169 then goto _Label_1155 else goto _Label_1154
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1154
	jmp	_Label_1155
_Label_1154:
! THEN...
	mov	2086,r13		! source line 2086
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1155:
! SEND STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1174 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1173 = *_temp_1174  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1173) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1175 = _temp_1173 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1178 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1177 = *_temp_1178  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1177) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1179 = _temp_1177 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1176  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1176 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-260],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_1180 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=currentChunkSize  sizeInBytes=4
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
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + currentChunkSize		(int)
	load	[r14+-268],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + currentChunkSize		(int)
	load	[r14+-264],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-256],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1182		(int)
	load	[r14+-264],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1182
!	jmp	_Label_1181
_Label_1181:
! THEN...
	mov	2096,r13		! source line 2096
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0BR",r10
	jmp	_Label_1145
! END IF...
_Label_1182:
! END WHILE...
	jmp	_Label_1143
_Label_1145:
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = openFile + 16
	load	[r14+-284],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1183 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+8]
	add	r15,300,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1184
	.word	12		! total size of parameters
	.word	296		! frame size = 296
	.word	_Label_1185
	.word	8
	.word	4
	.word	_Label_1186
	.word	12
	.word	4
	.word	_Label_1187
	.word	16
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
	.word	_Label_1195
	.word	-48
	.word	4
	.word	_Label_1196
	.word	-52
	.word	4
	.word	_Label_1197
	.word	-56
	.word	4
	.word	_Label_1198
	.word	-60
	.word	4
	.word	_Label_1199
	.word	-64
	.word	4
	.word	_Label_1200
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_1205
	.word	-80
	.word	4
	.word	_Label_1206
	.word	-84
	.word	4
	.word	_Label_1207
	.word	-88
	.word	4
	.word	_Label_1208
	.word	-92
	.word	4
	.word	_Label_1209
	.word	-96
	.word	4
	.word	_Label_1210
	.word	-100
	.word	4
	.word	_Label_1211
	.word	-104
	.word	4
	.word	_Label_1212
	.word	-108
	.word	4
	.word	_Label_1213
	.word	-112
	.word	4
	.word	_Label_1214
	.word	-116
	.word	4
	.word	_Label_1215
	.word	-120
	.word	4
	.word	_Label_1216
	.word	-124
	.word	4
	.word	_Label_1217
	.word	-128
	.word	4
	.word	_Label_1218
	.word	-132
	.word	4
	.word	_Label_1219
	.word	-136
	.word	4
	.word	_Label_1220
	.word	-140
	.word	4
	.word	_Label_1221
	.word	-144
	.word	4
	.word	_Label_1222
	.word	-148
	.word	4
	.word	_Label_1223
	.word	-152
	.word	4
	.word	_Label_1224
	.word	-11
	.word	1
	.word	_Label_1225
	.word	-156
	.word	4
	.word	_Label_1226
	.word	-160
	.word	4
	.word	_Label_1227
	.word	-164
	.word	4
	.word	_Label_1228
	.word	-12
	.word	1
	.word	_Label_1229
	.word	-168
	.word	4
	.word	_Label_1230
	.word	-172
	.word	4
	.word	_Label_1231
	.word	-176
	.word	4
	.word	_Label_1232
	.word	-180
	.word	4
	.word	_Label_1233
	.word	-184
	.word	4
	.word	_Label_1234
	.word	-188
	.word	4
	.word	_Label_1235
	.word	-192
	.word	4
	.word	_Label_1236
	.word	-196
	.word	4
	.word	_Label_1237
	.word	-200
	.word	4
	.word	_Label_1238
	.word	-204
	.word	4
	.word	_Label_1239
	.word	-208
	.word	4
	.word	_Label_1240
	.word	-212
	.word	4
	.word	_Label_1241
	.word	-216
	.word	4
	.word	_Label_1242
	.word	-220
	.word	4
	.word	_Label_1243
	.word	-224
	.word	4
	.word	_Label_1244
	.word	-228
	.word	4
	.word	_Label_1245
	.word	-232
	.word	4
	.word	_Label_1246
	.word	-236
	.word	4
	.word	_Label_1247
	.word	-240
	.word	4
	.word	_Label_1248
	.word	-244
	.word	4
	.word	_Label_1249
	.word	-248
	.word	4
	.word	_Label_1250
	.word	-252
	.word	4
	.word	_Label_1251
	.word	-256
	.word	4
	.word	_Label_1252
	.word	-260
	.word	4
	.word	_Label_1253
	.word	-264
	.word	4
	.word	_Label_1254
	.word	-268
	.word	4
	.word	_Label_1255
	.word	-272
	.word	4
	.word	_Label_1256
	.word	-276
	.word	4
	.word	_Label_1257
	.word	-280
	.word	4
	.word	_Label_1258
	.word	-284
	.word	4
	.word	_Label_1259
	.word	-13
	.word	1
	.word	0
_Label_1184:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1185:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1186:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1187:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1200:
	.byte	'C'
	.ascii	"_temp_1169\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1204:
	.byte	'C'
	.ascii	"_temp_1165\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1224:
	.byte	'C'
	.ascii	"_temp_1129\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1228:
	.byte	'C'
	.ascii	"_temp_1125\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1250:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1251:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1255:
	.byte	'I'
	.ascii	"currentChunkSize\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1257:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1258:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1259:
	.byte	'B'
	.ascii	"readSuccess\0"
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
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
	mov	2107,r13		! source line 2107
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_1260 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1261 = _temp_1260 + 4
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
	mov	2111,r13		! source line 2111
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1267		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1267
	jmp	_Label_1262
_Label_1267:
!   if fileDesc < 10 then goto _Label_1266		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1266
	jmp	_Label_1262
_Label_1266:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1270 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1269 = *_temp_1270  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1269) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = _temp_1269 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1271 [fileDesc ] into _temp_1272
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
!   Data Move: _temp_1268 = *_temp_1272  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1268) then goto _Label_1262
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1262
!	jmp	_Label_1265
_Label_1265:
!   if newCurrentPos >= -1 then goto _Label_1264		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1264
	jmp	_Label_1262
_Label_1264:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1277 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1276 = *_temp_1277  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1276) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1278 = _temp_1276 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1278 [fileDesc ] into _temp_1279
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
!   Data Move: _temp_1275 = *_temp_1279  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1275) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1280 = _temp_1275 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1274 = *_temp_1280  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1274) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1281 = _temp_1274 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1273 = *_temp_1281  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1273 then goto _Label_1263		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1263
!	jmp	_Label_1262
_Label_1262:
! THEN...
	mov	2112,r13		! source line 2112
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_1282 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1283 = _temp_1282 + 4
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
	mov	2113,r13		! source line 2113
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1263:
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1284 = *_temp_1285  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1284) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1286 = _temp_1284 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1286 [fileDesc ] into _temp_1287
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
!   Data Move: openFile = *_temp_1287  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1289		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1289
!	jmp	_Label_1288
_Label_1288:
! THEN...
	mov	2117,r13		! source line 2117
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1290 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1293 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1292 = *_temp_1293  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1292) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1294 = _temp_1292 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1291 = *_temp_1294  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1290 = _temp_1291  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_1295 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1296 = _temp_1295 + 4
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
	mov	2119,r13		! source line 2119
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1299 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1298 = *_temp_1299  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1298) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1300 = _temp_1298 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1297 = *_temp_1300  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1297  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1289:
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1301 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1301 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_1302 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1303 = _temp_1302 + 4
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
	mov	2123,r13		! source line 2123
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
	.word	_Label_1304
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1305
	.word	8
	.word	4
	.word	_Label_1306
	.word	12
	.word	4
	.word	_Label_1307
	.word	-12
	.word	4
	.word	_Label_1308
	.word	-16
	.word	4
	.word	_Label_1309
	.word	-20
	.word	4
	.word	_Label_1310
	.word	-24
	.word	4
	.word	_Label_1311
	.word	-28
	.word	4
	.word	_Label_1312
	.word	-32
	.word	4
	.word	_Label_1313
	.word	-36
	.word	4
	.word	_Label_1314
	.word	-40
	.word	4
	.word	_Label_1315
	.word	-44
	.word	4
	.word	_Label_1316
	.word	-48
	.word	4
	.word	_Label_1317
	.word	-52
	.word	4
	.word	_Label_1318
	.word	-56
	.word	4
	.word	_Label_1319
	.word	-60
	.word	4
	.word	_Label_1320
	.word	-64
	.word	4
	.word	_Label_1321
	.word	-68
	.word	4
	.word	_Label_1322
	.word	-72
	.word	4
	.word	_Label_1323
	.word	-76
	.word	4
	.word	_Label_1324
	.word	-80
	.word	4
	.word	_Label_1325
	.word	-84
	.word	4
	.word	_Label_1326
	.word	-88
	.word	4
	.word	_Label_1327
	.word	-92
	.word	4
	.word	_Label_1328
	.word	-96
	.word	4
	.word	_Label_1329
	.word	-100
	.word	4
	.word	_Label_1330
	.word	-104
	.word	4
	.word	_Label_1331
	.word	-108
	.word	4
	.word	_Label_1332
	.word	-112
	.word	4
	.word	_Label_1333
	.word	-116
	.word	4
	.word	_Label_1334
	.word	-120
	.word	4
	.word	_Label_1335
	.word	-124
	.word	4
	.word	_Label_1336
	.word	-128
	.word	4
	.word	_Label_1337
	.word	-132
	.word	4
	.word	_Label_1338
	.word	-136
	.word	4
	.word	_Label_1339
	.word	-140
	.word	4
	.word	_Label_1340
	.word	-144
	.word	4
	.word	_Label_1341
	.word	-148
	.word	4
	.word	_Label_1342
	.word	-152
	.word	4
	.word	_Label_1343
	.word	-156
	.word	4
	.word	0
_Label_1304:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1305:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1306:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1343:
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
_Label_3829:
	push	r0
	sub	r1,1,r1
	bne	_Label_3829
	mov	2128,r13		! source line 2128
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1347		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1347
	jmp	_Label_1344
_Label_1347:
!   if fileDesc < 10 then goto _Label_1346		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1346
	jmp	_Label_1344
_Label_1346:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1349 = *_temp_1350  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1349) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1351 = _temp_1349 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1351 [fileDesc ] into _temp_1352
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
!   Data Move: _temp_1348 = *_temp_1352  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1348) then goto _Label_1344
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1344
	jmp	_Label_1345
_Label_1344:
	jmp	_Label_1353
_Label_1345:
! ELSE...
	mov	2131,r13		! source line 2131
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1356 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1355 = *_temp_1356  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1355) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1357 = _temp_1355 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1357 [fileDesc ] into _temp_1358
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
!   Data Move: _temp_1354 = *_temp_1358  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1359 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1354  sizeInBytes=4
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
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1361 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1360 = *_temp_1361  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1360) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = _temp_1360 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1362 [fileDesc ] into _temp_1363
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
!   Data Move: *_temp_1363 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1353:
! RETURN STATEMENT...
	mov	2129,r13		! source line 2129
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
	.word	_Label_1364
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1365
	.word	8
	.word	4
	.word	_Label_1366
	.word	-12
	.word	4
	.word	_Label_1367
	.word	-16
	.word	4
	.word	_Label_1368
	.word	-20
	.word	4
	.word	_Label_1369
	.word	-24
	.word	4
	.word	_Label_1370
	.word	-28
	.word	4
	.word	_Label_1371
	.word	-32
	.word	4
	.word	_Label_1372
	.word	-36
	.word	4
	.word	_Label_1373
	.word	-40
	.word	4
	.word	_Label_1374
	.word	-44
	.word	4
	.word	_Label_1375
	.word	-48
	.word	4
	.word	_Label_1376
	.word	-52
	.word	4
	.word	_Label_1377
	.word	-56
	.word	4
	.word	_Label_1378
	.word	-60
	.word	4
	.word	_Label_1379
	.word	-64
	.word	4
	.word	_Label_1380
	.word	-68
	.word	4
	.word	0
_Label_1364:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1365:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1363\0"
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
	.ascii	"_temp_1356\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1348\0"
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
_Label_3830:
	push	r0
	sub	r1,1,r1
	bne	_Label_3830
	mov	2724,r13		! source line 2724
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1381 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1381  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
!   _temp_1382 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1382) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1384) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1383 = *_temp_1384  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1382 = _temp_1383  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   _temp_1385 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1385) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1387 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1386 = *_temp_1387  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1385 = _temp_1386  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   _temp_1388 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1388) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1390 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1389 = *_temp_1390  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1388 = _temp_1389  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2731,r13		! source line 2731
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
	.word	_Label_1391
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1392
	.word	8
	.word	4
	.word	_Label_1393
	.word	12
	.word	4
	.word	_Label_1394
	.word	-16
	.word	4
	.word	_Label_1395
	.word	-9
	.word	1
	.word	_Label_1396
	.word	-20
	.word	4
	.word	_Label_1397
	.word	-24
	.word	4
	.word	_Label_1398
	.word	-10
	.word	1
	.word	_Label_1399
	.word	-28
	.word	4
	.word	_Label_1400
	.word	-32
	.word	4
	.word	_Label_1401
	.word	-11
	.word	1
	.word	_Label_1402
	.word	-36
	.word	4
	.word	_Label_1403
	.word	-12
	.word	1
	.word	_Label_1404
	.word	-40
	.word	4
	.word	_Label_1405
	.word	-44
	.word	4
	.word	0
_Label_1391:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1392:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1393:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1395:
	.byte	'C'
	.ascii	"_temp_1389\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1398:
	.byte	'C'
	.ascii	"_temp_1386\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1401:
	.byte	'C'
	.ascii	"_temp_1383\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1403:
	.byte	'C'
	.ascii	"_temp_1381\0"
	.align
_Label_1404:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1405:
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
_Label_3831:
	push	r0
	sub	r1,1,r1
	bne	_Label_3831
	mov	2734,r13		! source line 2734
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1407 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1406 = *_temp_1407  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1406  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2735,r13		! source line 2735
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2736,r13		! source line 2736
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2736,r13		! source line 2736
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
	.word	_Label_1408
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1409
	.word	8
	.word	4
	.word	_Label_1410
	.word	-12
	.word	4
	.word	_Label_1411
	.word	-16
	.word	4
	.word	0
_Label_1408:
	.ascii	"printFCB\0"
	.align
_Label_1409:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1406\0"
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
_Label_3832:
	push	r0
	sub	r1,1,r1
	bne	_Label_3832
	mov	2739,r13		! source line 2739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1412 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1412  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2740,r13		! source line 2740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1413 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2741,r13		! source line 2741
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1414 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2742,r13		! source line 2742
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2743,r13		! source line 2743
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
	mov	2743,r13		! source line 2743
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
	.word	_Label_1415
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1416
	.word	8
	.word	4
	.word	_Label_1417
	.word	-12
	.word	4
	.word	_Label_1418
	.word	-16
	.word	4
	.word	_Label_1419
	.word	-20
	.word	4
	.word	0
_Label_1415:
	.ascii	"printOpen\0"
	.align
_Label_1416:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1420
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1420:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1421
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1421:
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
_Label_3833:
	push	r0
	sub	r1,1,r1
	bne	_Label_3833
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1423		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1423
!	jmp	_Label_1422
_Label_1422:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1424 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1424  sizeInBytes=4
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
_Label_1423:
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
	.word	_Label_1426
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1427
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1428
	.word	12
	.word	4
	.word	_Label_1429
	.word	-12
	.word	4
	.word	_Label_1430
	.word	-16
	.word	4
	.word	0
_Label_1426:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1427:
	.ascii	"Pself\0"
	.align
_Label_1428:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1424\0"
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
_Label_3834:
	push	r0
	sub	r1,1,r1
	bne	_Label_3834
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
!   if count != 2147483647 then goto _Label_1432		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1432
!	jmp	_Label_1431
_Label_1431:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1433 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1433  sizeInBytes=4
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
_Label_1432:
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
!   if count > 0 then goto _Label_1435		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1435
!	jmp	_Label_1434
_Label_1434:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_1436 = &waitingThreads
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
!   _temp_1437 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1437 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_1438 = &_P_Kernel_readyList
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
_Label_1435:
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
	.word	_Label_1439
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1441
	.word	-12
	.word	4
	.word	_Label_1442
	.word	-16
	.word	4
	.word	_Label_1443
	.word	-20
	.word	4
	.word	_Label_1444
	.word	-24
	.word	4
	.word	_Label_1445
	.word	-28
	.word	4
	.word	_Label_1446
	.word	-32
	.word	4
	.word	0
_Label_1439:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1440:
	.ascii	"Pself\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1445:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1446:
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
_Label_3835:
	push	r0
	sub	r1,1,r1
	bne	_Label_3835
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
!   if count != -2147483648 then goto _Label_1448		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1448
!	jmp	_Label_1447
_Label_1447:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1449 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1449  sizeInBytes=4
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
_Label_1448:
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
!   if count >= 0 then goto _Label_1451		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1451
!	jmp	_Label_1450
_Label_1450:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_1452 = &waitingThreads
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
_Label_1451:
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
	.word	_Label_1453
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1454
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1455
	.word	-12
	.word	4
	.word	_Label_1456
	.word	-16
	.word	4
	.word	_Label_1457
	.word	-20
	.word	4
	.word	0
_Label_1453:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1454:
	.ascii	"Pself\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1457:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1458
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1458:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1459
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1459:
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
_Label_3836:
	push	r0
	sub	r1,1,r1
	bne	_Label_3836
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
	.word	_Label_1461
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	-12
	.word	4
	.word	0
_Label_1461:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1460\0"
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
_Label_3837:
	push	r0
	sub	r1,1,r1
	bne	_Label_3837
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1465		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1465
!	jmp	_Label_1464
_Label_1464:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1466 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1466  sizeInBytes=4
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
_Label_1465:
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
!   if heldBy == 0 then goto _Label_1470		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1470
!   _temp_1469 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1471
_Label_1470:
!   _temp_1469 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1471:
!   if _temp_1469 then goto _Label_1468 else goto _Label_1467
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1467
	jmp	_Label_1468
_Label_1467:
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
	jmp	_Label_1472
_Label_1468:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_1473 = &waitingThreads
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
_Label_1472:
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
	.word	_Label_1474
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1476
	.word	-16
	.word	4
	.word	_Label_1477
	.word	-9
	.word	1
	.word	_Label_1478
	.word	-20
	.word	4
	.word	_Label_1479
	.word	-24
	.word	4
	.word	0
_Label_1474:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1477:
	.byte	'C'
	.ascii	"_temp_1469\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1479:
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
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1481		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1481
!	jmp	_Label_1480
_Label_1480:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1482 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
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
_Label_1481:
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
!   _temp_1483 = &waitingThreads
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
!   if t == 0 then goto _Label_1485		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1485
!	jmp	_Label_1484
_Label_1484:
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
!   _temp_1486 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1486 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_1487 = &_P_Kernel_readyList
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
	jmp	_Label_1488
_Label_1485:
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
_Label_1488:
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
	.word	_Label_1489
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1491
	.word	-12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	_Label_1494
	.word	-24
	.word	4
	.word	_Label_1495
	.word	-28
	.word	4
	.word	_Label_1496
	.word	-32
	.word	4
	.word	0
_Label_1489:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1490:
	.ascii	"Pself\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1495:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1496:
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
_Label_3839:
	push	r0
	sub	r1,1,r1
	bne	_Label_3839
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1499		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1499
!	jmp	_Label_1498
_Label_1498:
!   _temp_1497 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1500
_Label_1499:
!   _temp_1497 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1500:
!   ReturnResult: _temp_1497  (sizeInBytes=1)
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
	.word	_Label_1501
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	-9
	.word	1
	.word	0
_Label_1501:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'C'
	.ascii	"_temp_1497\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1504
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1504:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1505
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1505:
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
_Label_3840:
	push	r0
	sub	r1,1,r1
	bne	_Label_3840
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
	.word	_Label_1507
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1509
	.word	-12
	.word	4
	.word	0
_Label_1507:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1508:
	.ascii	"Pself\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1506\0"
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
_Label_3841:
	push	r0
	sub	r1,1,r1
	bne	_Label_3841
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
!   Retrieve Result: targetName=_temp_1512  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1512 then goto _Label_1511 else goto _Label_1510
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1510
	jmp	_Label_1511
_Label_1510:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1513 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
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
_Label_1511:
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
!   _temp_1514 = &waitingThreads
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
	.word	_Label_1515
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1517
	.word	12
	.word	4
	.word	_Label_1518
	.word	-16
	.word	4
	.word	_Label_1519
	.word	-20
	.word	4
	.word	_Label_1520
	.word	-9
	.word	1
	.word	_Label_1521
	.word	-24
	.word	4
	.word	0
_Label_1515:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1516:
	.ascii	"Pself\0"
	.align
_Label_1517:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1520:
	.byte	'C'
	.ascii	"_temp_1512\0"
	.align
_Label_1521:
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
_Label_3842:
	push	r0
	sub	r1,1,r1
	bne	_Label_3842
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
!   Retrieve Result: targetName=_temp_1524  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1524 then goto _Label_1523 else goto _Label_1522
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1522
	jmp	_Label_1523
_Label_1522:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1525 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1525  sizeInBytes=4
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
_Label_1523:
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
!   _temp_1526 = &waitingThreads
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
!   if t == 0 then goto _Label_1528		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1528
!	jmp	_Label_1527
_Label_1527:
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
!   _temp_1529 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1529 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_1530 = &_P_Kernel_readyList
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
_Label_1528:
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
	.word	_Label_1531
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1533
	.word	12
	.word	4
	.word	_Label_1534
	.word	-16
	.word	4
	.word	_Label_1535
	.word	-20
	.word	4
	.word	_Label_1536
	.word	-24
	.word	4
	.word	_Label_1537
	.word	-28
	.word	4
	.word	_Label_1538
	.word	-9
	.word	1
	.word	_Label_1539
	.word	-32
	.word	4
	.word	_Label_1540
	.word	-36
	.word	4
	.word	0
_Label_1531:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1532:
	.ascii	"Pself\0"
	.align
_Label_1533:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1538:
	.byte	'C'
	.ascii	"_temp_1524\0"
	.align
_Label_1539:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1540:
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
_Label_3843:
	push	r0
	sub	r1,1,r1
	bne	_Label_3843
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
!   Retrieve Result: targetName=_temp_1543  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1543 then goto _Label_1542 else goto _Label_1541
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1541
	jmp	_Label_1542
_Label_1541:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1544 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1544  sizeInBytes=4
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
_Label_1542:
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
_Label_1545:
!	jmp	_Label_1546
_Label_1546:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_1548 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1549
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1549
	jmp	_Label_1550
_Label_1549:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_1547
! END IF...
_Label_1550:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1551 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1551 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_1552 = &_P_Kernel_readyList
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
	jmp	_Label_1545
_Label_1547:
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
	.word	_Label_1553
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	12
	.word	4
	.word	_Label_1556
	.word	-16
	.word	4
	.word	_Label_1557
	.word	-20
	.word	4
	.word	_Label_1558
	.word	-24
	.word	4
	.word	_Label_1559
	.word	-28
	.word	4
	.word	_Label_1560
	.word	-9
	.word	1
	.word	_Label_1561
	.word	-32
	.word	4
	.word	_Label_1562
	.word	-36
	.word	4
	.word	0
_Label_1553:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1560:
	.byte	'C'
	.ascii	"_temp_1543\0"
	.align
_Label_1561:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1562:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1563
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
_Label_1563:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1564
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1564:
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
_Label_3844:
	push	r0
	sub	r1,1,r1
	bne	_Label_3844
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
!   _temp_1565 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1565) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1565 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_1566 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1566 [0 ] into _temp_1567
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
!   Data Move: *_temp_1567 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_1568 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1568 [999 ] into _temp_1569
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
!   Data Move: *_temp_1569 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_1570 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1570 [999 ] into _temp_1571
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
!   stackTop = _temp_1571		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_1572 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1574 = &_temp_1573
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1574 = _temp_1574 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1576:
!   Data Move: *_temp_1574 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1574 = _temp_1574 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1575 = _temp_1575 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1575) then goto _Label_1576
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1576
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1577 = &_temp_1573
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3845
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3845:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1572 = *_temp_1577  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3846
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
!   _temp_1578 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1580 = &_temp_1579
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1580 = _temp_1580 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1582:
!   Data Move: *_temp_1580 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1580 = _temp_1580 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1581 = _temp_1581 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1581) then goto _Label_1582
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1582
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1583 = &_temp_1579
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3847
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3847:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1578 = *_temp_1583  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3848:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3848
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
	.word	_Label_1584
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1586
	.word	12
	.word	4
	.word	_Label_1587
	.word	-12
	.word	4
	.word	_Label_1588
	.word	-16
	.word	4
	.word	_Label_1589
	.word	-20
	.word	4
	.word	_Label_1590
	.word	-84
	.word	64
	.word	_Label_1591
	.word	-88
	.word	4
	.word	_Label_1592
	.word	-92
	.word	4
	.word	_Label_1593
	.word	-96
	.word	4
	.word	_Label_1594
	.word	-100
	.word	4
	.word	_Label_1595
	.word	-156
	.word	56
	.word	_Label_1596
	.word	-160
	.word	4
	.word	_Label_1597
	.word	-164
	.word	4
	.word	_Label_1598
	.word	-168
	.word	4
	.word	_Label_1599
	.word	-172
	.word	4
	.word	_Label_1600
	.word	-176
	.word	4
	.word	_Label_1601
	.word	-180
	.word	4
	.word	_Label_1602
	.word	-184
	.word	4
	.word	_Label_1603
	.word	-188
	.word	4
	.word	0
_Label_1584:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1585:
	.ascii	"Pself\0"
	.align
_Label_1586:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1565\0"
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
_Label_3849:
	push	r0
	sub	r1,1,r1
	bne	_Label_3849
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
!   _temp_1604 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1604  (sizeInBytes=4)
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
!   _temp_1606 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1605  sizeInBytes=4
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
	.word	_Label_1607
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1609
	.word	12
	.word	4
	.word	_Label_1610
	.word	16
	.word	4
	.word	_Label_1611
	.word	-12
	.word	4
	.word	_Label_1612
	.word	-16
	.word	4
	.word	_Label_1613
	.word	-20
	.word	4
	.word	_Label_1614
	.word	-24
	.word	4
	.word	_Label_1615
	.word	-28
	.word	4
	.word	0
_Label_1607:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1608:
	.ascii	"Pself\0"
	.align
_Label_1609:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1610:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1615:
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
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1618 == _P_Kernel_currentThread then goto _Label_1617		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1617
!	jmp	_Label_1616
_Label_1616:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1619 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1619  sizeInBytes=4
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
_Label_1617:
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
!   _temp_1620 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1622		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1622
!	jmp	_Label_1621
_Label_1621:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1624		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1624
!	jmp	_Label_1623
_Label_1623:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1625 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
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
_Label_1624:
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
!   _temp_1627 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1626  sizeInBytes=4
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
_Label_1622:
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
	.word	_Label_1628
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1630
	.word	-12
	.word	4
	.word	_Label_1631
	.word	-16
	.word	4
	.word	_Label_1632
	.word	-20
	.word	4
	.word	_Label_1633
	.word	-24
	.word	4
	.word	_Label_1634
	.word	-28
	.word	4
	.word	_Label_1635
	.word	-32
	.word	4
	.word	_Label_1636
	.word	-36
	.word	4
	.word	_Label_1637
	.word	-40
	.word	4
	.word	_Label_1638
	.word	-44
	.word	4
	.word	0
_Label_1628:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1629:
	.ascii	"Pself\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1636:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1638:
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
_Label_3851:
	push	r0
	sub	r1,1,r1
	bne	_Label_3851
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1640		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1640
!	jmp	_Label_1639
_Label_1639:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1641 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
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
_Label_1640:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1644 == _P_Kernel_currentThread then goto _Label_1643		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1643
!	jmp	_Label_1642
_Label_1642:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1645 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
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
_Label_1643:
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
!   _temp_1646 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1647
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1647
	jmp	_Label_1648
_Label_1647:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1649 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1649  sizeInBytes=4
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
_Label_1648:
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
	.word	_Label_1650
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1651
	.word	4		! size of self
	.word	8		! offset of self
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
_Label_1650:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1651:
	.ascii	"Pself\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1657:
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
_Label_3852:
	push	r0
	sub	r1,1,r1
	bne	_Label_3852
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_1661 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1661 [0 ] into _temp_1662
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
!   Data Move: _temp_1660 = *_temp_1662  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1660 == 606348324 then goto _Label_1659		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1659
!	jmp	_Label_1658
_Label_1658:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1663 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
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
	jmp	_Label_1664
_Label_1659:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_1668 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1668 [999 ] into _temp_1669
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
!   Data Move: _temp_1667 = *_temp_1669  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1667 == 606348324 then goto _Label_1666		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1666
!	jmp	_Label_1665
_Label_1665:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1670 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
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
_Label_1666:
! END IF...
_Label_1664:
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
	.word	_Label_1671
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1673
	.word	-12
	.word	4
	.word	_Label_1674
	.word	-16
	.word	4
	.word	_Label_1675
	.word	-20
	.word	4
	.word	_Label_1676
	.word	-24
	.word	4
	.word	_Label_1677
	.word	-28
	.word	4
	.word	_Label_1678
	.word	-32
	.word	4
	.word	_Label_1679
	.word	-36
	.word	4
	.word	_Label_1680
	.word	-40
	.word	4
	.word	0
_Label_1671:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1672:
	.ascii	"Pself\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1660\0"
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
_Label_3853:
	push	r0
	sub	r1,1,r1
	bne	_Label_3853
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
!   _temp_1681 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1681  sizeInBytes=4
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
!   _temp_1682 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1684 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1685 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1685  sizeInBytes=4
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
!   _temp_1690 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1691 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1690  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1686:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1691 then goto _Label_1689		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1689
_Label_1687:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1692 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1693 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1694 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1696 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1696 [i ] into _temp_1697
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
!   Data Move: _temp_1695 = *_temp_1697  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1698 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1700 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1700 [i ] into _temp_1701
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
!   Data Move: _temp_1699 = *_temp_1701  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1702 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1688:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1686
! END FOR
_Label_1689:
! CALL STATEMENT...
!   _temp_1703 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-116]
!   _temp_1704 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1704  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1705 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-108]
!   _temp_1707 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1707 [0 ] into _temp_1708
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
!   _temp_1706 = _temp_1708		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1706  sizeInBytes=4
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
	be	_Label_1711
	cmp	r1,2
	be	_Label_1712
	cmp	r1,3
	be	_Label_1713
	cmp	r1,4
	be	_Label_1714
	cmp	r1,5
	be	_Label_1715
	jmp	_Label_1709
! CASE 1...
_Label_1711:
! CALL STATEMENT...
!   _temp_1716 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_1710
! CASE 2...
_Label_1712:
! CALL STATEMENT...
!   _temp_1717 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_1710
! CASE 3...
_Label_1713:
! CALL STATEMENT...
!   _temp_1718 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_1710
! CASE 4...
_Label_1714:
! CALL STATEMENT...
!   _temp_1719 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1719  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_1710
! CASE 5...
_Label_1715:
! CALL STATEMENT...
!   _temp_1720 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1720  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1710
! DEFAULT CASE...
_Label_1709:
! CALL STATEMENT...
!   _temp_1721 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1721  sizeInBytes=4
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
_Label_1710:
! CALL STATEMENT...
!   _temp_1722 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
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
!   _temp_1723 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
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
!   _temp_1728 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1729 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1728  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1724:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1729 then goto _Label_1727		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1727
_Label_1725:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1730 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1731 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1732 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1734 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1734 [i ] into _temp_1735
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
!   Data Move: _temp_1733 = *_temp_1735  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1736 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1738 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1738 [i ] into _temp_1739
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
!   Data Move: _temp_1737 = *_temp_1739  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1740 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1726:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1724
! END FOR
_Label_1727:
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
	.word	_Label_1741
	.word	4		! total size of parameters
	.word	196		! frame size = 196
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
	.word	_Label_1752
	.word	-48
	.word	4
	.word	_Label_1753
	.word	-52
	.word	4
	.word	_Label_1754
	.word	-56
	.word	4
	.word	_Label_1755
	.word	-60
	.word	4
	.word	_Label_1756
	.word	-64
	.word	4
	.word	_Label_1757
	.word	-68
	.word	4
	.word	_Label_1758
	.word	-72
	.word	4
	.word	_Label_1759
	.word	-76
	.word	4
	.word	_Label_1760
	.word	-80
	.word	4
	.word	_Label_1761
	.word	-84
	.word	4
	.word	_Label_1762
	.word	-88
	.word	4
	.word	_Label_1763
	.word	-92
	.word	4
	.word	_Label_1764
	.word	-96
	.word	4
	.word	_Label_1765
	.word	-100
	.word	4
	.word	_Label_1766
	.word	-104
	.word	4
	.word	_Label_1767
	.word	-108
	.word	4
	.word	_Label_1768
	.word	-112
	.word	4
	.word	_Label_1769
	.word	-116
	.word	4
	.word	_Label_1770
	.word	-120
	.word	4
	.word	_Label_1771
	.word	-124
	.word	4
	.word	_Label_1772
	.word	-128
	.word	4
	.word	_Label_1773
	.word	-132
	.word	4
	.word	_Label_1774
	.word	-136
	.word	4
	.word	_Label_1775
	.word	-140
	.word	4
	.word	_Label_1776
	.word	-144
	.word	4
	.word	_Label_1777
	.word	-148
	.word	4
	.word	_Label_1778
	.word	-152
	.word	4
	.word	_Label_1779
	.word	-156
	.word	4
	.word	_Label_1780
	.word	-160
	.word	4
	.word	_Label_1781
	.word	-164
	.word	4
	.word	_Label_1782
	.word	-168
	.word	4
	.word	_Label_1783
	.word	-172
	.word	4
	.word	_Label_1784
	.word	-176
	.word	4
	.word	_Label_1785
	.word	-180
	.word	4
	.word	_Label_1786
	.word	-184
	.word	4
	.word	_Label_1787
	.word	-188
	.word	4
	.word	_Label_1788
	.word	-192
	.word	4
	.word	_Label_1789
	.word	-196
	.word	4
	.word	0
_Label_1741:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_1737\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1730\0"
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
	.ascii	"_temp_1723\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1788:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1789:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1790
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1790:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1791
	.word	_sourceFileName
	.word	191		! line number
	.word	45860		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1791:
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
_Label_3854:
	push	r0
	sub	r1,1,r1
	bne	_Label_3854
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1792 = _StringConst_79
	set	_StringConst_79,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
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
!   _temp_1793 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50068,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1795 = &_temp_1794
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1795 = _temp_1795 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1797 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3855:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3855
!   _temp_1797 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	11,r1
	store	r1,[r14+-4252]
_Label_1799:
!   Data Move: *_temp_1795 = _temp_1797  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3856:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3856
!   _temp_1795 = _temp_1795 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1796 = _temp_1796 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1796) then goto _Label_1799
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1799
!   Initialize the array size...
	mov	11,r1
	set	-50064,r2
	store	r1,[r14+r2]
!   _temp_1800 = &_temp_1794
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 11
	set	-50068,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3857
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3857:
!   make sure array has size 11
	load	[r14+-80],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1793 = *_temp_1800  (sizeInBytes=45808)
	load	[r14+-80],r5
	set	-50068,r4
	load	[r14+r4],r4
	mov	11452,r3
_Label_3858:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3858
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
!   _temp_1803 = &tmLock
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
!   _temp_1805 = &threadFreed
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
!   _temp_1810 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1811 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1810  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-50076,r2
	store	r1,[r14+r2]
_Label_1806:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1811 then goto _Label_1809		
	set	-50076,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1809
_Label_1807:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_1812 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   _temp_1813 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1813 [i ] into _temp_1814
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
!   Prepare Argument: offset=12  value=_temp_1812  sizeInBytes=4
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
!   _temp_1815 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1815 [i ] into _temp_1816
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
!   _temp_1817 = _temp_1816 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1817 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_1819 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1819 [i ] into _temp_1820
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
!   _temp_1818 = _temp_1820		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1821 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1818  sizeInBytes=4
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
_Label_1808:
!   i = i + 1
	set	-50076,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
	jmp	_Label_1806
! END FOR
_Label_1809:
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
	.word	_Label_1822
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_1823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1824
	.word	-12
	.word	4
	.word	_Label_1825
	.word	-16
	.word	4
	.word	_Label_1826
	.word	-20
	.word	4
	.word	_Label_1827
	.word	-24
	.word	4
	.word	_Label_1828
	.word	-28
	.word	4
	.word	_Label_1829
	.word	-32
	.word	4
	.word	_Label_1830
	.word	-36
	.word	4
	.word	_Label_1831
	.word	-40
	.word	4
	.word	_Label_1832
	.word	-44
	.word	4
	.word	_Label_1833
	.word	-48
	.word	4
	.word	_Label_1834
	.word	-52
	.word	4
	.word	_Label_1835
	.word	-56
	.word	4
	.word	_Label_1836
	.word	-60
	.word	4
	.word	_Label_1837
	.word	-64
	.word	4
	.word	_Label_1838
	.word	-68
	.word	4
	.word	_Label_1839
	.word	-72
	.word	4
	.word	_Label_1840
	.word	-76
	.word	4
	.word	_Label_1841
	.word	-80
	.word	4
	.word	_Label_1842
	.word	-84
	.word	4
	.word	_Label_1843
	.word	-4248
	.word	4164
	.word	_Label_1844
	.word	-4252
	.word	4
	.word	_Label_1845
	.word	-4256
	.word	4
	.word	_Label_1846
	.word	-50064
	.word	45808
	.word	_Label_1847
	.word	-50068
	.word	4
	.word	_Label_1848
	.word	-50072
	.word	4
	.word	_Label_1849
	.word	-50076
	.word	4
	.word	0
_Label_1822:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1823:
	.ascii	"Pself\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1849:
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
_Label_3859:
	push	r0
	sub	r1,1,r1
	bne	_Label_3859
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
!   _temp_1850 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1850  sizeInBytes=4
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
!   _temp_1855 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1856 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1855  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1851:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1856 then goto _Label_1854		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1854
_Label_1852:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1857 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1857  sizeInBytes=4
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
!   _temp_1858 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1860 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1860 [i ] into _temp_1861
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
!   _temp_1859 = _temp_1861		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1859  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1853:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1851
! END FOR
_Label_1854:
! CALL STATEMENT...
!   _temp_1862 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1862  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1863 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1864 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1863  sizeInBytes=4
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
	.word	_Label_1865
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1867
	.word	-12
	.word	4
	.word	_Label_1868
	.word	-16
	.word	4
	.word	_Label_1869
	.word	-20
	.word	4
	.word	_Label_1870
	.word	-24
	.word	4
	.word	_Label_1871
	.word	-28
	.word	4
	.word	_Label_1872
	.word	-32
	.word	4
	.word	_Label_1873
	.word	-36
	.word	4
	.word	_Label_1874
	.word	-40
	.word	4
	.word	_Label_1875
	.word	-44
	.word	4
	.word	_Label_1876
	.word	-48
	.word	4
	.word	_Label_1877
	.word	-52
	.word	4
	.word	_Label_1878
	.word	-56
	.word	4
	.word	_Label_1879
	.word	-60
	.word	4
	.word	0
_Label_1865:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1866:
	.ascii	"Pself\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1878:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1879:
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
_Label_3860:
	push	r0
	sub	r1,1,r1
	bne	_Label_3860
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1880 = &tmLock
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
_Label_1881:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1884 = &freeList
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
!   if result==true then goto _Label_1882 else goto _Label_1883
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1883
	jmp	_Label_1882
_Label_1882:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_1885 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1886 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1885  sizeInBytes=4
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
	jmp	_Label_1881
_Label_1883:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1887 = &freeList
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
!   _temp_1888 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1888 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1889 = &tmLock
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
	.word	_Label_1890
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1891
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1898
	.word	-36
	.word	4
	.word	_Label_1899
	.word	-40
	.word	4
	.word	0
_Label_1890:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1891:
	.ascii	"Pself\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1899:
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
_Label_3861:
	push	r0
	sub	r1,1,r1
	bne	_Label_3861
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1900 = &tmLock
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
!   _temp_1901 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1901 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1902 = &freeList
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
!   _temp_1903 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1904 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1903  sizeInBytes=4
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
!   _temp_1905 = &tmLock
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
	.word	_Label_1906
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1908
	.word	12
	.word	4
	.word	_Label_1909
	.word	-12
	.word	4
	.word	_Label_1910
	.word	-16
	.word	4
	.word	_Label_1911
	.word	-20
	.word	4
	.word	_Label_1912
	.word	-24
	.word	4
	.word	_Label_1913
	.word	-28
	.word	4
	.word	_Label_1914
	.word	-32
	.word	4
	.word	0
_Label_1906:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1907:
	.ascii	"Pself\0"
	.align
_Label_1908:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1915
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1915:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1916
	.word	_sourceFileName
	.word	212		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1916:
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
_Label_3862:
	push	r0
	sub	r1,1,r1
	bne	_Label_3862
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
_Label_3863:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3863
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1918 = &addrSpace
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
!   _temp_1919 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1921 = &_temp_1920
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1921 = _temp_1921 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1923:
!   Data Move: *_temp_1921 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1921 = _temp_1921 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1922 = _temp_1922 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1922) then goto _Label_1923
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1923
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1924 = &_temp_1920
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3864
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3864:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1919 = *_temp_1924  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3865:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3865
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
	.word	_Label_1925
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1927
	.word	-12
	.word	4
	.word	_Label_1928
	.word	-16
	.word	4
	.word	_Label_1929
	.word	-20
	.word	4
	.word	_Label_1930
	.word	-64
	.word	44
	.word	_Label_1931
	.word	-68
	.word	4
	.word	_Label_1932
	.word	-72
	.word	4
	.word	_Label_1933
	.word	-76
	.word	4
	.word	0
_Label_1925:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1926:
	.ascii	"Pself\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1917\0"
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
_Label_3866:
	push	r0
	sub	r1,1,r1
	bne	_Label_3866
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1934) then goto _runtimeErrorNullPointer
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
!   _temp_1935 = &addrSpace
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
!   _temp_1936 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1936  sizeInBytes=4
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
	.word	_Label_1937
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1939
	.word	-12
	.word	4
	.word	_Label_1940
	.word	-16
	.word	4
	.word	_Label_1941
	.word	-20
	.word	4
	.word	0
_Label_1937:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1938:
	.ascii	"Pself\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1934\0"
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
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1942 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1942  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1944 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1944  sizeInBytes=4
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
!   _temp_1945 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1945  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1947		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1947
!	jmp	_Label_1946
_Label_1946:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1948 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1948  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1949
_Label_1947:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1951		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1951
!	jmp	_Label_1950
_Label_1950:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1952 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1952  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1953
_Label_1951:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1955		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1955
!	jmp	_Label_1954
_Label_1954:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1956 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1957
_Label_1955:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1958 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
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
_Label_1957:
! END IF...
_Label_1953:
! END IF...
_Label_1949:
! CALL STATEMENT...
!   _temp_1959 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1959  sizeInBytes=4
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
!   _temp_1960 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1960  sizeInBytes=4
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
	.word	_Label_1961
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1963
	.word	-12
	.word	4
	.word	_Label_1964
	.word	-16
	.word	4
	.word	_Label_1965
	.word	-20
	.word	4
	.word	_Label_1966
	.word	-24
	.word	4
	.word	_Label_1967
	.word	-28
	.word	4
	.word	_Label_1968
	.word	-32
	.word	4
	.word	_Label_1969
	.word	-36
	.word	4
	.word	_Label_1970
	.word	-40
	.word	4
	.word	_Label_1971
	.word	-44
	.word	4
	.word	_Label_1972
	.word	-48
	.word	4
	.word	0
_Label_1961:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1962:
	.ascii	"Pself\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1973
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
_Label_1973:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1974
	.word	_sourceFileName
	.word	232		! line number
	.word	1924		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1974:
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
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_1975 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-2120]
!   NEW ARRAY Constructor...
!   _temp_1977 = &_temp_1976
	add	r14,-2116,r1
	store	r1,[r14+-264]
!   _temp_1977 = _temp_1977 + 4
	load	[r14+-264],r1
	add	r1,4,r1
	store	r1,[r14+-264]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1979 = zeros  (sizeInBytes=168)
	add	r14,-256,r4
	mov	42,r3
_Label_3869:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3869
!   _temp_1979 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-256]
	mov	11,r1
	store	r1,[r14+-260]
_Label_1981:
!   Data Move: *_temp_1977 = _temp_1979  (sizeInBytes=168)
	add	r14,-256,r5
	load	[r14+-264],r4
	mov	42,r3
_Label_3870:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3870
!   _temp_1977 = _temp_1977 + 168
	load	[r14+-264],r1
	add	r1,168,r1
	store	r1,[r14+-264]
!   _temp_1978 = _temp_1978 + -1
	load	[r14+-260],r1
	add	r1,-1,r1
	store	r1,[r14+-260]
!   if intNotZero (_temp_1978) then goto _Label_1981
	load	[r14+-260],r1
	cmp	r1,r0
	bne	_Label_1981
!   Initialize the array size...
	mov	11,r1
	store	r1,[r14+-2116]
!   _temp_1982 = &_temp_1976
	add	r14,-2116,r1
	store	r1,[r14+-84]
!   make sure array has size 11
	load	[r14+-2120],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3871
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3871:
!   make sure array has size 11
	load	[r14+-84],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1975 = *_temp_1982  (sizeInBytes=1852)
	load	[r14+-84],r5
	load	[r14+-2120],r4
	mov	463,r3
_Label_3872:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3872
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
!   _temp_1984 = &processManagerLock
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
!   _temp_1986 = &aProcessBecameFree
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
!   _temp_1989 = &aProcessDied
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
!   _temp_1994 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1995 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1994  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-2124]
_Label_1990:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1995 then goto _Label_1993		
	load	[r14+-2124],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1993
_Label_1991:
	mov	894,r13		! source line 894
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_1996 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1996 [i ] into _temp_1997
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
!   _temp_1999 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1999 [i ] into _temp_2000
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
!   _temp_1998 = _temp_2000		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2001 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1998  sizeInBytes=4
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
!   _temp_2002 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2002 [i ] into _temp_2003
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
!   _temp_2004 = _temp_2003 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2004 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_1992:
!   i = i + 1
	load	[r14+-2124],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2124]
	jmp	_Label_1990
! END FOR
_Label_1993:
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
	.word	_Label_2005
	.word	4		! total size of parameters
	.word	2124		! frame size = 2124
	.word	_Label_2006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2007
	.word	-12
	.word	4
	.word	_Label_2008
	.word	-16
	.word	4
	.word	_Label_2009
	.word	-20
	.word	4
	.word	_Label_2010
	.word	-24
	.word	4
	.word	_Label_2011
	.word	-28
	.word	4
	.word	_Label_2012
	.word	-32
	.word	4
	.word	_Label_2013
	.word	-36
	.word	4
	.word	_Label_2014
	.word	-40
	.word	4
	.word	_Label_2015
	.word	-44
	.word	4
	.word	_Label_2016
	.word	-48
	.word	4
	.word	_Label_2017
	.word	-52
	.word	4
	.word	_Label_2018
	.word	-56
	.word	4
	.word	_Label_2019
	.word	-60
	.word	4
	.word	_Label_2020
	.word	-64
	.word	4
	.word	_Label_2021
	.word	-68
	.word	4
	.word	_Label_2022
	.word	-72
	.word	4
	.word	_Label_2023
	.word	-76
	.word	4
	.word	_Label_2024
	.word	-80
	.word	4
	.word	_Label_2025
	.word	-84
	.word	4
	.word	_Label_2026
	.word	-88
	.word	4
	.word	_Label_2027
	.word	-256
	.word	168
	.word	_Label_2028
	.word	-260
	.word	4
	.word	_Label_2029
	.word	-264
	.word	4
	.word	_Label_2030
	.word	-2116
	.word	1852
	.word	_Label_2031
	.word	-2120
	.word	4
	.word	_Label_2032
	.word	-2124
	.word	4
	.word	0
_Label_2005:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2006:
	.ascii	"Pself\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2032:
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
_Label_3873:
	push	r0
	sub	r1,1,r1
	bne	_Label_3873
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
!   _temp_2033 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2033  sizeInBytes=4
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
!   _temp_2038 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2039 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2038  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2034:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2039 then goto _Label_2037		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2037
_Label_2035:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2040 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2040  sizeInBytes=4
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
!   _temp_2041 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2041  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_2042 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2042 [i ] into _temp_2043
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
_Label_2036:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2034
! END FOR
_Label_2037:
! CALL STATEMENT...
!   _temp_2044 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2045 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2046 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2045  sizeInBytes=4
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
	.word	_Label_2047
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2049
	.word	-12
	.word	4
	.word	_Label_2050
	.word	-16
	.word	4
	.word	_Label_2051
	.word	-20
	.word	4
	.word	_Label_2052
	.word	-24
	.word	4
	.word	_Label_2053
	.word	-28
	.word	4
	.word	_Label_2054
	.word	-32
	.word	4
	.word	_Label_2055
	.word	-36
	.word	4
	.word	_Label_2056
	.word	-40
	.word	4
	.word	_Label_2057
	.word	-44
	.word	4
	.word	_Label_2058
	.word	-48
	.word	4
	.word	_Label_2059
	.word	-52
	.word	4
	.word	_Label_2060
	.word	-56
	.word	4
	.word	0
_Label_2047:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2048:
	.ascii	"Pself\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2059:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2060:
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
_Label_3874:
	push	r0
	sub	r1,1,r1
	bne	_Label_3874
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
!   _temp_2061 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2061  sizeInBytes=4
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
!   _temp_2066 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2067 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2066  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2062:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2067 then goto _Label_2065		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2065
_Label_2063:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2068 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2068  sizeInBytes=4
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
!   _temp_2069 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2069 [i ] into _temp_2070
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
_Label_2064:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2062
! END FOR
_Label_2065:
! CALL STATEMENT...
!   _temp_2071 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_2072 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2073 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2072  sizeInBytes=4
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
	.word	_Label_2074
	.word	4		! total size of parameters
	.word	52		! frame size = 52
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
	.word	_Label_2086
	.word	-52
	.word	4
	.word	0
_Label_2074:
	.ascii	"ProcessManager"
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
	.ascii	"_temp_2070\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2085:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2086:
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
_Label_3875:
	push	r0
	sub	r1,1,r1
	bne	_Label_3875
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2087 = &processManagerLock
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
_Label_2088:
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2091 = &freeList
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
!   if result==true then goto _Label_2089 else goto _Label_2090
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2090
	jmp	_Label_2089
_Label_2089:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_2092 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-32]
!   _temp_2093 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2092  sizeInBytes=4
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
	jmp	_Label_2088
_Label_2090:
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_2094 = &freeList
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
!   _temp_2095 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2095 = 1  (sizeInBytes=4)
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
!   _temp_2096 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2096 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1920],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2097 = &processManagerLock
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
	.word	_Label_2098
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2099
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2098:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2099:
	.ascii	"Pself\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2108:
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
_Label_3876:
	push	r0
	sub	r1,1,r1
	bne	_Label_3876
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_2109 = &processManagerLock
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
!   _temp_2110 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2110 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2111 = &freeList
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
!   _temp_2112 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-20]
!   _temp_2113 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2112  sizeInBytes=4
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
!   _temp_2114 = &processManagerLock
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
	.word	_Label_2115
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2117
	.word	12
	.word	4
	.word	_Label_2118
	.word	-12
	.word	4
	.word	_Label_2119
	.word	-16
	.word	4
	.word	_Label_2120
	.word	-20
	.word	4
	.word	_Label_2121
	.word	-24
	.word	4
	.word	_Label_2122
	.word	-28
	.word	4
	.word	_Label_2123
	.word	-32
	.word	4
	.word	0
_Label_2115:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2116:
	.ascii	"Pself\0"
	.align
_Label_2117:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2109\0"
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
_Label_3877:
	push	r0
	sub	r1,1,r1
	bne	_Label_3877
	mov	986,r13		! source line 986
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_2124 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2125 = _temp_2124 + 1856
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
!   _temp_2130 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2131 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2130  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2126:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2131 then goto _Label_2129		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2129
_Label_2127:
	mov	992,r13		! source line 992
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0IF",r10
!   _temp_2135 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2136 = _temp_2135 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2136 [i ] into _temp_2137
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
!   _temp_2138 = _temp_2137 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2134 = *_temp_2138  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2140 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2139 = *_temp_2140  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2134 != _temp_2139 then goto _Label_2133		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2133
!	jmp	_Label_2132
_Label_2132:
! THEN...
	mov	995,r13		! source line 995
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   _temp_2141 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2142 = _temp_2141 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2142 [i ] into _temp_2143
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
!   parent = _temp_2143		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2133:
! IF STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0IF",r10
!   _temp_2148 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2149 = _temp_2148 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2149 [i ] into _temp_2150
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
!   _temp_2151 = _temp_2150 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2147 = *_temp_2151  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2147 != 2 then goto _Label_2145		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2145
!	jmp	_Label_2146
_Label_2146:
!   _temp_2153 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2154 = _temp_2153 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2154 [i ] into _temp_2155
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
!   _temp_2156 = _temp_2155 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2152 = *_temp_2156  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2158 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2157 = *_temp_2158  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2152 != _temp_2157 then goto _Label_2145		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2145
!	jmp	_Label_2144
_Label_2144:
! THEN...
	mov	999,r13		! source line 999
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   _temp_2159 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2160 = _temp_2159 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2160 [i ] into _temp_2161
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
!   _temp_2162 = _temp_2161 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2162 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_2164 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2165 = _temp_2164 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2165 [i ] into _temp_2166
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
!   _temp_2163 = _temp_2166		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2167 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2168 = _temp_2167 + 1892
	load	[r14+-108],r1
	add	r1,1892,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2163  sizeInBytes=4
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
!   _temp_2170 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2171 = _temp_2170 + 1856
	load	[r14+-96],r1
	add	r1,1856,r1
	store	r1,[r14+-92]
!   _temp_2169 = _temp_2171		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2172 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2173 = _temp_2172 + 1876
	load	[r14+-88],r1
	add	r1,1876,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2169  sizeInBytes=4
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
_Label_2145:
!   Increment the FOR-LOOP index variable and jump back
_Label_2128:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2126
! END FOR
_Label_2129:
! IF STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0IF",r10
!   if intIsZero (parent) then goto _Label_2175
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2175
!	jmp	_Label_2176
_Label_2176:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2178 = parent + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2177 = *_temp_2178  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2177 != 1 then goto _Label_2175		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2175
!	jmp	_Label_2174
_Label_2174:
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
!   _temp_2179 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2179 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2181 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2182 = _temp_2181 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2180 = _temp_2182		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2183 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2184 = _temp_2183 + 1904
	load	[r14+-56],r1
	add	r1,1904,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2180  sizeInBytes=4
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
	jmp	_Label_2185
_Label_2175:
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
!   _temp_2186 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2186 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_2187 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2188 = _temp_2187 + 1892
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
!   _temp_2190 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2191 = _temp_2190 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2189 = _temp_2191		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2192 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2193 = _temp_2192 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2189  sizeInBytes=4
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
_Label_2185:
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2194 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2195 = _temp_2194 + 1856
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
	.word	_Label_2196
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2198
	.word	12
	.word	4
	.word	_Label_2199
	.word	-12
	.word	4
	.word	_Label_2200
	.word	-16
	.word	4
	.word	_Label_2201
	.word	-20
	.word	4
	.word	_Label_2202
	.word	-24
	.word	4
	.word	_Label_2203
	.word	-28
	.word	4
	.word	_Label_2204
	.word	-32
	.word	4
	.word	_Label_2205
	.word	-36
	.word	4
	.word	_Label_2206
	.word	-40
	.word	4
	.word	_Label_2207
	.word	-44
	.word	4
	.word	_Label_2208
	.word	-48
	.word	4
	.word	_Label_2209
	.word	-52
	.word	4
	.word	_Label_2210
	.word	-56
	.word	4
	.word	_Label_2211
	.word	-60
	.word	4
	.word	_Label_2212
	.word	-64
	.word	4
	.word	_Label_2213
	.word	-68
	.word	4
	.word	_Label_2214
	.word	-72
	.word	4
	.word	_Label_2215
	.word	-76
	.word	4
	.word	_Label_2216
	.word	-80
	.word	4
	.word	_Label_2217
	.word	-84
	.word	4
	.word	_Label_2218
	.word	-88
	.word	4
	.word	_Label_2219
	.word	-92
	.word	4
	.word	_Label_2220
	.word	-96
	.word	4
	.word	_Label_2221
	.word	-100
	.word	4
	.word	_Label_2222
	.word	-104
	.word	4
	.word	_Label_2223
	.word	-108
	.word	4
	.word	_Label_2224
	.word	-112
	.word	4
	.word	_Label_2225
	.word	-116
	.word	4
	.word	_Label_2226
	.word	-120
	.word	4
	.word	_Label_2227
	.word	-124
	.word	4
	.word	_Label_2228
	.word	-128
	.word	4
	.word	_Label_2229
	.word	-132
	.word	4
	.word	_Label_2230
	.word	-136
	.word	4
	.word	_Label_2231
	.word	-140
	.word	4
	.word	_Label_2232
	.word	-144
	.word	4
	.word	_Label_2233
	.word	-148
	.word	4
	.word	_Label_2234
	.word	-152
	.word	4
	.word	_Label_2235
	.word	-156
	.word	4
	.word	_Label_2236
	.word	-160
	.word	4
	.word	_Label_2237
	.word	-164
	.word	4
	.word	_Label_2238
	.word	-168
	.word	4
	.word	_Label_2239
	.word	-172
	.word	4
	.word	_Label_2240
	.word	-176
	.word	4
	.word	_Label_2241
	.word	-180
	.word	4
	.word	_Label_2242
	.word	-184
	.word	4
	.word	_Label_2243
	.word	-188
	.word	4
	.word	_Label_2244
	.word	-192
	.word	4
	.word	_Label_2245
	.word	-196
	.word	4
	.word	_Label_2246
	.word	-200
	.word	4
	.word	_Label_2247
	.word	-204
	.word	4
	.word	_Label_2248
	.word	-208
	.word	4
	.word	_Label_2249
	.word	-212
	.word	4
	.word	_Label_2250
	.word	-216
	.word	4
	.word	_Label_2251
	.word	-220
	.word	4
	.word	_Label_2252
	.word	-224
	.word	4
	.word	_Label_2253
	.word	-228
	.word	4
	.word	_Label_2254
	.word	-232
	.word	4
	.word	_Label_2255
	.word	-236
	.word	4
	.word	_Label_2256
	.word	-240
	.word	4
	.word	_Label_2257
	.word	-244
	.word	4
	.word	_Label_2258
	.word	-248
	.word	4
	.word	_Label_2259
	.word	-252
	.word	4
	.word	0
_Label_2196:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2197:
	.ascii	"Pself\0"
	.align
_Label_2198:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2258:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2259:
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
_Label_3878:
	push	r0
	sub	r1,1,r1
	bne	_Label_3878
	mov	1019,r13		! source line 1019
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_2260 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_2261 = _temp_2260 + 1856
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
_Label_2262:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2266 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2265 = *_temp_2266  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_2265 == 2 then goto _Label_2264		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2264
!	jmp	_Label_2263
_Label_2263:
	mov	1023,r13		! source line 1023
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2268 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2269 = _temp_2268 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2267 = _temp_2269		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2270 = &aProcessDied
	load	[r14+8],r1
	add	r1,1904,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2267  sizeInBytes=4
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
	jmp	_Label_2262
_Label_2264:
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2271 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_2271  (sizeInBytes=4)
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
!   _temp_2272 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2272 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_2273 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2274 = _temp_2273 + 1892
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
!   _temp_2276 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2277 = _temp_2276 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2275 = _temp_2277		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2278 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2279 = _temp_2278 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2275  sizeInBytes=4
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
!   _temp_2280 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2281 = _temp_2280 + 1856
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
	.word	_Label_2282
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_2283
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2284
	.word	12
	.word	4
	.word	_Label_2285
	.word	-12
	.word	4
	.word	_Label_2286
	.word	-16
	.word	4
	.word	_Label_2287
	.word	-20
	.word	4
	.word	_Label_2288
	.word	-24
	.word	4
	.word	_Label_2289
	.word	-28
	.word	4
	.word	_Label_2290
	.word	-32
	.word	4
	.word	_Label_2291
	.word	-36
	.word	4
	.word	_Label_2292
	.word	-40
	.word	4
	.word	_Label_2293
	.word	-44
	.word	4
	.word	_Label_2294
	.word	-48
	.word	4
	.word	_Label_2295
	.word	-52
	.word	4
	.word	_Label_2296
	.word	-56
	.word	4
	.word	_Label_2297
	.word	-60
	.word	4
	.word	_Label_2298
	.word	-64
	.word	4
	.word	_Label_2299
	.word	-68
	.word	4
	.word	_Label_2300
	.word	-72
	.word	4
	.word	_Label_2301
	.word	-76
	.word	4
	.word	_Label_2302
	.word	-80
	.word	4
	.word	_Label_2303
	.word	-84
	.word	4
	.word	_Label_2304
	.word	-88
	.word	4
	.word	0
_Label_2282:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2283:
	.ascii	"Pself\0"
	.align
_Label_2284:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2305
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2305:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2306
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2306:
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
_Label_3879:
	push	r0
	sub	r1,1,r1
	bne	_Label_3879
	mov	1075,r13		! source line 1075
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2307 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2307  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1082,r13		! source line 1082
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
	mov	1083,r13		! source line 1083
	mov	"\0\0SE",r10
!   _temp_2309 = &framesInUse
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
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
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
	mov	1086,r13		! source line 1086
	mov	"\0\0SE",r10
!   _temp_2311 = &frameManagerLock
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
	mov	1087,r13		! source line 1087
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
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_2313 = &newFramesAvailable
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
	mov	1094,r13		! source line 1094
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2318 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2319 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2318  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2314:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2319 then goto _Label_2317		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2317
_Label_2315:
	mov	1094,r13		! source line 1094
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2322 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2322) then goto _Label_2321
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2321
!	jmp	_Label_2320
_Label_2320:
! THEN...
	mov	1098,r13		! source line 1098
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2323 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1098,r13		! source line 1098
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2321:
!   Increment the FOR-LOOP index variable and jump back
_Label_2316:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2314
! END FOR
_Label_2317:
! RETURN STATEMENT...
	mov	1094,r13		! source line 1094
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
	.word	_Label_2324
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2325
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2326
	.word	-12
	.word	4
	.word	_Label_2327
	.word	-16
	.word	4
	.word	_Label_2328
	.word	-20
	.word	4
	.word	_Label_2329
	.word	-24
	.word	4
	.word	_Label_2330
	.word	-28
	.word	4
	.word	_Label_2331
	.word	-32
	.word	4
	.word	_Label_2332
	.word	-36
	.word	4
	.word	_Label_2333
	.word	-40
	.word	4
	.word	_Label_2334
	.word	-44
	.word	4
	.word	_Label_2335
	.word	-48
	.word	4
	.word	_Label_2336
	.word	-52
	.word	4
	.word	_Label_2337
	.word	-56
	.word	4
	.word	0
_Label_2324:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2325:
	.ascii	"Pself\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2337:
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
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
	mov	1105,r13		! source line 1105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_2338 = &frameManagerLock
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
!   _temp_2339 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2340 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1111,r13		! source line 1111
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2341 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_2342 = &framesInUse
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
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_2343 = &frameManagerLock
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
	mov	1114,r13		! source line 1114
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
	.word	_Label_2344
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2346
	.word	-12
	.word	4
	.word	_Label_2347
	.word	-16
	.word	4
	.word	_Label_2348
	.word	-20
	.word	4
	.word	_Label_2349
	.word	-24
	.word	4
	.word	_Label_2350
	.word	-28
	.word	4
	.word	_Label_2351
	.word	-32
	.word	4
	.word	0
_Label_2344:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2345:
	.ascii	"Pself\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2338\0"
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
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
	mov	1119,r13		! source line 1119
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_2352 = &frameManagerLock
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
	mov	1130,r13		! source line 1130
	mov	"\0\0WH",r10
_Label_2353:
!   if numberFreeFrames >= 1 then goto _Label_2355		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2355
!	jmp	_Label_2354
_Label_2354:
	mov	1130,r13		! source line 1130
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_2356 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2357 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2356  sizeInBytes=4
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
	jmp	_Label_2353
_Label_2355:
! ASSIGNMENT STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_2358 = &framesInUse
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
	mov	1136,r13		! source line 1136
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
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_2359 = &frameManagerLock
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
	mov	1142,r13		! source line 1142
	mov	"\0\0AS",r10
!   _temp_2360 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2360		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1144,r13		! source line 1144
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
	.word	_Label_2361
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2363
	.word	-12
	.word	4
	.word	_Label_2364
	.word	-16
	.word	4
	.word	_Label_2365
	.word	-20
	.word	4
	.word	_Label_2366
	.word	-24
	.word	4
	.word	_Label_2367
	.word	-28
	.word	4
	.word	_Label_2368
	.word	-32
	.word	4
	.word	_Label_2369
	.word	-36
	.word	4
	.word	_Label_2370
	.word	-40
	.word	4
	.word	0
_Label_2361:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2362:
	.ascii	"Pself\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2369:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2370:
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
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_2371 = &frameManagerLock
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
	mov	1153,r13		! source line 1153
	mov	"\0\0WH",r10
_Label_2372:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2374		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2374
!	jmp	_Label_2373
_Label_2373:
	mov	1153,r13		! source line 1153
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_2375 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2376 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2375  sizeInBytes=4
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
	jmp	_Label_2372
_Label_2374:
! FOR STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2381 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2382 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2381  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2377:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2382 then goto _Label_2380		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2380
_Label_2378:
	mov	1156,r13		! source line 1156
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   _temp_2383 = &framesInUse
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
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
!   _temp_2384 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2384		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1159,r13		! source line 1159
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
_Label_2379:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2377
! END FOR
_Label_2380:
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
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
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2385 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2385 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_2386 = &frameManagerLock
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
	mov	1163,r13		! source line 1163
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
	.word	_Label_2387
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2389
	.word	12
	.word	4
	.word	_Label_2390
	.word	16
	.word	4
	.word	_Label_2391
	.word	-12
	.word	4
	.word	_Label_2392
	.word	-16
	.word	4
	.word	_Label_2393
	.word	-20
	.word	4
	.word	_Label_2394
	.word	-24
	.word	4
	.word	_Label_2395
	.word	-28
	.word	4
	.word	_Label_2396
	.word	-32
	.word	4
	.word	_Label_2397
	.word	-36
	.word	4
	.word	_Label_2398
	.word	-40
	.word	4
	.word	_Label_2399
	.word	-44
	.word	4
	.word	_Label_2400
	.word	-48
	.word	4
	.word	_Label_2401
	.word	-52
	.word	4
	.word	_Label_2402
	.word	-56
	.word	4
	.word	0
_Label_2387:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2388:
	.ascii	"Pself\0"
	.align
_Label_2389:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2390:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2400:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2401:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2402:
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
_Label_3883:
	push	r0
	sub	r1,1,r1
	bne	_Label_3883
	mov	1168,r13		! source line 1168
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
!   _temp_2403 = &frameManagerLock
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
	mov	1172,r13		! source line 1172
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2408 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2411 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2410 = *_temp_2411  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2409 = _temp_2410 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2408  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2404:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2409 then goto _Label_2407		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2407
_Label_2405:
	mov	1172,r13		! source line 1172
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0AS",r10
	mov	1173,r13		! source line 1173
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
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   _temp_2412 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2412 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_2413 = &framesInUse
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
_Label_2406:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2404
! END FOR
_Label_2407:
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2415 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2414 = *_temp_2415  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2414		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   _temp_2416 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2417 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2416  sizeInBytes=4
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
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_2418 = &frameManagerLock
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
	mov	1179,r13		! source line 1179
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
	.word	_Label_2419
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2420
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2421
	.word	12
	.word	4
	.word	_Label_2422
	.word	-12
	.word	4
	.word	_Label_2423
	.word	-16
	.word	4
	.word	_Label_2424
	.word	-20
	.word	4
	.word	_Label_2425
	.word	-24
	.word	4
	.word	_Label_2426
	.word	-28
	.word	4
	.word	_Label_2427
	.word	-32
	.word	4
	.word	_Label_2428
	.word	-36
	.word	4
	.word	_Label_2429
	.word	-40
	.word	4
	.word	_Label_2430
	.word	-44
	.word	4
	.word	_Label_2431
	.word	-48
	.word	4
	.word	_Label_2432
	.word	-52
	.word	4
	.word	_Label_2433
	.word	-56
	.word	4
	.word	_Label_2434
	.word	-60
	.word	4
	.word	_Label_2435
	.word	-64
	.word	4
	.word	_Label_2436
	.word	-68
	.word	4
	.word	0
_Label_2419:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2420:
	.ascii	"Pself\0"
	.align
_Label_2421:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2412\0"
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
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2434:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2435:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2436:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2437
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
_Label_2437:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2438
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2438:
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
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
	mov	1190,r13		! source line 1190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   _temp_2439 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2441 = &_temp_2440
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2441 = _temp_2441 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2443:
!   Data Move: *_temp_2441 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2441 = _temp_2441 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2442 = _temp_2442 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2442) then goto _Label_2443
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2443
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2444 = &_temp_2440
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3885
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3885:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2439 = *_temp_2444  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3886:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3886
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
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
	.word	_Label_2445
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2447
	.word	-12
	.word	4
	.word	_Label_2448
	.word	-16
	.word	4
	.word	_Label_2449
	.word	-20
	.word	4
	.word	_Label_2450
	.word	-104
	.word	84
	.word	_Label_2451
	.word	-108
	.word	4
	.word	0
_Label_2445:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2446:
	.ascii	"Pself\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2439\0"
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
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2452 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2452  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2453 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1206,r13		! source line 1206
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2458 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2459 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2458  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2454:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2459 then goto _Label_2457		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2457
_Label_2455:
	mov	1207,r13		! source line 1207
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2460 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2460  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2462 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2462 [i ] into _temp_2463
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
!   _temp_2461 = _temp_2463		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2461  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2464 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2464  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2466 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2466 [i ] into _temp_2467
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
!   Data Move: _temp_2465 = *_temp_2467  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2468 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2469 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2469  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2470 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2470  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2472) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2471  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2471  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2473 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2473  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0IF",r10
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2477) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2476  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2476) then goto _Label_2475
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2475
!	jmp	_Label_2474
_Label_2474:
! THEN...
	mov	1218,r13		! source line 1218
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2479) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2478  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2480
_Label_2475:
! ELSE...
	mov	1220,r13		! source line 1220
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2481 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2480:
! CALL STATEMENT...
!   _temp_2482 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2482  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0IF",r10
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2485) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2483 else goto _Label_2484
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2484
	jmp	_Label_2483
_Label_2483:
! THEN...
	mov	1224,r13		! source line 1224
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2486 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2486  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2487
_Label_2484:
! ELSE...
	mov	1226,r13		! source line 1226
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2488 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2487:
! CALL STATEMENT...
!   _temp_2489 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2489  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0IF",r10
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2492) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2490 else goto _Label_2491
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2491
	jmp	_Label_2490
_Label_2490:
! THEN...
	mov	1230,r13		! source line 1230
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2493 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2493  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2494
_Label_2491:
! ELSE...
	mov	1232,r13		! source line 1232
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2495 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2495  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2494:
! CALL STATEMENT...
!   _temp_2496 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2496  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0IF",r10
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2499) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2497 else goto _Label_2498
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2498
	jmp	_Label_2497
_Label_2497:
! THEN...
	mov	1236,r13		! source line 1236
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2500 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2501
_Label_2498:
! ELSE...
	mov	1238,r13		! source line 1238
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2502 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2502  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2501:
! CALL STATEMENT...
!   _temp_2503 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0IF",r10
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2506) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2504 else goto _Label_2505
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2505
	jmp	_Label_2504
_Label_2504:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2507 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2508
_Label_2505:
! ELSE...
	mov	1244,r13		! source line 1244
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2509 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2508:
! CALL STATEMENT...
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2456:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2454
! END FOR
_Label_2457:
! RETURN STATEMENT...
	mov	1207,r13		! source line 1207
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
	.word	_Label_2510
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2511
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2512
	.word	-12
	.word	4
	.word	_Label_2513
	.word	-16
	.word	4
	.word	_Label_2514
	.word	-20
	.word	4
	.word	_Label_2515
	.word	-24
	.word	4
	.word	_Label_2516
	.word	-28
	.word	4
	.word	_Label_2517
	.word	-32
	.word	4
	.word	_Label_2518
	.word	-36
	.word	4
	.word	_Label_2519
	.word	-40
	.word	4
	.word	_Label_2520
	.word	-44
	.word	4
	.word	_Label_2521
	.word	-48
	.word	4
	.word	_Label_2522
	.word	-52
	.word	4
	.word	_Label_2523
	.word	-56
	.word	4
	.word	_Label_2524
	.word	-60
	.word	4
	.word	_Label_2525
	.word	-64
	.word	4
	.word	_Label_2526
	.word	-68
	.word	4
	.word	_Label_2527
	.word	-72
	.word	4
	.word	_Label_2528
	.word	-76
	.word	4
	.word	_Label_2529
	.word	-80
	.word	4
	.word	_Label_2530
	.word	-84
	.word	4
	.word	_Label_2531
	.word	-88
	.word	4
	.word	_Label_2532
	.word	-92
	.word	4
	.word	_Label_2533
	.word	-96
	.word	4
	.word	_Label_2534
	.word	-100
	.word	4
	.word	_Label_2535
	.word	-104
	.word	4
	.word	_Label_2536
	.word	-108
	.word	4
	.word	_Label_2537
	.word	-112
	.word	4
	.word	_Label_2538
	.word	-116
	.word	4
	.word	_Label_2539
	.word	-120
	.word	4
	.word	_Label_2540
	.word	-124
	.word	4
	.word	_Label_2541
	.word	-128
	.word	4
	.word	_Label_2542
	.word	-132
	.word	4
	.word	_Label_2543
	.word	-136
	.word	4
	.word	_Label_2544
	.word	-140
	.word	4
	.word	_Label_2545
	.word	-144
	.word	4
	.word	_Label_2546
	.word	-148
	.word	4
	.word	_Label_2547
	.word	-152
	.word	4
	.word	_Label_2548
	.word	-156
	.word	4
	.word	_Label_2549
	.word	-160
	.word	4
	.word	_Label_2550
	.word	-164
	.word	4
	.word	_Label_2551
	.word	-168
	.word	4
	.word	0
_Label_2510:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2511:
	.ascii	"Pself\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2551:
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
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	1252,r13		! source line 1252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0RE",r10
!   _temp_2554 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2554 [entry ] into _temp_2555
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
!   Data Move: _temp_2553 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2552 = _temp_2553 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2552  (sizeInBytes=4)
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
	.word	_Label_2556
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2558
	.word	12
	.word	4
	.word	_Label_2559
	.word	-12
	.word	4
	.word	_Label_2560
	.word	-16
	.word	4
	.word	_Label_2561
	.word	-20
	.word	4
	.word	_Label_2562
	.word	-24
	.word	4
	.word	0
_Label_2556:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2557:
	.ascii	"Pself\0"
	.align
_Label_2558:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2552\0"
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
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	1262,r13		! source line 1262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_2565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2565 [entry ] into _temp_2566
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
!   Data Move: _temp_2564 = *_temp_2566  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2563 = _temp_2564 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2563  (sizeInBytes=4)
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
	.word	_Label_2567
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2569
	.word	12
	.word	4
	.word	_Label_2570
	.word	-12
	.word	4
	.word	_Label_2571
	.word	-16
	.word	4
	.word	_Label_2572
	.word	-20
	.word	4
	.word	_Label_2573
	.word	-24
	.word	4
	.word	0
_Label_2567:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2568:
	.ascii	"Pself\0"
	.align
_Label_2569:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2563\0"
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
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_2574 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2574 [entry ] into _temp_2575
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
!   _temp_2579 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2579 [entry ] into _temp_2580
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
!   Data Move: _temp_2578 = *_temp_2580  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2577 = _temp_2578 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2576 = _temp_2577 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2575 = _temp_2576  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
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
	.word	_Label_2581
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2583
	.word	12
	.word	4
	.word	_Label_2584
	.word	16
	.word	4
	.word	_Label_2585
	.word	-12
	.word	4
	.word	_Label_2586
	.word	-16
	.word	4
	.word	_Label_2587
	.word	-20
	.word	4
	.word	_Label_2588
	.word	-24
	.word	4
	.word	_Label_2589
	.word	-28
	.word	4
	.word	_Label_2590
	.word	-32
	.word	4
	.word	_Label_2591
	.word	-36
	.word	4
	.word	0
_Label_2581:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2582:
	.ascii	"Pself\0"
	.align
_Label_2583:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2584:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2574\0"
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
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
!   _temp_2595 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2595 [entry ] into _temp_2596
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
!   Data Move: _temp_2594 = *_temp_2596  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2593 = _temp_2594 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2593) then goto _Label_2597
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2597
!   _temp_2592 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2598
_Label_2597:
!   _temp_2592 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2598:
!   ReturnResult: _temp_2592  (sizeInBytes=1)
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
	.word	_Label_2599
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2601
	.word	12
	.word	4
	.word	_Label_2602
	.word	-16
	.word	4
	.word	_Label_2603
	.word	-20
	.word	4
	.word	_Label_2604
	.word	-24
	.word	4
	.word	_Label_2605
	.word	-28
	.word	4
	.word	_Label_2606
	.word	-9
	.word	1
	.word	0
_Label_2599:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2600:
	.ascii	"Pself\0"
	.align
_Label_2601:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2606:
	.byte	'C'
	.ascii	"_temp_2592\0"
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
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_2610 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2610 [entry ] into _temp_2611
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
!   Data Move: _temp_2609 = *_temp_2611  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2608 = _temp_2609 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2608) then goto _Label_2612
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2612
!   _temp_2607 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2613
_Label_2612:
!   _temp_2607 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2613:
!   ReturnResult: _temp_2607  (sizeInBytes=1)
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
	.word	_Label_2614
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2615
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2616
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2614:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2615:
	.ascii	"Pself\0"
	.align
_Label_2616:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2621:
	.byte	'C'
	.ascii	"_temp_2607\0"
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
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_2625 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2625 [entry ] into _temp_2626
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
!   Data Move: _temp_2624 = *_temp_2626  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2623 = _temp_2624 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2623) then goto _Label_2627
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2627
!   _temp_2622 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2628
_Label_2627:
!   _temp_2622 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2628:
!   ReturnResult: _temp_2622  (sizeInBytes=1)
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
	.word	_Label_2629
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2631
	.word	12
	.word	4
	.word	_Label_2632
	.word	-16
	.word	4
	.word	_Label_2633
	.word	-20
	.word	4
	.word	_Label_2634
	.word	-24
	.word	4
	.word	_Label_2635
	.word	-28
	.word	4
	.word	_Label_2636
	.word	-9
	.word	1
	.word	0
_Label_2629:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2630:
	.ascii	"Pself\0"
	.align
_Label_2631:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2636:
	.byte	'C'
	.ascii	"_temp_2622\0"
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
_Label_3894:
	push	r0
	sub	r1,1,r1
	bne	_Label_3894
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_2640 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2640 [entry ] into _temp_2641
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
!   Data Move: _temp_2639 = *_temp_2641  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2638 = _temp_2639 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2638) then goto _Label_2642
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2642
!   _temp_2637 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2643
_Label_2642:
!   _temp_2637 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2643:
!   ReturnResult: _temp_2637  (sizeInBytes=1)
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
	.word	_Label_2644
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2645
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2646
	.word	12
	.word	4
	.word	_Label_2647
	.word	-16
	.word	4
	.word	_Label_2648
	.word	-20
	.word	4
	.word	_Label_2649
	.word	-24
	.word	4
	.word	_Label_2650
	.word	-28
	.word	4
	.word	_Label_2651
	.word	-9
	.word	1
	.word	0
_Label_2644:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2645:
	.ascii	"Pself\0"
	.align
_Label_2646:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2651:
	.byte	'C'
	.ascii	"_temp_2637\0"
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
_Label_3895:
	push	r0
	sub	r1,1,r1
	bne	_Label_3895
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0AS",r10
!   _temp_2652 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2652 [entry ] into _temp_2653
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
!   _temp_2656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2656 [entry ] into _temp_2657
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
!   Data Move: _temp_2655 = *_temp_2657  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2654 = _temp_2655 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2653 = _temp_2654  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1321,r13		! source line 1321
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
	.word	_Label_2658
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2660
	.word	12
	.word	4
	.word	_Label_2661
	.word	-12
	.word	4
	.word	_Label_2662
	.word	-16
	.word	4
	.word	_Label_2663
	.word	-20
	.word	4
	.word	_Label_2664
	.word	-24
	.word	4
	.word	_Label_2665
	.word	-28
	.word	4
	.word	_Label_2666
	.word	-32
	.word	4
	.word	0
_Label_2658:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2659:
	.ascii	"Pself\0"
	.align
_Label_2660:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2652\0"
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
_Label_3896:
	push	r0
	sub	r1,1,r1
	bne	_Label_3896
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_2667 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2667 [entry ] into _temp_2668
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
!   _temp_2671 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2671 [entry ] into _temp_2672
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
!   Data Move: _temp_2670 = *_temp_2672  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2669 = _temp_2670 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2668 = _temp_2669  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1330,r13		! source line 1330
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
	.word	_Label_2673
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2674
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2675
	.word	12
	.word	4
	.word	_Label_2676
	.word	-12
	.word	4
	.word	_Label_2677
	.word	-16
	.word	4
	.word	_Label_2678
	.word	-20
	.word	4
	.word	_Label_2679
	.word	-24
	.word	4
	.word	_Label_2680
	.word	-28
	.word	4
	.word	_Label_2681
	.word	-32
	.word	4
	.word	0
_Label_2673:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2674:
	.ascii	"Pself\0"
	.align
_Label_2675:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2667\0"
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
_Label_3897:
	push	r0
	sub	r1,1,r1
	bne	_Label_3897
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_2682 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2682 [entry ] into _temp_2683
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
!   _temp_2686 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2686 [entry ] into _temp_2687
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
!   Data Move: _temp_2685 = *_temp_2687  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2684 = _temp_2685 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2683 = _temp_2684  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1339,r13		! source line 1339
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
	.word	_Label_2688
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2689
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2690
	.word	12
	.word	4
	.word	_Label_2691
	.word	-12
	.word	4
	.word	_Label_2692
	.word	-16
	.word	4
	.word	_Label_2693
	.word	-20
	.word	4
	.word	_Label_2694
	.word	-24
	.word	4
	.word	_Label_2695
	.word	-28
	.word	4
	.word	_Label_2696
	.word	-32
	.word	4
	.word	0
_Label_2688:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2689:
	.ascii	"Pself\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2682\0"
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
_Label_3898:
	push	r0
	sub	r1,1,r1
	bne	_Label_3898
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_2697 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2697 [entry ] into _temp_2698
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
!   _temp_2701 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2701 [entry ] into _temp_2702
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
!   Data Move: _temp_2700 = *_temp_2702  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2699 = _temp_2700 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2698 = _temp_2699  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1348,r13		! source line 1348
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
	.word	_Label_2703
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2704
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2705
	.word	12
	.word	4
	.word	_Label_2706
	.word	-12
	.word	4
	.word	_Label_2707
	.word	-16
	.word	4
	.word	_Label_2708
	.word	-20
	.word	4
	.word	_Label_2709
	.word	-24
	.word	4
	.word	_Label_2710
	.word	-28
	.word	4
	.word	_Label_2711
	.word	-32
	.word	4
	.word	0
_Label_2703:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2704:
	.ascii	"Pself\0"
	.align
_Label_2705:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2697\0"
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
_Label_3899:
	push	r0
	sub	r1,1,r1
	bne	_Label_3899
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_2712 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2712 [entry ] into _temp_2713
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
!   _temp_2716 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2716 [entry ] into _temp_2717
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
!   Data Move: _temp_2715 = *_temp_2717  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2714 = _temp_2715 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2713 = _temp_2714  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1357,r13		! source line 1357
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
	.word	_Label_2718
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2720
	.word	12
	.word	4
	.word	_Label_2721
	.word	-12
	.word	4
	.word	_Label_2722
	.word	-16
	.word	4
	.word	_Label_2723
	.word	-20
	.word	4
	.word	_Label_2724
	.word	-24
	.word	4
	.word	_Label_2725
	.word	-28
	.word	4
	.word	_Label_2726
	.word	-32
	.word	4
	.word	0
_Label_2718:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2719:
	.ascii	"Pself\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2712\0"
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
_Label_3900:
	push	r0
	sub	r1,1,r1
	bne	_Label_3900
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_2727 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2727 [entry ] into _temp_2728
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
!   _temp_2731 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2731 [entry ] into _temp_2732
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
!   Data Move: _temp_2730 = *_temp_2732  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2729 = _temp_2730 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2728 = _temp_2729  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1366,r13		! source line 1366
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
	.word	_Label_2733
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2734
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2735
	.word	12
	.word	4
	.word	_Label_2736
	.word	-12
	.word	4
	.word	_Label_2737
	.word	-16
	.word	4
	.word	_Label_2738
	.word	-20
	.word	4
	.word	_Label_2739
	.word	-24
	.word	4
	.word	_Label_2740
	.word	-28
	.word	4
	.word	_Label_2741
	.word	-32
	.word	4
	.word	0
_Label_2733:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2734:
	.ascii	"Pself\0"
	.align
_Label_2735:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2727\0"
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
_Label_3901:
	push	r0
	sub	r1,1,r1
	bne	_Label_3901
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_2742 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2742 [entry ] into _temp_2743
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
!   _temp_2746 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2746 [entry ] into _temp_2747
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
!   Data Move: _temp_2745 = *_temp_2747  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2744 = _temp_2745 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2743 = _temp_2744  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1375,r13		! source line 1375
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
	.word	_Label_2748
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2750
	.word	12
	.word	4
	.word	_Label_2751
	.word	-12
	.word	4
	.word	_Label_2752
	.word	-16
	.word	4
	.word	_Label_2753
	.word	-20
	.word	4
	.word	_Label_2754
	.word	-24
	.word	4
	.word	_Label_2755
	.word	-28
	.word	4
	.word	_Label_2756
	.word	-32
	.word	4
	.word	0
_Label_2748:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2749:
	.ascii	"Pself\0"
	.align
_Label_2750:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2742\0"
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
_Label_3902:
	push	r0
	sub	r1,1,r1
	bne	_Label_3902
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_2757 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2757 [entry ] into _temp_2758
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
!   _temp_2761 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2761 [entry ] into _temp_2762
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
!   Data Move: _temp_2760 = *_temp_2762  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2759 = _temp_2760 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2758 = _temp_2759  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1384,r13		! source line 1384
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
	.word	_Label_2763
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2765
	.word	12
	.word	4
	.word	_Label_2766
	.word	-12
	.word	4
	.word	_Label_2767
	.word	-16
	.word	4
	.word	_Label_2768
	.word	-20
	.word	4
	.word	_Label_2769
	.word	-24
	.word	4
	.word	_Label_2770
	.word	-28
	.word	4
	.word	_Label_2771
	.word	-32
	.word	4
	.word	0
_Label_2763:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2764:
	.ascii	"Pself\0"
	.align
_Label_2765:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2757\0"
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
_Label_3903:
	push	r0
	sub	r1,1,r1
	bne	_Label_3903
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2773 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2773 [0 ] into _temp_2774
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
!   _temp_2772 = _temp_2774		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2775 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2772  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2775  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1395,r13		! source line 1395
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
	.word	_Label_2776
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2778
	.word	-12
	.word	4
	.word	_Label_2779
	.word	-16
	.word	4
	.word	_Label_2780
	.word	-20
	.word	4
	.word	_Label_2781
	.word	-24
	.word	4
	.word	0
_Label_2776:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2777:
	.ascii	"Pself\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2775\0"
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
	.byte	'?'
	.ascii	"_temp_2772\0"
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
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2782
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2782
	jmp	_Label_2783
_Label_2782:
! THEN...
	mov	1416,r13		! source line 1416
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2784
_Label_2783:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2786		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2786
!	jmp	_Label_2785
_Label_2785:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2786:
! END IF...
_Label_2784:
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
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
	mov	1421,r13		! source line 1421
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
	mov	1424,r13		! source line 1424
	mov	"\0\0WH",r10
_Label_2787:
!	jmp	_Label_2788
_Label_2788:
	mov	1424,r13		! source line 1424
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2791		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2791
!	jmp	_Label_2790
_Label_2790:
! THEN...
	mov	1426,r13		! source line 1426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2792 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2792  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2791:
! IF STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0IF",r10
	mov	1429,r13		! source line 1429
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2796) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2795  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2795 then goto _Label_2794 else goto _Label_2793
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2793
	jmp	_Label_2794
_Label_2793:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2797 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2797  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
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
_Label_2794:
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
	mov	1433,r13		! source line 1433
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2799) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2798  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2798 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0WH",r10
_Label_2800:
!   if offset >= 8192 then goto _Label_2802		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2802
!	jmp	_Label_2801
_Label_2801:
	mov	1435,r13		! source line 1435
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2803 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2803  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2805		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	1444,r13		! source line 1444
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2805:
! END WHILE...
	jmp	_Label_2800
_Label_2802:
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2787
_Label_2789:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2806
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2807
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2808
	.word	12
	.word	4
	.word	_Label_2809
	.word	16
	.word	4
	.word	_Label_2810
	.word	20
	.word	4
	.word	_Label_2811
	.word	-9
	.word	1
	.word	_Label_2812
	.word	-16
	.word	4
	.word	_Label_2813
	.word	-20
	.word	4
	.word	_Label_2814
	.word	-24
	.word	4
	.word	_Label_2815
	.word	-28
	.word	4
	.word	_Label_2816
	.word	-10
	.word	1
	.word	_Label_2817
	.word	-32
	.word	4
	.word	_Label_2818
	.word	-36
	.word	4
	.word	_Label_2819
	.word	-40
	.word	4
	.word	_Label_2820
	.word	-44
	.word	4
	.word	_Label_2821
	.word	-48
	.word	4
	.word	0
_Label_2806:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2807:
	.ascii	"Pself\0"
	.align
_Label_2808:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2809:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2810:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2811:
	.byte	'C'
	.ascii	"_temp_2803\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2816:
	.byte	'C'
	.ascii	"_temp_2795\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2819:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2820:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2821:
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
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2822
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2822
	jmp	_Label_2823
_Label_2822:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2824
_Label_2823:
! ELSE...
	mov	1467,r13		! source line 1467
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2826		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2826
!	jmp	_Label_2825
_Label_2825:
! THEN...
	mov	1468,r13		! source line 1468
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2826:
! END IF...
_Label_2824:
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
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
	mov	1471,r13		! source line 1471
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
	mov	1472,r13		! source line 1472
	mov	"\0\0WH",r10
_Label_2827:
!	jmp	_Label_2828
_Label_2828:
	mov	1472,r13		! source line 1472
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2833		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2833
	jmp	_Label_2830
_Label_2833:
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2835) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2834  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2834 then goto _Label_2832 else goto _Label_2830
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2830
	jmp	_Label_2832
_Label_2832:
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2837) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2836  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2836 then goto _Label_2831 else goto _Label_2830
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2830
	jmp	_Label_2831
_Label_2830:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2831:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2839) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2838  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2838 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0WH",r10
_Label_2840:
!   if offset >= 8192 then goto _Label_2842		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2842
!	jmp	_Label_2841
_Label_2841:
	mov	1479,r13		! source line 1479
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2843 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2843  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2845		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2845
!	jmp	_Label_2844
_Label_2844:
! THEN...
	mov	1486,r13		! source line 1486
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2845:
! END WHILE...
	jmp	_Label_2840
_Label_2842:
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2827
_Label_2829:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2846
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	12
	.word	4
	.word	_Label_2849
	.word	16
	.word	4
	.word	_Label_2850
	.word	20
	.word	4
	.word	_Label_2851
	.word	-9
	.word	1
	.word	_Label_2852
	.word	-16
	.word	4
	.word	_Label_2853
	.word	-20
	.word	4
	.word	_Label_2854
	.word	-24
	.word	4
	.word	_Label_2855
	.word	-10
	.word	1
	.word	_Label_2856
	.word	-28
	.word	4
	.word	_Label_2857
	.word	-11
	.word	1
	.word	_Label_2858
	.word	-32
	.word	4
	.word	_Label_2859
	.word	-36
	.word	4
	.word	_Label_2860
	.word	-40
	.word	4
	.word	_Label_2861
	.word	-44
	.word	4
	.word	0
_Label_2846:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2849:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2850:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2851:
	.byte	'C'
	.ascii	"_temp_2843\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2855:
	.byte	'C'
	.ascii	"_temp_2836\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2857:
	.byte	'C'
	.ascii	"_temp_2834\0"
	.align
_Label_2858:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2859:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2861:
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
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0IF",r10
	mov	1520,r13		! source line 1520
	mov	"\0\0SE",r10
!   _temp_2865 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2866) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2865  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2864  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2864 >= 4 then goto _Label_2863		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2863
!	jmp	_Label_2862
_Label_2862:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2863:
! IF STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2868		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2868
!	jmp	_Label_2867
_Label_2867:
! THEN...
	mov	1528,r13		! source line 1528
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2868:
! ASSIGNMENT STATEMENT...
	mov	1531,r13		! source line 1531
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
	mov	1533,r13		! source line 1533
	mov	"\0\0RE",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_2871 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2870 = _temp_2871 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2872 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2873) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2870  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2872  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2869  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2869  (sizeInBytes=4)
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
	.word	_Label_2874
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2876
	.word	12
	.word	4
	.word	_Label_2877
	.word	16
	.word	4
	.word	_Label_2878
	.word	20
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
	.word	_Label_2885
	.word	-36
	.word	4
	.word	_Label_2886
	.word	-40
	.word	4
	.word	_Label_2887
	.word	-44
	.word	4
	.word	0
_Label_2874:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2875:
	.ascii	"Pself\0"
	.align
_Label_2876:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2877:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2878:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2887:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2888
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2888:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2889
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2889:
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
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
	mov	2160,r13		! source line 2160
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2890 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2890  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
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
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   _temp_2892 = &semUsedInSynchMethods
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
	mov	2170,r13		! source line 2170
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
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   _temp_2894 = &diskBusy
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
	mov	2171,r13		! source line 2171
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
	.word	_Label_2895
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2897
	.word	-12
	.word	4
	.word	_Label_2898
	.word	-16
	.word	4
	.word	_Label_2899
	.word	-20
	.word	4
	.word	_Label_2900
	.word	-24
	.word	4
	.word	_Label_2901
	.word	-28
	.word	4
	.word	0
_Label_2895:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2896:
	.ascii	"Pself\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2890\0"
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
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
	mov	2176,r13		! source line 2176
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0SE",r10
!   _temp_2902 = &diskBusy
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
	mov	2190,r13		! source line 2190
	mov	"\0\0WH",r10
_Label_2903:
!	jmp	_Label_2904
_Label_2904:
	mov	2190,r13		! source line 2190
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0SE",r10
!   _temp_2906 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2906  sizeInBytes=4
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
	mov	2194,r13		! source line 2194
	mov	"\0\0SE",r10
!   _temp_2908 = &semUsedInSynchMethods
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
	mov	2197,r13		! source line 2197
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2917 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2911
	cmp	r1,2
	be	_Label_2912
	cmp	r1,3
	be	_Label_2913
	cmp	r1,4
	be	_Label_2914
	cmp	r1,5
	be	_Label_2915
	cmp	r1,6
	be	_Label_2916
	jmp	_Label_2909
! CASE 1...
_Label_2911:
! SEND STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_2918 = &diskBusy
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
	mov	2200,r13		! source line 2200
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2912:
! CALL STATEMENT...
!   _temp_2919 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2919  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2202,r13		! source line 2202
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2913:
! CALL STATEMENT...
!   _temp_2920 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2920  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2204,r13		! source line 2204
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2914:
! CALL STATEMENT...
!   _temp_2921 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2921  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2206,r13		! source line 2206
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2915:
! BREAK STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0BR",r10
	jmp	_Label_2910
! CASE 6...
_Label_2916:
! CALL STATEMENT...
!   _temp_2922 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2922  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2212,r13		! source line 2212
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2909:
! CALL STATEMENT...
!   _temp_2923 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2923  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2214,r13		! source line 2214
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2910:
! END WHILE...
	jmp	_Label_2903
_Label_2905:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2924
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2926
	.word	12
	.word	4
	.word	_Label_2927
	.word	16
	.word	4
	.word	_Label_2928
	.word	20
	.word	4
	.word	_Label_2929
	.word	-12
	.word	4
	.word	_Label_2930
	.word	-16
	.word	4
	.word	_Label_2931
	.word	-20
	.word	4
	.word	_Label_2932
	.word	-24
	.word	4
	.word	_Label_2933
	.word	-28
	.word	4
	.word	_Label_2934
	.word	-32
	.word	4
	.word	_Label_2935
	.word	-36
	.word	4
	.word	_Label_2936
	.word	-40
	.word	4
	.word	_Label_2937
	.word	-44
	.word	4
	.word	_Label_2938
	.word	-48
	.word	4
	.word	_Label_2939
	.word	-52
	.word	4
	.word	0
_Label_2924:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2925:
	.ascii	"Pself\0"
	.align
_Label_2926:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2927:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2928:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2902\0"
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
	mov	2223,r13		! source line 2223
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
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
	mov	2242,r13		! source line 2242
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
	mov	2243,r13		! source line 2243
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
	mov	2244,r13		! source line 2244
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
	mov	2244,r13		! source line 2244
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
	.word	_Label_2940
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2942
	.word	12
	.word	4
	.word	_Label_2943
	.word	16
	.word	4
	.word	_Label_2944
	.word	20
	.word	4
	.word	_Label_2945
	.word	24
	.word	4
	.word	0
_Label_2940:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2941:
	.ascii	"Pself\0"
	.align
_Label_2942:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2943:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2944:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2945:
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
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	2249,r13		! source line 2249
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0SE",r10
!   _temp_2946 = &diskBusy
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
	mov	2262,r13		! source line 2262
	mov	"\0\0WH",r10
_Label_2947:
!	jmp	_Label_2948
_Label_2948:
	mov	2262,r13		! source line 2262
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_2950 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2951) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2950  sizeInBytes=4
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
	mov	2265,r13		! source line 2265
	mov	"\0\0SE",r10
!   _temp_2952 = &semUsedInSynchMethods
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
	mov	2268,r13		! source line 2268
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2961 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2955
	cmp	r1,2
	be	_Label_2956
	cmp	r1,3
	be	_Label_2957
	cmp	r1,4
	be	_Label_2958
	cmp	r1,5
	be	_Label_2959
	cmp	r1,6
	be	_Label_2960
	jmp	_Label_2953
! CASE 1...
_Label_2955:
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_2962 = &diskBusy
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
	mov	2271,r13		! source line 2271
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2956:
! CALL STATEMENT...
!   _temp_2963 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2963  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2273,r13		! source line 2273
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2957:
! CALL STATEMENT...
!   _temp_2964 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2964  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2275,r13		! source line 2275
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2958:
! CALL STATEMENT...
!   _temp_2965 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2277,r13		! source line 2277
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2959:
! BREAK STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0BR",r10
	jmp	_Label_2954
! CASE 6...
_Label_2960:
! CALL STATEMENT...
!   _temp_2966 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2966  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2283,r13		! source line 2283
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2953:
! CALL STATEMENT...
!   _temp_2967 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2967  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2285,r13		! source line 2285
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2954:
! END WHILE...
	jmp	_Label_2947
_Label_2949:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2968
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2970
	.word	12
	.word	4
	.word	_Label_2971
	.word	16
	.word	4
	.word	_Label_2972
	.word	20
	.word	4
	.word	_Label_2973
	.word	-12
	.word	4
	.word	_Label_2974
	.word	-16
	.word	4
	.word	_Label_2975
	.word	-20
	.word	4
	.word	_Label_2976
	.word	-24
	.word	4
	.word	_Label_2977
	.word	-28
	.word	4
	.word	_Label_2978
	.word	-32
	.word	4
	.word	_Label_2979
	.word	-36
	.word	4
	.word	_Label_2980
	.word	-40
	.word	4
	.word	_Label_2981
	.word	-44
	.word	4
	.word	_Label_2982
	.word	-48
	.word	4
	.word	_Label_2983
	.word	-52
	.word	4
	.word	0
_Label_2968:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2969:
	.ascii	"Pself\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2972:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2946\0"
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
	mov	2294,r13		! source line 2294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
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
	mov	2312,r13		! source line 2312
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
	mov	2313,r13		! source line 2313
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
	mov	2314,r13		! source line 2314
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
	mov	2314,r13		! source line 2314
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
	.word	_Label_2984
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2986
	.word	12
	.word	4
	.word	_Label_2987
	.word	16
	.word	4
	.word	_Label_2988
	.word	20
	.word	4
	.word	_Label_2989
	.word	24
	.word	4
	.word	0
_Label_2984:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2985:
	.ascii	"Pself\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2988:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2989:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2990
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
_Label_2990:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2991
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2991:
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
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	2325,r13		! source line 2325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2992 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2332,r13		! source line 2332
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
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
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2994 = &fileManagerLock
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
	mov	2337,r13		! source line 2337
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
	mov	2338,r13		! source line 2338
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
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2997 = &anFCBBecameFree
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
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   _temp_2998 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3000 = &_temp_2999
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3000 = _temp_3000 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3002 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3911:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3911
!   _temp_3002 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3004:
!   Data Move: *_temp_3000 = _temp_3002  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3912:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3912
!   _temp_3000 = _temp_3000 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3001 = _temp_3001 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3001) then goto _Label_3004
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3004
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3005 = &_temp_2999
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3913
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3913:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2998 = *_temp_3005  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3914:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3914
! FOR STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3010 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3011 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3010  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3006:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3011 then goto _Label_3009		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3009
_Label_3007:
	mov	2342,r13		! source line 2342
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   _temp_3012 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3012 [i ] into _temp_3013
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
!   _temp_3014 = _temp_3013 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3014 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0SE",r10
!   _temp_3015 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3015 [i ] into _temp_3016
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
	mov	2345,r13		! source line 2345
	mov	"\0\0SE",r10
!   _temp_3018 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3018 [i ] into _temp_3019
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
!   _temp_3017 = _temp_3019		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3020 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3017  sizeInBytes=4
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
_Label_3008:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3006
! END FOR
_Label_3009:
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
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
	mov	2350,r13		! source line 2350
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
	mov	2351,r13		! source line 2351
	mov	"\0\0SE",r10
!   _temp_3023 = &anOpenFileBecameFree
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
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   _temp_3024 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3026 = &_temp_3025
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3026 = _temp_3026 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3028 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3915:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3915
!   _temp_3028 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3030:
!   Data Move: *_temp_3026 = _temp_3028  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3916:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3916
!   _temp_3026 = _temp_3026 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3027 = _temp_3027 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3027) then goto _Label_3030
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3030
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3031 = &_temp_3025
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3917
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3917:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3024 = *_temp_3031  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3918:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3918
! FOR STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3036 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3037 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3036  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3032:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3037 then goto _Label_3035		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3035
_Label_3033:
	mov	2354,r13		! source line 2354
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   _temp_3038 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3038 [i ] into _temp_3039
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
!   _temp_3040 = _temp_3039 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3040 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   _temp_3042 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3042 [i ] into _temp_3043
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
!   _temp_3041 = _temp_3043		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3044 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3041  sizeInBytes=4
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
_Label_3034:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3032
! END FOR
_Label_3035:
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3919:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3919
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   _temp_3046 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3047 = _temp_3046 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3047 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
	mov	2366,r13		! source line 2366
	mov	"\0\0SE",r10
!   _temp_3048 = &_P_Kernel_frameManager
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
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_3049 = &_P_Kernel_diskDriver
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
	mov	2367,r13		! source line 2367
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
	.word	_Label_3050
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3052
	.word	-12
	.word	4
	.word	_Label_3053
	.word	-16
	.word	4
	.word	_Label_3054
	.word	-20
	.word	4
	.word	_Label_3055
	.word	-24
	.word	4
	.word	_Label_3056
	.word	-28
	.word	4
	.word	_Label_3057
	.word	-32
	.word	4
	.word	_Label_3058
	.word	-36
	.word	4
	.word	_Label_3059
	.word	-40
	.word	4
	.word	_Label_3060
	.word	-44
	.word	4
	.word	_Label_3061
	.word	-48
	.word	4
	.word	_Label_3062
	.word	-52
	.word	4
	.word	_Label_3063
	.word	-56
	.word	4
	.word	_Label_3064
	.word	-60
	.word	4
	.word	_Label_3065
	.word	-64
	.word	4
	.word	_Label_3066
	.word	-68
	.word	4
	.word	_Label_3067
	.word	-72
	.word	4
	.word	_Label_3068
	.word	-100
	.word	28
	.word	_Label_3069
	.word	-104
	.word	4
	.word	_Label_3070
	.word	-108
	.word	4
	.word	_Label_3071
	.word	-392
	.word	284
	.word	_Label_3072
	.word	-396
	.word	4
	.word	_Label_3073
	.word	-400
	.word	4
	.word	_Label_3074
	.word	-404
	.word	4
	.word	_Label_3075
	.word	-408
	.word	4
	.word	_Label_3076
	.word	-412
	.word	4
	.word	_Label_3077
	.word	-416
	.word	4
	.word	_Label_3078
	.word	-420
	.word	4
	.word	_Label_3079
	.word	-424
	.word	4
	.word	_Label_3080
	.word	-428
	.word	4
	.word	_Label_3081
	.word	-432
	.word	4
	.word	_Label_3082
	.word	-436
	.word	4
	.word	_Label_3083
	.word	-440
	.word	4
	.word	_Label_3084
	.word	-444
	.word	4
	.word	_Label_3085
	.word	-448
	.word	4
	.word	_Label_3086
	.word	-452
	.word	4
	.word	_Label_3087
	.word	-456
	.word	4
	.word	_Label_3088
	.word	-460
	.word	4
	.word	_Label_3089
	.word	-500
	.word	40
	.word	_Label_3090
	.word	-504
	.word	4
	.word	_Label_3091
	.word	-508
	.word	4
	.word	_Label_3092
	.word	-912
	.word	404
	.word	_Label_3093
	.word	-916
	.word	4
	.word	_Label_3094
	.word	-920
	.word	4
	.word	_Label_3095
	.word	-924
	.word	4
	.word	_Label_3096
	.word	-928
	.word	4
	.word	_Label_3097
	.word	-932
	.word	4
	.word	_Label_3098
	.word	-936
	.word	4
	.word	_Label_3099
	.word	-940
	.word	4
	.word	_Label_3100
	.word	-944
	.word	4
	.word	0
_Label_3050:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3051:
	.ascii	"Pself\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3067:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3068:
	.byte	'?'
	.ascii	"_temp_3028\0"
	.align
_Label_3069:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3082:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3083:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3100:
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
_Label_3920:
	push	r0
	sub	r1,1,r1
	bne	_Label_3920
	mov	2374,r13		! source line 2374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0SE",r10
!   _temp_3101 = &fileManagerLock
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
!   _temp_3102 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3102  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2377,r13		! source line 2377
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3107 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3108 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3107  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3103:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3108 then goto _Label_3106		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3106
_Label_3104:
	mov	2378,r13		! source line 2378
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3109 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3109  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2379,r13		! source line 2379
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2380,r13		! source line 2380
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3110 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3110  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2381,r13		! source line 2381
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_3111 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3111 [i ] into _temp_3112
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
_Label_3105:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3103
! END FOR
_Label_3106:
! CALL STATEMENT...
!   _temp_3113 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3113  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2384,r13		! source line 2384
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0SE",r10
!   _temp_3114 = _function_182_printFCB
	set	_function_182_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3115 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3114  sizeInBytes=4
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
	mov	2386,r13		! source line 2386
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3116 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3116  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2387,r13		! source line 2387
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3121 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3122 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3121  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3117:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3122 then goto _Label_3120		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3120
_Label_3118:
	mov	2388,r13		! source line 2388
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3123 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2390,r13		! source line 2390
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3124 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3124  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2391,r13		! source line 2391
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3126 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3126 [i ] into _temp_3127
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
!   _temp_3125 = _temp_3127		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3125  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2392,r13		! source line 2392
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3128 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3128  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2393,r13		! source line 2393
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_3129 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3129 [i ] into _temp_3130
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
_Label_3119:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3117
! END FOR
_Label_3120:
! CALL STATEMENT...
!   _temp_3131 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3131  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2396,r13		! source line 2396
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   _temp_3132 = _function_181_printOpen
	set	_function_181_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3133 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3132  sizeInBytes=4
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
	mov	2398,r13		! source line 2398
	mov	"\0\0SE",r10
!   _temp_3134 = &fileManagerLock
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
	mov	2398,r13		! source line 2398
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
	.word	_Label_3135
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3137
	.word	-12
	.word	4
	.word	_Label_3138
	.word	-16
	.word	4
	.word	_Label_3139
	.word	-20
	.word	4
	.word	_Label_3140
	.word	-24
	.word	4
	.word	_Label_3141
	.word	-28
	.word	4
	.word	_Label_3142
	.word	-32
	.word	4
	.word	_Label_3143
	.word	-36
	.word	4
	.word	_Label_3144
	.word	-40
	.word	4
	.word	_Label_3145
	.word	-44
	.word	4
	.word	_Label_3146
	.word	-48
	.word	4
	.word	_Label_3147
	.word	-52
	.word	4
	.word	_Label_3148
	.word	-56
	.word	4
	.word	_Label_3149
	.word	-60
	.word	4
	.word	_Label_3150
	.word	-64
	.word	4
	.word	_Label_3151
	.word	-68
	.word	4
	.word	_Label_3152
	.word	-72
	.word	4
	.word	_Label_3153
	.word	-76
	.word	4
	.word	_Label_3154
	.word	-80
	.word	4
	.word	_Label_3155
	.word	-84
	.word	4
	.word	_Label_3156
	.word	-88
	.word	4
	.word	_Label_3157
	.word	-92
	.word	4
	.word	_Label_3158
	.word	-96
	.word	4
	.word	_Label_3159
	.word	-100
	.word	4
	.word	_Label_3160
	.word	-104
	.word	4
	.word	_Label_3161
	.word	-108
	.word	4
	.word	_Label_3162
	.word	-112
	.word	4
	.word	_Label_3163
	.word	-116
	.word	4
	.word	0
_Label_3135:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3136:
	.ascii	"Pself\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3163:
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
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
	mov	2403,r13		! source line 2403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_3164 = &_P_Kernel_fileManager
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
	mov	2420,r13		! source line 2420
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3165
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3165
	jmp	_Label_3166
_Label_3165:
! THEN...
	mov	2421,r13		! source line 2421
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3166:
! SEND STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0SE",r10
!   _temp_3167 = &fileManagerLock
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
	mov	2426,r13		! source line 2426
	mov	"\0\0WH",r10
_Label_3168:
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_3171 = &openFileFreeList
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
!   if result==true then goto _Label_3169 else goto _Label_3170
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3170
	jmp	_Label_3169
_Label_3169:
	mov	2426,r13		! source line 2426
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0SE",r10
!   _temp_3172 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3173 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3172  sizeInBytes=4
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
	jmp	_Label_3168
_Label_3170:
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_3174 = &openFileFreeList
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
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3175 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3175 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3176 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3176 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3177 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3177 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_3178 = &fileManagerLock
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
	mov	2439,r13		! source line 2439
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
	.word	_Label_3179
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3180
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3181
	.word	12
	.word	4
	.word	_Label_3182
	.word	-12
	.word	4
	.word	_Label_3183
	.word	-16
	.word	4
	.word	_Label_3184
	.word	-20
	.word	4
	.word	_Label_3185
	.word	-24
	.word	4
	.word	_Label_3186
	.word	-28
	.word	4
	.word	_Label_3187
	.word	-32
	.word	4
	.word	_Label_3188
	.word	-36
	.word	4
	.word	_Label_3189
	.word	-40
	.word	4
	.word	_Label_3190
	.word	-44
	.word	4
	.word	_Label_3191
	.word	-48
	.word	4
	.word	_Label_3192
	.word	-52
	.word	4
	.word	_Label_3193
	.word	-56
	.word	4
	.word	0
_Label_3179:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3180:
	.ascii	"Pself\0"
	.align
_Label_3181:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3192:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3193:
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
_Label_3922:
	push	r0
	sub	r1,1,r1
	bne	_Label_3922
	mov	2444,r13		! source line 2444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
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
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3195		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3195
!	jmp	_Label_3194
_Label_3194:
! THEN...
	mov	2475,r13		! source line 2475
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3196 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3196  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2475,r13		! source line 2475
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3195:
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
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
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
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
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0WH",r10
_Label_3197:
!   if numFiles <= 0 then goto _Label_3199		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3199
!	jmp	_Label_3198
_Label_3198:
	mov	2485,r13		! source line 2485
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3200 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3200  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2486,r13		! source line 2486
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3201 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3201  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3202 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3202  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2490,r13		! source line 2490
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3206 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3206 then goto _Label_3204		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3204
!	jmp	_Label_3205
_Label_3205:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3208
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
!   _temp_3207 = _temp_3208		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3207  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3203 else goto _Label_3204
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3204
	jmp	_Label_3203
_Label_3203:
! THEN...
	mov	2494,r13		! source line 2494
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0BR",r10
	jmp	_Label_3199
! END IF...
_Label_3204:
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3197
_Label_3199:
! IF STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3210		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3210
!	jmp	_Label_3209
_Label_3209:
! THEN...
	mov	2502,r13		! source line 2502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3210:
! SEND STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0SE",r10
!   _temp_3211 = &fileManagerLock
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
	mov	2507,r13		! source line 2507
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3216 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3217 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3216  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3212:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3217 then goto _Label_3215		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3215
_Label_3213:
	mov	2507,r13		! source line 2507
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   _temp_3218 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3218 [i ] into _temp_3219
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
!   fcb = _temp_3219		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3223 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3222 = *_temp_3223  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3222 != start then goto _Label_3221		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3221
!	jmp	_Label_3220
_Label_3220:
! THEN...
	mov	2510,r13		! source line 2510
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3224 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3227 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3226 = *_temp_3227  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3225 = _temp_3226 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3224 = _temp_3225  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0SE",r10
!   _temp_3228 = &fileManagerLock
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
	mov	2512,r13		! source line 2512
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3221:
!   Increment the FOR-LOOP index variable and jump back
_Label_3214:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3212
! END FOR
_Label_3215:
! WHILE STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0WH",r10
_Label_3229:
	mov	2517,r13		! source line 2517
	mov	"\0\0SE",r10
!   _temp_3232 = &fcbFreeList
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
!   if result==true then goto _Label_3230 else goto _Label_3231
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3231
	jmp	_Label_3230
_Label_3230:
	mov	2517,r13		! source line 2517
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
!   _temp_3233 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3234 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3233  sizeInBytes=4
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
	jmp	_Label_3229
_Label_3231:
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   _temp_3235 = &fcbFreeList
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
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
!   _temp_3236 = &fileManagerLock
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
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3237 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3237 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3238 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3238 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3239 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3239 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3244 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3243 = *_temp_3244  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3243 < 0 then goto _Label_3242		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3242
	jmp	_Label_3240
_Label_3242:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3245 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3245 ) then goto _Label_3241		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3241
!	jmp	_Label_3240
_Label_3240:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3246 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3246  sizeInBytes=4
	load	[r14+-12],r1
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
_Label_3241:
! RETURN STATEMENT...
	mov	2532,r13		! source line 2532
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
	.word	_Label_3247
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3249
	.word	12
	.word	4
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
	.word	_Label_3277
	.word	-120
	.word	4
	.word	_Label_3278
	.word	-124
	.word	4
	.word	_Label_3279
	.word	-128
	.word	4
	.word	_Label_3280
	.word	-132
	.word	4
	.word	_Label_3281
	.word	-136
	.word	4
	.word	_Label_3282
	.word	-140
	.word	4
	.word	_Label_3283
	.word	-144
	.word	4
	.word	_Label_3284
	.word	-148
	.word	4
	.word	_Label_3285
	.word	-152
	.word	4
	.word	_Label_3286
	.word	-156
	.word	4
	.word	_Label_3287
	.word	-160
	.word	4
	.word	0
_Label_3247:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3248:
	.ascii	"Pself\0"
	.align
_Label_3249:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3272:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3273:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3274:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3281:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3282:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3283:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3284:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3285:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3286:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3287:
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
_Label_3923:
	push	r0
	sub	r1,1,r1
	bne	_Label_3923
	mov	2545,r13		! source line 2545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0IF",r10
!   _temp_3290 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3290 then goto _Label_3289		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3289
!	jmp	_Label_3288
_Label_3288:
! THEN...
	mov	2548,r13		! source line 2548
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3289:
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_3291 = &fileManagerLock
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
	mov	2551,r13		! source line 2551
	mov	"\0\0SE",r10
!   _temp_3292 = &_P_Kernel_fileManager
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
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3293 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3293  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3294 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3297 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3296 = *_temp_3297  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3295 = _temp_3296 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3294 = _temp_3295  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3301 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3300 = *_temp_3301  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3300 > 0 then goto _Label_3299		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3299
!	jmp	_Label_3298
_Label_3298:
! THEN...
	mov	2555,r13		! source line 2555
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0SE",r10
!   _temp_3302 = &openFileFreeList
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
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_3303 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3304 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3303  sizeInBytes=4
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
	mov	2557,r13		! source line 2557
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3305 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3308 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3307 = *_temp_3308  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3306 = _temp_3307 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3305 = _temp_3306  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3312 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3311 = *_temp_3312  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3311 > 0 then goto _Label_3310		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3310
!	jmp	_Label_3309
_Label_3309:
! THEN...
	mov	2559,r13		! source line 2559
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_3313 = &fcbFreeList
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
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_3314 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3315 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3314  sizeInBytes=4
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
_Label_3310:
! END IF...
_Label_3299:
! SEND STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0SE",r10
!   _temp_3316 = &fileManagerLock
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
	mov	2563,r13		! source line 2563
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
	.word	_Label_3317
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3319
	.word	12
	.word	4
	.word	_Label_3320
	.word	-12
	.word	4
	.word	_Label_3321
	.word	-16
	.word	4
	.word	_Label_3322
	.word	-20
	.word	4
	.word	_Label_3323
	.word	-24
	.word	4
	.word	_Label_3324
	.word	-28
	.word	4
	.word	_Label_3325
	.word	-32
	.word	4
	.word	_Label_3326
	.word	-36
	.word	4
	.word	_Label_3327
	.word	-40
	.word	4
	.word	_Label_3328
	.word	-44
	.word	4
	.word	_Label_3329
	.word	-48
	.word	4
	.word	_Label_3330
	.word	-52
	.word	4
	.word	_Label_3331
	.word	-56
	.word	4
	.word	_Label_3332
	.word	-60
	.word	4
	.word	_Label_3333
	.word	-64
	.word	4
	.word	_Label_3334
	.word	-68
	.word	4
	.word	_Label_3335
	.word	-72
	.word	4
	.word	_Label_3336
	.word	-76
	.word	4
	.word	_Label_3337
	.word	-80
	.word	4
	.word	_Label_3338
	.word	-84
	.word	4
	.word	_Label_3339
	.word	-88
	.word	4
	.word	_Label_3340
	.word	-92
	.word	4
	.word	_Label_3341
	.word	-96
	.word	4
	.word	_Label_3342
	.word	-100
	.word	4
	.word	_Label_3343
	.word	-104
	.word	4
	.word	0
_Label_3317:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3318:
	.ascii	"Pself\0"
	.align
_Label_3319:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3312\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3343:
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
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	2568,r13		! source line 2568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3347 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3346 = *_temp_3347  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3346) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3348 = _temp_3346 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3348 ) then goto _Label_3345		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3345
!	jmp	_Label_3344
_Label_3344:
! THEN...
	mov	2574,r13		! source line 2574
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3353 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3352 = *_temp_3353  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3352) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3354 = _temp_3352 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3351 = *_temp_3354  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3351 >= 0 then goto _Label_3350		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3350
!	jmp	_Label_3349
_Label_3349:
! THEN...
	mov	2575,r13		! source line 2575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3355 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3355  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2575,r13		! source line 2575
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3350:
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3357 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3356 = *_temp_3357  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3356) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3358 = _temp_3356 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3358 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2578,r13		! source line 2578
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3362 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3361 = *_temp_3362  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3361) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3363 = _temp_3361 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3360 = *_temp_3363  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3366 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3365 = *_temp_3366  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3365) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3367 = _temp_3365 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3364 = *_temp_3367  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3359 = _temp_3360 + _temp_3364		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3370 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3369 = *_temp_3370  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3369) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3371 = _temp_3369 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3368 = *_temp_3371  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3372 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3359  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3368  sizeInBytes=4
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
_Label_3345:
! RETURN STATEMENT...
	mov	2573,r13		! source line 2573
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
	.word	_Label_3373
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3375
	.word	12
	.word	4
	.word	_Label_3376
	.word	-12
	.word	4
	.word	_Label_3377
	.word	-16
	.word	4
	.word	_Label_3378
	.word	-20
	.word	4
	.word	_Label_3379
	.word	-24
	.word	4
	.word	_Label_3380
	.word	-28
	.word	4
	.word	_Label_3381
	.word	-32
	.word	4
	.word	_Label_3382
	.word	-36
	.word	4
	.word	_Label_3383
	.word	-40
	.word	4
	.word	_Label_3384
	.word	-44
	.word	4
	.word	_Label_3385
	.word	-48
	.word	4
	.word	_Label_3386
	.word	-52
	.word	4
	.word	_Label_3387
	.word	-56
	.word	4
	.word	_Label_3388
	.word	-60
	.word	4
	.word	_Label_3389
	.word	-64
	.word	4
	.word	_Label_3390
	.word	-68
	.word	4
	.word	_Label_3391
	.word	-72
	.word	4
	.word	_Label_3392
	.word	-76
	.word	4
	.word	_Label_3393
	.word	-80
	.word	4
	.word	_Label_3394
	.word	-84
	.word	4
	.word	_Label_3395
	.word	-88
	.word	4
	.word	_Label_3396
	.word	-92
	.word	4
	.word	_Label_3397
	.word	-96
	.word	4
	.word	_Label_3398
	.word	-100
	.word	4
	.word	_Label_3399
	.word	-104
	.word	4
	.word	_Label_3400
	.word	-108
	.word	4
	.word	0
_Label_3373:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3374:
	.ascii	"Pself\0"
	.align
_Label_3375:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3370\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3355\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3354\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3353\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3346\0"
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
_Label_3925:
	push	r0
	sub	r1,1,r1
	bne	_Label_3925
	mov	2587,r13		! source line 2587
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_3401 = &fileManagerLock
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
	mov	2603,r13		! source line 2603
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3407		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3407
!   _temp_3406 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3408
_Label_3407:
!   _temp_3406 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3408:
!   if _temp_3406 then goto _Label_3405 else goto _Label_3402
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3402
	jmp	_Label_3405
_Label_3405:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3411 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3410 = *_temp_3411  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3410 == 0 then goto _Label_3412		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3412
!   _temp_3409 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3413
_Label_3412:
!   _temp_3409 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3413:
!   if _temp_3409 then goto _Label_3404 else goto _Label_3402
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3402
	jmp	_Label_3404
_Label_3404:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3416 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3415 = *_temp_3416  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3415) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3417 = _temp_3415 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3414 = *_temp_3417  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3414 >= 0 then goto _Label_3403		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3403
!	jmp	_Label_3402
_Label_3402:
! THEN...
	mov	2604,r13		! source line 2604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3418 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3418  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2604,r13		! source line 2604
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3403:
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3419 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3419  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0WH",r10
_Label_3420:
!   if numBytes <= 0 then goto _Label_3422		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3422
!	jmp	_Label_3421
_Label_3421:
	mov	2607,r13		! source line 2607
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
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
	mov	2617,r13		! source line 2617
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
	mov	2621,r13		! source line 2621
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3426 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3425 = *_temp_3426  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3425 == sector then goto _Label_3424		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3424
!	jmp	_Label_3423
_Label_3423:
! THEN...
	mov	2622,r13		! source line 2622
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3427) then goto _runtimeErrorNullPointer
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
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3429 = *_temp_3430  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3428 = sector + _temp_3429		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3432 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3431 = *_temp_3432  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3433 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3428  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3431  sizeInBytes=4
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
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3434 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3434 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3435 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3435 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3424:
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3437 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3436 = *_temp_3437  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3436 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   _temp_3438 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3438  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2631,r13		! source line 2631
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
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3420
_Label_3422:
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_3439 = &fileManagerLock
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
	mov	2646,r13		! source line 2646
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
	.word	_Label_3440
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3442
	.word	12
	.word	4
	.word	_Label_3443
	.word	16
	.word	4
	.word	_Label_3444
	.word	20
	.word	4
	.word	_Label_3445
	.word	24
	.word	4
	.word	_Label_3446
	.word	-16
	.word	4
	.word	_Label_3447
	.word	-20
	.word	4
	.word	_Label_3448
	.word	-24
	.word	4
	.word	_Label_3449
	.word	-28
	.word	4
	.word	_Label_3450
	.word	-32
	.word	4
	.word	_Label_3451
	.word	-36
	.word	4
	.word	_Label_3452
	.word	-40
	.word	4
	.word	_Label_3453
	.word	-44
	.word	4
	.word	_Label_3454
	.word	-48
	.word	4
	.word	_Label_3455
	.word	-52
	.word	4
	.word	_Label_3456
	.word	-56
	.word	4
	.word	_Label_3457
	.word	-60
	.word	4
	.word	_Label_3458
	.word	-64
	.word	4
	.word	_Label_3459
	.word	-68
	.word	4
	.word	_Label_3460
	.word	-72
	.word	4
	.word	_Label_3461
	.word	-76
	.word	4
	.word	_Label_3462
	.word	-80
	.word	4
	.word	_Label_3463
	.word	-84
	.word	4
	.word	_Label_3464
	.word	-88
	.word	4
	.word	_Label_3465
	.word	-92
	.word	4
	.word	_Label_3466
	.word	-96
	.word	4
	.word	_Label_3467
	.word	-100
	.word	4
	.word	_Label_3468
	.word	-104
	.word	4
	.word	_Label_3469
	.word	-9
	.word	1
	.word	_Label_3470
	.word	-10
	.word	1
	.word	_Label_3471
	.word	-108
	.word	4
	.word	_Label_3472
	.word	-112
	.word	4
	.word	_Label_3473
	.word	-116
	.word	4
	.word	_Label_3474
	.word	-120
	.word	4
	.word	_Label_3475
	.word	-124
	.word	4
	.word	_Label_3476
	.word	-128
	.word	4
	.word	0
_Label_3440:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3441:
	.ascii	"Pself\0"
	.align
_Label_3442:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3443:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3444:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3445:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3435\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3418\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3469:
	.byte	'C'
	.ascii	"_temp_3409\0"
	.align
_Label_3470:
	.byte	'C'
	.ascii	"_temp_3406\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3472:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3473:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3474:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3475:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3476:
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
_Label_3926:
	push	r0
	sub	r1,1,r1
	bne	_Label_3926
	mov	2651,r13		! source line 2651
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
!   _temp_3477 = &fileManagerLock
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
	mov	2668,r13		! source line 2668
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3483		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3483
!   _temp_3482 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3484
_Label_3483:
!   _temp_3482 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3484:
!   if _temp_3482 then goto _Label_3481 else goto _Label_3478
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3478
	jmp	_Label_3481
_Label_3481:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3487 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3486 = *_temp_3487  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3486 == 0 then goto _Label_3488		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3488
!   _temp_3485 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3489
_Label_3488:
!   _temp_3485 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3489:
!   if _temp_3485 then goto _Label_3480 else goto _Label_3478
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3478
	jmp	_Label_3480
_Label_3480:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3492 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3491 = *_temp_3492  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3491) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3493 = _temp_3491 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3490 = *_temp_3493  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3490 >= 0 then goto _Label_3479		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3479
!	jmp	_Label_3478
_Label_3478:
! THEN...
	mov	2669,r13		! source line 2669
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3494 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3494  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2669,r13		! source line 2669
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3479:
! ASSIGNMENT STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3495 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3495  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0WH",r10
_Label_3496:
!   if numBytes <= 0 then goto _Label_3498		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3498
!	jmp	_Label_3497
_Label_3497:
	mov	2672,r13		! source line 2672
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
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
	mov	2682,r13		! source line 2682
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
	mov	2686,r13		! source line 2686
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3502 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3501 = *_temp_3502  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3501 == sector then goto _Label_3500		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3500
!	jmp	_Label_3499
_Label_3499:
! THEN...
	mov	2688,r13		! source line 2688
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3503) then goto _runtimeErrorNullPointer
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
_Label_3500:
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3505 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3504 = *_temp_3505  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3504 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   _temp_3506 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3506  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3510 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3509 = *_temp_3510  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3509 != sector then goto _Label_3508		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3508
!	jmp	_Label_3507
_Label_3507:
	jmp	_Label_3511
_Label_3508:
! ELSE...
	mov	2694,r13		! source line 2694
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3514
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3514
	jmp	_Label_3513
_Label_3514:
!   if bytesToMove != 8192 then goto _Label_3513		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3513
!	jmp	_Label_3512
_Label_3512:
	jmp	_Label_3515
_Label_3513:
! ELSE...
	mov	2698,r13		! source line 2698
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3518 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3517 = *_temp_3518  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3516 = sector + _temp_3517		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3520 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3519 = *_temp_3520  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3521 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3516  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3519  sizeInBytes=4
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
_Label_3515:
! END IF...
_Label_3511:
! ASSIGNMENT STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3522 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3522 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3523 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3523 = 1  (sizeInBytes=1)
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
	mov	2707,r13		! source line 2707
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3496
_Label_3498:
! SEND STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
!   _temp_3524 = &fileManagerLock
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
	mov	2719,r13		! source line 2719
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
	.word	_Label_3525
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3527
	.word	12
	.word	4
	.word	_Label_3528
	.word	16
	.word	4
	.word	_Label_3529
	.word	20
	.word	4
	.word	_Label_3530
	.word	24
	.word	4
	.word	_Label_3531
	.word	-16
	.word	4
	.word	_Label_3532
	.word	-20
	.word	4
	.word	_Label_3533
	.word	-24
	.word	4
	.word	_Label_3534
	.word	-28
	.word	4
	.word	_Label_3535
	.word	-32
	.word	4
	.word	_Label_3536
	.word	-36
	.word	4
	.word	_Label_3537
	.word	-40
	.word	4
	.word	_Label_3538
	.word	-44
	.word	4
	.word	_Label_3539
	.word	-48
	.word	4
	.word	_Label_3540
	.word	-52
	.word	4
	.word	_Label_3541
	.word	-56
	.word	4
	.word	_Label_3542
	.word	-60
	.word	4
	.word	_Label_3543
	.word	-64
	.word	4
	.word	_Label_3544
	.word	-68
	.word	4
	.word	_Label_3545
	.word	-72
	.word	4
	.word	_Label_3546
	.word	-76
	.word	4
	.word	_Label_3547
	.word	-80
	.word	4
	.word	_Label_3548
	.word	-84
	.word	4
	.word	_Label_3549
	.word	-88
	.word	4
	.word	_Label_3550
	.word	-92
	.word	4
	.word	_Label_3551
	.word	-96
	.word	4
	.word	_Label_3552
	.word	-100
	.word	4
	.word	_Label_3553
	.word	-104
	.word	4
	.word	_Label_3554
	.word	-108
	.word	4
	.word	_Label_3555
	.word	-112
	.word	4
	.word	_Label_3556
	.word	-9
	.word	1
	.word	_Label_3557
	.word	-10
	.word	1
	.word	_Label_3558
	.word	-116
	.word	4
	.word	_Label_3559
	.word	-120
	.word	4
	.word	_Label_3560
	.word	-124
	.word	4
	.word	_Label_3561
	.word	-128
	.word	4
	.word	_Label_3562
	.word	-132
	.word	4
	.word	_Label_3563
	.word	-136
	.word	4
	.word	0
_Label_3525:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3526:
	.ascii	"Pself\0"
	.align
_Label_3527:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3528:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3529:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3530:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3556:
	.byte	'C'
	.ascii	"_temp_3485\0"
	.align
_Label_3557:
	.byte	'C'
	.ascii	"_temp_3482\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3559:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3560:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3561:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3562:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3563:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3564
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3564:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3565
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3565:
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
_Label_3927:
	push	r0
	sub	r1,1,r1
	bne	_Label_3927
	mov	2755,r13		! source line 2755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_3566 = &_P_Kernel_frameManager
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
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2760,r13		! source line 2760
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2760,r13		! source line 2760
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
	.word	_Label_3567
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3569
	.word	-12
	.word	4
	.word	0
_Label_3567:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3568:
	.ascii	"Pself\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3566\0"
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
_Label_3928:
	push	r0
	sub	r1,1,r1
	bne	_Label_3928
	mov	2765,r13		! source line 2765
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3570 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3570  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3571 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3571  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2768,r13		! source line 2768
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2769,r13		! source line 2769
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3572 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3572  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2770,r13		! source line 2770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2771,r13		! source line 2771
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3573 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3573  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2772,r13		! source line 2772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2773,r13		! source line 2773
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3574 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2774,r13		! source line 2774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3575 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3575  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2777,r13		! source line 2777
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2778,r13		! source line 2778
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2778,r13		! source line 2778
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
	.word	_Label_3576
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3578
	.word	-12
	.word	4
	.word	_Label_3579
	.word	-16
	.word	4
	.word	_Label_3580
	.word	-20
	.word	4
	.word	_Label_3581
	.word	-24
	.word	4
	.word	_Label_3582
	.word	-28
	.word	4
	.word	_Label_3583
	.word	-32
	.word	4
	.word	0
_Label_3576:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3577:
	.ascii	"Pself\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3572\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3571\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3584
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3584:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3585
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3585:
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
_Label_3929:
	push	r0
	sub	r1,1,r1
	bne	_Label_3929
	mov	2789,r13		! source line 2789
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3586 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3587 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3587  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3589		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3589
!	jmp	_Label_3588
_Label_3588:
! THEN...
	mov	2794,r13		! source line 2794
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2794,r13		! source line 2794
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
	jmp	_Label_3590
_Label_3589:
! ELSE...
	mov	2796,r13		! source line 2796
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3591 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3591  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3590:
! RETURN STATEMENT...
	mov	2793,r13		! source line 2793
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
	.word	_Label_3592
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3594
	.word	-12
	.word	4
	.word	_Label_3595
	.word	-16
	.word	4
	.word	_Label_3596
	.word	-20
	.word	4
	.word	0
_Label_3592:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3593:
	.ascii	"Pself\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3586\0"
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
_Label_3930:
	push	r0
	sub	r1,1,r1
	bne	_Label_3930
	mov	2802,r13		! source line 2802
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
!   _temp_3597 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3598 = _temp_3597 + 4
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
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
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
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
!   _temp_3599 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3600 = _temp_3599 + 4
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
	mov	2816,r13		! source line 2816
	mov	"\0\0RE",r10
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3603 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3602  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3601  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3601  (sizeInBytes=1)
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
	.word	_Label_3604
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3605
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3606
	.word	12
	.word	4
	.word	_Label_3607
	.word	16
	.word	4
	.word	_Label_3608
	.word	-16
	.word	4
	.word	_Label_3609
	.word	-20
	.word	4
	.word	_Label_3610
	.word	-9
	.word	1
	.word	_Label_3611
	.word	-24
	.word	4
	.word	_Label_3612
	.word	-28
	.word	4
	.word	_Label_3613
	.word	-32
	.word	4
	.word	_Label_3614
	.word	-36
	.word	4
	.word	_Label_3615
	.word	-40
	.word	4
	.word	0
_Label_3604:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3605:
	.ascii	"Pself\0"
	.align
_Label_3606:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3607:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3610:
	.byte	'C'
	.ascii	"_temp_3601\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3615:
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
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
	mov	2821,r13		! source line 2821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0IF",r10
	mov	2826,r13		! source line 2826
	mov	"\0\0SE",r10
!   _temp_3619 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3620) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3619  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3618  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3618 then goto _Label_3617 else goto _Label_3616
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3616
	jmp	_Label_3617
_Label_3616:
! THEN...
	mov	2827,r13		! source line 2827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3621 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3621  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2827,r13		! source line 2827
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3617:
! RETURN STATEMENT...
	mov	2829,r13		! source line 2829
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
	.word	_Label_3622
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3624
	.word	-16
	.word	4
	.word	_Label_3625
	.word	-20
	.word	4
	.word	_Label_3626
	.word	-24
	.word	4
	.word	_Label_3627
	.word	-9
	.word	1
	.word	_Label_3628
	.word	-28
	.word	4
	.word	0
_Label_3622:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3623:
	.ascii	"Pself\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3627:
	.byte	'C'
	.ascii	"_temp_3618\0"
	.align
_Label_3628:
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
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
	mov	2834,r13		! source line 2834
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3632 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3631 = *_temp_3632  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3631) then goto _Label_3630
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3630
!	jmp	_Label_3629
_Label_3629:
! THEN...
	mov	2861,r13		! source line 2861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3633 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3633  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2861,r13		! source line 2861
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3630:
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3637) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3636  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3636 == 1112300152 then goto _Label_3635		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3635
!	jmp	_Label_3634
_Label_3634:
! THEN...
	mov	2866,r13		! source line 2866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3638 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3638  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3635:
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
	mov	2871,r13		! source line 2871
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3639) then goto _runtimeErrorNullPointer
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
	mov	2872,r13		! source line 2872
	mov	"\0\0AS",r10
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3640) then goto _runtimeErrorNullPointer
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
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3641) then goto _runtimeErrorNullPointer
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
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
	mov	2874,r13		! source line 2874
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3642) then goto _runtimeErrorNullPointer
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
	mov	2875,r13		! source line 2875
	mov	"\0\0AS",r10
	mov	2875,r13		! source line 2875
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3643) then goto _runtimeErrorNullPointer
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
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
	mov	2876,r13		! source line 2876
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3644) then goto _runtimeErrorNullPointer
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
	mov	2879,r13		! source line 2879
	mov	"\0\0IF",r10
!   _temp_3647 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3647) then goto _Label_3646
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3646
!	jmp	_Label_3645
_Label_3645:
! THEN...
	mov	2880,r13		! source line 2880
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3648 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3648  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3646:
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
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
	mov	2887,r13		! source line 2887
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3650
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3650
!	jmp	_Label_3649
_Label_3649:
! THEN...
	mov	2888,r13		! source line 2888
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3651 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3651  sizeInBytes=4
	load	[r14+-164],r1
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
_Label_3650:
! IF STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0IF",r10
!   _temp_3654 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3654) then goto _Label_3653
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3653
!	jmp	_Label_3652
_Label_3652:
! THEN...
	mov	2894,r13		! source line 2894
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3655 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3655  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3653:
! IF STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0IF",r10
!   _temp_3658 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3658 then goto _Label_3657		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3657
!	jmp	_Label_3656
_Label_3656:
! THEN...
	mov	2898,r13		! source line 2898
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3659 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3659  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3657:
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
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
	mov	2904,r13		! source line 2904
	mov	"\0\0IF",r10
!   _temp_3662 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3662) then goto _Label_3661
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3661
!	jmp	_Label_3660
_Label_3660:
! THEN...
	mov	2905,r13		! source line 2905
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3663 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3663  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2905,r13		! source line 2905
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3661:
! IF STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0IF",r10
!   _temp_3666 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3666 then goto _Label_3665		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3665
!	jmp	_Label_3664
_Label_3664:
! THEN...
	mov	2909,r13		! source line 2909
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3667 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3667  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2909,r13		! source line 2909
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3665:
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
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
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   _temp_3670 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3669 = _temp_3670 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3668 = _temp_3669 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3668 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3672		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3672
!	jmp	_Label_3671
_Label_3671:
! THEN...
	mov	2931,r13		! source line 2931
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3673 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3673  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3674 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3674  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2932,r13		! source line 2932
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3675 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3675  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2933,r13		! source line 2933
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3672:
! SEND STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0SE",r10
!   _temp_3676 = &_P_Kernel_frameManager
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
	mov	2942,r13		! source line 2942
	mov	"\0\0IF",r10
	mov	2942,r13		! source line 2942
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3680) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3679  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3679 == 707406378 then goto _Label_3678		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3678
!	jmp	_Label_3677
_Label_3677:
! THEN...
	mov	2943,r13		! source line 2943
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3681 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3681  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2943,r13		! source line 2943
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2944,r13		! source line 2944
	mov	"\0\0SE",r10
!   _temp_3682 = &_P_Kernel_frameManager
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
	mov	2945,r13		! source line 2945
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3678:
! ASSIGNMENT STATEMENT...
	mov	2949,r13		! source line 2949
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
	mov	2950,r13		! source line 2950
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3687 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3688 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3687  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3683:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3688 then goto _Label_3686		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3686
_Label_3684:
	mov	2950,r13		! source line 2950
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
	mov	2951,r13		! source line 2951
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
	mov	2954,r13		! source line 2954
	mov	"\0\0IF",r10
	mov	2954,r13		! source line 2954
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3692) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3691  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3691 then goto _Label_3690 else goto _Label_3689
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3689
	jmp	_Label_3690
_Label_3689:
! THEN...
	mov	2955,r13		! source line 2955
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3693 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3693  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2956,r13		! source line 2956
	mov	"\0\0SE",r10
!   _temp_3694 = &_P_Kernel_frameManager
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
	mov	2957,r13		! source line 2957
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3690:
! SEND STATEMENT...
	mov	2959,r13		! source line 2959
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
	mov	2960,r13		! source line 2960
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3685:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3683
! END FOR
_Label_3686:
! IF STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
	mov	2964,r13		! source line 2964
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3698) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3697  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3697 == 707406378 then goto _Label_3696		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3696
!	jmp	_Label_3695
_Label_3695:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3699 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3699  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2965,r13		! source line 2965
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_3700 = &_P_Kernel_frameManager
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
_Label_3696:
! FOR STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3705 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3706 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3705  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3701:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3706 then goto _Label_3704		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3704
_Label_3702:
	mov	2971,r13		! source line 2971
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0AS",r10
	mov	2972,r13		! source line 2972
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
	mov	2975,r13		! source line 2975
	mov	"\0\0IF",r10
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3710) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3709  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3709 then goto _Label_3708 else goto _Label_3707
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3707
	jmp	_Label_3708
_Label_3707:
! THEN...
	mov	2976,r13		! source line 2976
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3711 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3711  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2976,r13		! source line 2976
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
!   _temp_3712 = &_P_Kernel_frameManager
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
	mov	2978,r13		! source line 2978
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3708:
! ASSIGNMENT STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3703:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3701
! END FOR
_Label_3704:
! IF STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0IF",r10
	mov	2984,r13		! source line 2984
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3716) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3715  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3715 == 707406378 then goto _Label_3714		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3714
!	jmp	_Label_3713
_Label_3713:
! THEN...
	mov	2985,r13		! source line 2985
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3717 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3717  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2985,r13		! source line 2985
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
!   _temp_3718 = &_P_Kernel_frameManager
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
	mov	2987,r13		! source line 2987
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3714:
! ASSIGNMENT STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0AS",r10
	mov	2991,r13		! source line 2991
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
	mov	2995,r13		! source line 2995
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2998,r13		! source line 2998
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
	.word	_Label_3719
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3721
	.word	12
	.word	4
	.word	_Label_3722
	.word	-16
	.word	4
	.word	_Label_3723
	.word	-20
	.word	4
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
	.word	_Label_3729
	.word	-9
	.word	1
	.word	_Label_3730
	.word	-44
	.word	4
	.word	_Label_3731
	.word	-48
	.word	4
	.word	_Label_3732
	.word	-52
	.word	4
	.word	_Label_3733
	.word	-56
	.word	4
	.word	_Label_3734
	.word	-60
	.word	4
	.word	_Label_3735
	.word	-64
	.word	4
	.word	_Label_3736
	.word	-68
	.word	4
	.word	_Label_3737
	.word	-72
	.word	4
	.word	_Label_3738
	.word	-76
	.word	4
	.word	_Label_3739
	.word	-10
	.word	1
	.word	_Label_3740
	.word	-80
	.word	4
	.word	_Label_3741
	.word	-84
	.word	4
	.word	_Label_3742
	.word	-88
	.word	4
	.word	_Label_3743
	.word	-92
	.word	4
	.word	_Label_3744
	.word	-96
	.word	4
	.word	_Label_3745
	.word	-100
	.word	4
	.word	_Label_3746
	.word	-104
	.word	4
	.word	_Label_3747
	.word	-108
	.word	4
	.word	_Label_3748
	.word	-112
	.word	4
	.word	_Label_3749
	.word	-116
	.word	4
	.word	_Label_3750
	.word	-120
	.word	4
	.word	_Label_3751
	.word	-124
	.word	4
	.word	_Label_3752
	.word	-128
	.word	4
	.word	_Label_3753
	.word	-132
	.word	4
	.word	_Label_3754
	.word	-136
	.word	4
	.word	_Label_3755
	.word	-140
	.word	4
	.word	_Label_3756
	.word	-144
	.word	4
	.word	_Label_3757
	.word	-148
	.word	4
	.word	_Label_3758
	.word	-152
	.word	4
	.word	_Label_3759
	.word	-156
	.word	4
	.word	_Label_3760
	.word	-160
	.word	4
	.word	_Label_3761
	.word	-164
	.word	4
	.word	_Label_3762
	.word	-168
	.word	4
	.word	_Label_3763
	.word	-172
	.word	4
	.word	_Label_3764
	.word	-176
	.word	4
	.word	_Label_3765
	.word	-180
	.word	4
	.word	_Label_3766
	.word	-184
	.word	4
	.word	_Label_3767
	.word	-188
	.word	4
	.word	_Label_3768
	.word	-192
	.word	4
	.word	_Label_3769
	.word	-196
	.word	4
	.word	_Label_3770
	.word	-200
	.word	4
	.word	_Label_3771
	.word	-204
	.word	4
	.word	_Label_3772
	.word	-208
	.word	4
	.word	_Label_3773
	.word	-212
	.word	4
	.word	_Label_3774
	.word	-216
	.word	4
	.word	_Label_3775
	.word	-220
	.word	4
	.word	_Label_3776
	.word	-224
	.word	4
	.word	_Label_3777
	.word	-228
	.word	4
	.word	_Label_3778
	.word	-232
	.word	4
	.word	_Label_3779
	.word	-236
	.word	4
	.word	_Label_3780
	.word	-240
	.word	4
	.word	_Label_3781
	.word	-244
	.word	4
	.word	_Label_3782
	.word	-248
	.word	4
	.word	_Label_3783
	.word	-252
	.word	4
	.word	_Label_3784
	.word	-256
	.word	4
	.word	_Label_3785
	.word	-260
	.word	4
	.word	_Label_3786
	.word	-264
	.word	4
	.word	_Label_3787
	.word	-268
	.word	4
	.word	0
_Label_3719:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3720:
	.ascii	"Pself\0"
	.align
_Label_3721:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3728:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3729:
	.byte	'C'
	.ascii	"_temp_3709\0"
	.align
_Label_3730:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3739:
	.byte	'C'
	.ascii	"_temp_3691\0"
	.align
_Label_3740:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3741:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3742:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3648\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3641\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3640\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3638\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3637\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3633\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3632\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3776:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3777:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3778:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3779:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3780:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3781:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3782:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3783:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3784:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3785:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3786:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3787:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
