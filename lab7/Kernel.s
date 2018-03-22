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
_Label_3860:
	push	r0
	sub	r1,1,r1
	bne	_Label_3860
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
_Label_3861:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3861
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
_Label_3862:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3862
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
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
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
_Label_3864:
	push	r0
	sub	r1,1,r1
	bne	_Label_3864
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
_Label_3865:
	push	r0
	sub	r1,1,r1
	bne	_Label_3865
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
_Label_3866:
	push	r0
	sub	r1,1,r1
	bne	_Label_3866
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
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
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
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
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
_Label_3869:
	push	r0
	sub	r1,1,r1
	bne	_Label_3869
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
_Label_3870:
	push	r0
	sub	r1,1,r1
	bne	_Label_3870
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
_Label_3871:
	push	r0
	sub	r1,1,r1
	bne	_Label_3871
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
_Label_3872:
	push	r0
	sub	r1,1,r1
	bne	_Label_3872
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
_Label_3873:
	push	r0
	sub	r1,1,r1
	bne	_Label_3873
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
_Label_3874:
	push	r0
	sub	r1,1,r1
	bne	_Label_3874
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
_Label_3875:
	push	r0
	sub	r1,1,r1
	bne	_Label_3875
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
_Label_3876:
	push	r0
	sub	r1,1,r1
	bne	_Label_3876
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
_Label_3877:
	push	r0
	sub	r1,1,r1
	bne	_Label_3877
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
_Label_3878:
	push	r0
	sub	r1,1,r1
	bne	_Label_3878
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
_Label_3879:
	push	r0
	sub	r1,1,r1
	bne	_Label_3879
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
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
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
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
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
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
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
_Label_3883:
	push	r0
	sub	r1,1,r1
	bne	_Label_3883
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
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
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
_Label_3885:
	push	r0
	sub	r1,1,r1
	bne	_Label_3885
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
	be	_Label_3886
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_513
_Label_3886:
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
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
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
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
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
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
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
	mov	85,r1
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
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
	mov	1794,r13		! source line 1794
	mov	"\0\0AS",r10
	mov	1794,r13		! source line 1794
	mov	"\0\0SE",r10
!   _temp_561 = &_P_Kernel_processManager
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
	mov	1795,r13		! source line 1795
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = pcb + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_562 = th  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1796,r13		! source line 1796
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = pcb + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_565 = *_temp_566  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_565) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_567 = _temp_565 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_564 = *_temp_567  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_563 = _temp_564  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_568 = th + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_568 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_569 = th + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_569 = pcb  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = th + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_571 [0 ] into _temp_572
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
!   _temp_570 = _temp_572		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-276],r1
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
	store	r1,[r14+-336]
! FOR STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_577 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_578 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_577  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-332]
_Label_573:
!   Perform the FOR-LOOP termination test
!   if i > _temp_578 then goto _Label_576		
	load	[r14+-332],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_576
_Label_574:
	mov	1805,r13		! source line 1805
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_582 = *_temp_583  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_582) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = _temp_582 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_584 [i ] into _temp_585
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
!   Data Move: _temp_581 = *_temp_585  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_581) then goto _Label_580
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_580
!	jmp	_Label_579
_Label_579:
! THEN...
	mov	1807,r13		! source line 1807
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_587 = *_temp_588  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_587) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = _temp_587 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_589 [i ] into _temp_590
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
!   Data Move: _temp_586 = *_temp_590  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_586) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _temp_586 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_595 = *_temp_596  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_595) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _temp_595 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_597 [i ] into _temp_598
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
!   Data Move: _temp_594 = *_temp_598  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_594) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _temp_594 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_593 = *_temp_599  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_592 = _temp_593 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_591 = _temp_592  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = th + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_602 [i ] into _temp_603
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
!   _temp_606 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_605) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = _temp_605 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_607 [i ] into _temp_608
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
!   Data Move: _temp_604 = *_temp_608  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_603 = _temp_604  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_580:
!   Increment the FOR-LOOP index variable and jump back
_Label_575:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_573
! END FOR
_Label_576:
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = th + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = th + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_611 [999 ] into _temp_612
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
!   _temp_610 = _temp_612		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_609 = _temp_610  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = pcb + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_613 = _temp_614		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_616 = *_temp_617  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_616) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _temp_616 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_619 = _temp_618 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_615 = *_temp_619  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_620 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_613  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_615  sizeInBytes=4
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
	mov	1815,r13		! source line 1815
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_625 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_628 = *_temp_629  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_628) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = _temp_628 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_631 = _temp_630 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_627 = *_temp_631  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_626 = _temp_627 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_625  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-332]
_Label_621:
!   Perform the FOR-LOOP termination test
!   if i > _temp_626 then goto _Label_624		
	load	[r14+-332],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_624
_Label_622:
	mov	1815,r13		! source line 1815
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = pcb + 32
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
!   Retrieve Result: targetName=_temp_632  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1816,r13		! source line 1816
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_635 + 32
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
!   Retrieve Result: targetName=_temp_634  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0IF",r10
	mov	1817,r13		! source line 1817
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_641 = *_temp_642  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_641) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _temp_641 + 32
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
!   Retrieve Result: targetName=_temp_640  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_640 then goto _Label_639 else goto _Label_638
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_638
	jmp	_Label_639
_Label_638:
! THEN...
	mov	1818,r13		! source line 1818
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = pcb + 32
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
	jmp	_Label_645
_Label_639:
! ELSE...
	mov	1820,r13		! source line 1820
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = pcb + 32
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
_Label_645:
!   Increment the FOR-LOOP index variable and jump back
_Label_623:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_621
! END FOR
_Label_624:
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0SE",r10
!   _temp_647 = _function_184_ResumeChildAfterFork
	set	_function_184_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_647  sizeInBytes=4
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
	mov	1826,r13		! source line 1826
	mov	"\0\0RE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = pcb + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_648 = *_temp_649  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_648  (sizeInBytes=4)
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
	.word	_Label_650
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_651
	.word	-16
	.word	4
	.word	_Label_652
	.word	-20
	.word	4
	.word	_Label_653
	.word	-24
	.word	4
	.word	_Label_654
	.word	-28
	.word	4
	.word	_Label_655
	.word	-32
	.word	4
	.word	_Label_656
	.word	-36
	.word	4
	.word	_Label_657
	.word	-40
	.word	4
	.word	_Label_658
	.word	-44
	.word	4
	.word	_Label_659
	.word	-9
	.word	1
	.word	_Label_660
	.word	-48
	.word	4
	.word	_Label_661
	.word	-52
	.word	4
	.word	_Label_662
	.word	-56
	.word	4
	.word	_Label_663
	.word	-60
	.word	4
	.word	_Label_664
	.word	-64
	.word	4
	.word	_Label_665
	.word	-68
	.word	4
	.word	_Label_666
	.word	-72
	.word	4
	.word	_Label_667
	.word	-76
	.word	4
	.word	_Label_668
	.word	-80
	.word	4
	.word	_Label_669
	.word	-84
	.word	4
	.word	_Label_670
	.word	-88
	.word	4
	.word	_Label_671
	.word	-92
	.word	4
	.word	_Label_672
	.word	-96
	.word	4
	.word	_Label_673
	.word	-100
	.word	4
	.word	_Label_674
	.word	-104
	.word	4
	.word	_Label_675
	.word	-108
	.word	4
	.word	_Label_676
	.word	-112
	.word	4
	.word	_Label_677
	.word	-116
	.word	4
	.word	_Label_678
	.word	-120
	.word	4
	.word	_Label_679
	.word	-124
	.word	4
	.word	_Label_680
	.word	-128
	.word	4
	.word	_Label_681
	.word	-132
	.word	4
	.word	_Label_682
	.word	-136
	.word	4
	.word	_Label_683
	.word	-140
	.word	4
	.word	_Label_684
	.word	-144
	.word	4
	.word	_Label_685
	.word	-148
	.word	4
	.word	_Label_686
	.word	-152
	.word	4
	.word	_Label_687
	.word	-156
	.word	4
	.word	_Label_688
	.word	-160
	.word	4
	.word	_Label_689
	.word	-164
	.word	4
	.word	_Label_690
	.word	-168
	.word	4
	.word	_Label_691
	.word	-172
	.word	4
	.word	_Label_692
	.word	-176
	.word	4
	.word	_Label_693
	.word	-180
	.word	4
	.word	_Label_694
	.word	-184
	.word	4
	.word	_Label_695
	.word	-188
	.word	4
	.word	_Label_696
	.word	-192
	.word	4
	.word	_Label_697
	.word	-196
	.word	4
	.word	_Label_698
	.word	-200
	.word	4
	.word	_Label_699
	.word	-204
	.word	4
	.word	_Label_700
	.word	-208
	.word	4
	.word	_Label_701
	.word	-212
	.word	4
	.word	_Label_702
	.word	-216
	.word	4
	.word	_Label_703
	.word	-220
	.word	4
	.word	_Label_704
	.word	-224
	.word	4
	.word	_Label_705
	.word	-228
	.word	4
	.word	_Label_706
	.word	-232
	.word	4
	.word	_Label_707
	.word	-236
	.word	4
	.word	_Label_708
	.word	-240
	.word	4
	.word	_Label_709
	.word	-244
	.word	4
	.word	_Label_710
	.word	-248
	.word	4
	.word	_Label_711
	.word	-252
	.word	4
	.word	_Label_712
	.word	-256
	.word	4
	.word	_Label_713
	.word	-260
	.word	4
	.word	_Label_714
	.word	-264
	.word	4
	.word	_Label_715
	.word	-268
	.word	4
	.word	_Label_716
	.word	-272
	.word	4
	.word	_Label_717
	.word	-276
	.word	4
	.word	_Label_718
	.word	-280
	.word	4
	.word	_Label_719
	.word	-284
	.word	4
	.word	_Label_720
	.word	-288
	.word	4
	.word	_Label_721
	.word	-292
	.word	4
	.word	_Label_722
	.word	-296
	.word	4
	.word	_Label_723
	.word	-300
	.word	4
	.word	_Label_724
	.word	-304
	.word	4
	.word	_Label_725
	.word	-308
	.word	4
	.word	_Label_726
	.word	-312
	.word	4
	.word	_Label_727
	.word	-316
	.word	4
	.word	_Label_728
	.word	-320
	.word	4
	.word	_Label_729
	.word	-324
	.word	4
	.word	_Label_730
	.word	-328
	.word	4
	.word	_Label_731
	.word	-332
	.word	4
	.word	_Label_732
	.word	-336
	.word	4
	.word	0
_Label_650:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_659:
	.byte	'C'
	.ascii	"_temp_640\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_728:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_729:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_732:
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
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	1829,r13		! source line 1829
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1833,r13		! source line 1833
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_733) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_735 = _temp_733 + 32
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
!   _temp_737 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_737 [0 ] into _temp_738
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
!   _temp_736 = _temp_738		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_739 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_740 [14 ] into _temp_741
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
!   Data Move: initUserStackTop = *_temp_741  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_742 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_742 [999 ] into _temp_743
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
!   initSystemStackTop = _temp_743		(4 bytes)
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
	mov	1839,r13		! source line 1839
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
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
	.word	_Label_744
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_745
	.word	8
	.word	4
	.word	_Label_746
	.word	-12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	_Label_749
	.word	-24
	.word	4
	.word	_Label_750
	.word	-28
	.word	4
	.word	_Label_751
	.word	-32
	.word	4
	.word	_Label_752
	.word	-36
	.word	4
	.word	_Label_753
	.word	-40
	.word	4
	.word	_Label_754
	.word	-44
	.word	4
	.word	_Label_755
	.word	-48
	.word	4
	.word	_Label_756
	.word	-52
	.word	4
	.word	_Label_757
	.word	-56
	.word	4
	.word	_Label_758
	.word	-60
	.word	4
	.word	_Label_759
	.word	-64
	.word	4
	.word	0
_Label_744:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_758:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_759:
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
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_764 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_765 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_764  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_760:
!   Perform the FOR-LOOP termination test
!   if i > _temp_765 then goto _Label_763		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_763
_Label_761:
	mov	1847,r13		! source line 1847
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0IF",r10
!   _temp_771 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_772 = _temp_771 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_772 [i ] into _temp_773
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
!   _temp_774 = _temp_773 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_770 = *_temp_774  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_770 != processID then goto _Label_767		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_767
!	jmp	_Label_769
_Label_769:
!   _temp_776 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_777 = _temp_776 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_777 [i ] into _temp_778
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
!   _temp_779 = _temp_778 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_775 = *_temp_779  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_781 = *_temp_782  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _temp_781 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_780 = *_temp_783  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_775 != _temp_780 then goto _Label_767		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_767
!	jmp	_Label_768
_Label_768:
!   _temp_785 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_786 = _temp_785 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_786 [i ] into _temp_787
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
!   _temp_788 = _temp_787 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_784 = *_temp_788  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_784 == 3 then goto _Label_767		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	1849,r13		! source line 1849
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
	mov	1849,r13		! source line 1849
	mov	"\0\0SE",r10
!   _temp_790 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_791 = _temp_790 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_791 [i ] into _temp_792
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
!   _temp_789 = _temp_792		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_793 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_789  sizeInBytes=4
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
	mov	1850,r13		! source line 1850
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_767:
!   Increment the FOR-LOOP index variable and jump back
_Label_762:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_760
! END FOR
_Label_763:
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
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
	.word	_Label_794
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_795
	.word	8
	.word	4
	.word	_Label_796
	.word	-12
	.word	4
	.word	_Label_797
	.word	-16
	.word	4
	.word	_Label_798
	.word	-20
	.word	4
	.word	_Label_799
	.word	-24
	.word	4
	.word	_Label_800
	.word	-28
	.word	4
	.word	_Label_801
	.word	-32
	.word	4
	.word	_Label_802
	.word	-36
	.word	4
	.word	_Label_803
	.word	-40
	.word	4
	.word	_Label_804
	.word	-44
	.word	4
	.word	_Label_805
	.word	-48
	.word	4
	.word	_Label_806
	.word	-52
	.word	4
	.word	_Label_807
	.word	-56
	.word	4
	.word	_Label_808
	.word	-60
	.word	4
	.word	_Label_809
	.word	-64
	.word	4
	.word	_Label_810
	.word	-68
	.word	4
	.word	_Label_811
	.word	-72
	.word	4
	.word	_Label_812
	.word	-76
	.word	4
	.word	_Label_813
	.word	-80
	.word	4
	.word	_Label_814
	.word	-84
	.word	4
	.word	_Label_815
	.word	-88
	.word	4
	.word	_Label_816
	.word	-92
	.word	4
	.word	_Label_817
	.word	-96
	.word	4
	.word	_Label_818
	.word	-100
	.word	4
	.word	_Label_819
	.word	-104
	.word	4
	.word	_Label_820
	.word	-108
	.word	4
	.word	_Label_821
	.word	-112
	.word	4
	.word	_Label_822
	.word	-116
	.word	4
	.word	_Label_823
	.word	-120
	.word	4
	.word	0
_Label_794:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_789\0"
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
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_823:
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
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0AS",r10
	mov	1868,r13		! source line 1868
	mov	"\0\0SE",r10
!   _temp_824 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-112]
!   _temp_825 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_827 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_826 = *_temp_827  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_826) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = _temp_826 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_825  sizeInBytes=4
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
	mov	1869,r13		! source line 1869
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_830		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_830
!	jmp	_Label_829
_Label_829:
! THEN...
	mov	1869,r13		! source line 1869
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_830:
! ASSIGNMENT STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3894:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3894
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0SE",r10
!   _temp_832 = &newAddrSpace
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
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
	mov	1874,r13		! source line 1874
	mov	"\0\0SE",r10
!   _temp_833 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_834 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
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
	mov	1875,r13		! source line 1875
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_835
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_835
	jmp	_Label_836
_Label_835:
! THEN...
	mov	1875,r13		! source line 1875
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_836:
! ASSIGNMENT STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0AS",r10
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   _temp_837 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_837  sizeInBytes=4
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
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_839		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_839
!	jmp	_Label_838
_Label_838:
! THEN...
	mov	1879,r13		! source line 1879
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_839:
! ASSIGNMENT STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_841 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_840 = *_temp_841  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_840) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_842 = _temp_840 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_842 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3895:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3895
! SEND STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_844 = *_temp_845  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_844) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _temp_844 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_843 = _temp_846		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_847 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_843  sizeInBytes=4
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
	mov	1884,r13		! source line 1884
	mov	"\0\0SE",r10
!   _temp_848 = &_P_Kernel_fileManager
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
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   _temp_850 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_851 = _temp_850 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_849 = *_temp_851  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_849 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_852 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_852 [999 ] into _temp_853
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
!   initSystemStackTop = _temp_853		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_854 = &newAddrSpace
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
	mov	1890,r13		! source line 1890
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_855 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_855 = 1  (sizeInBytes=1)
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
	mov	1891,r13		! source line 1891
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1893,r13		! source line 1893
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
	.word	_Label_856
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_857
	.word	8
	.word	4
	.word	_Label_858
	.word	-12
	.word	4
	.word	_Label_859
	.word	-16
	.word	4
	.word	_Label_860
	.word	-20
	.word	4
	.word	_Label_861
	.word	-24
	.word	4
	.word	_Label_862
	.word	-28
	.word	4
	.word	_Label_863
	.word	-32
	.word	4
	.word	_Label_864
	.word	-36
	.word	4
	.word	_Label_865
	.word	-40
	.word	4
	.word	_Label_866
	.word	-44
	.word	4
	.word	_Label_867
	.word	-48
	.word	4
	.word	_Label_868
	.word	-52
	.word	4
	.word	_Label_869
	.word	-56
	.word	4
	.word	_Label_870
	.word	-60
	.word	4
	.word	_Label_871
	.word	-64
	.word	4
	.word	_Label_872
	.word	-68
	.word	4
	.word	_Label_873
	.word	-72
	.word	4
	.word	_Label_874
	.word	-76
	.word	4
	.word	_Label_875
	.word	-80
	.word	4
	.word	_Label_876
	.word	-84
	.word	4
	.word	_Label_877
	.word	-88
	.word	4
	.word	_Label_878
	.word	-92
	.word	4
	.word	_Label_879
	.word	-96
	.word	4
	.word	_Label_880
	.word	-100
	.word	4
	.word	_Label_881
	.word	-104
	.word	4
	.word	_Label_882
	.word	-108
	.word	4
	.word	_Label_883
	.word	-112
	.word	4
	.word	_Label_884
	.word	-204
	.word	92
	.word	_Label_885
	.word	-208
	.word	4
	.word	_Label_886
	.word	-212
	.word	4
	.word	_Label_887
	.word	-236
	.word	24
	.word	_Label_888
	.word	-240
	.word	4
	.word	_Label_889
	.word	-244
	.word	4
	.word	_Label_890
	.word	-248
	.word	4
	.word	0
_Label_856:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_857:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_884:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_885:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_886:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_887:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_889:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_890:
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
_Label_3896:
	push	r0
	sub	r1,1,r1
	bne	_Label_3896
	mov	1898,r13		! source line 1898
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_891 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-44]
!   _temp_892 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_893) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _temp_893 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_891  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_892  sizeInBytes=4
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
	mov	1903,r13		! source line 1903
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_897		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_897
!	jmp	_Label_896
_Label_896:
! THEN...
	mov	1903,r13		! source line 1903
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_897:
! CALL STATEMENT...
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_899 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_900 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_901 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
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
	.word	_Label_902
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_903
	.word	8
	.word	4
	.word	_Label_904
	.word	-12
	.word	4
	.word	_Label_905
	.word	-16
	.word	4
	.word	_Label_906
	.word	-20
	.word	4
	.word	_Label_907
	.word	-24
	.word	4
	.word	_Label_908
	.word	-28
	.word	4
	.word	_Label_909
	.word	-32
	.word	4
	.word	_Label_910
	.word	-36
	.word	4
	.word	_Label_911
	.word	-40
	.word	4
	.word	_Label_912
	.word	-44
	.word	4
	.word	_Label_913
	.word	-48
	.word	4
	.word	_Label_914
	.word	-72
	.word	24
	.word	0
_Label_902:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_913:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_914:
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
_Label_3897:
	push	r0
	sub	r1,1,r1
	bne	_Label_3897
	mov	1917,r13		! source line 1917
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   _temp_915 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-80]
!   _temp_916 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_918 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_917 = *_temp_918  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_917) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_919 = _temp_917 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_915  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_916  sizeInBytes=4
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
	mov	1923,r13		! source line 1923
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_921		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_921
!	jmp	_Label_920
_Label_920:
! THEN...
	mov	1923,r13		! source line 1923
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_921:
! ASSIGNMENT STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-92]
! FOR STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_926 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_927 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_926  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-88]
_Label_922:
!   Perform the FOR-LOOP termination test
!   if i > _temp_927 then goto _Label_925		
	load	[r14+-88],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_925
_Label_923:
	mov	1927,r13		! source line 1927
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_931 = *_temp_932  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_931) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_933 = _temp_931 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_933 [i ] into _temp_934
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
!   Data Move: _temp_930 = *_temp_934  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_930) then goto _Label_928
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_928
	jmp	_Label_929
_Label_928:
! THEN...
	mov	1929,r13		! source line 1929
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
! BREAK STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0BR",r10
	jmp	_Label_925
! END IF...
_Label_929:
!   Increment the FOR-LOOP index variable and jump back
_Label_924:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_922
! END FOR
_Label_925:
! IF STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_936		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_936
!	jmp	_Label_935
_Label_935:
! THEN...
	mov	1934,r13		! source line 1934
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_936:
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
	mov	1937,r13		! source line 1937
	mov	"\0\0SE",r10
!   _temp_937 = &strBuffer
	add	r14,-116,r1
	store	r1,[r14+-32]
!   _temp_938 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_937  sizeInBytes=4
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
	mov	1938,r13		! source line 1938
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_939
	load	[r14+-120],r1
	cmp	r1,r0
	be	_Label_939
	jmp	_Label_940
_Label_939:
! THEN...
	mov	1939,r13		! source line 1939
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_940:
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_941 = *_temp_942  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_941) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = _temp_941 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_943 [fileDescriptorIndex ] into _temp_944
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
!   Data Move: *_temp_944 = openFile  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1943,r13		! source line 1943
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
	.word	_Label_945
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_946
	.word	8
	.word	4
	.word	_Label_947
	.word	-12
	.word	4
	.word	_Label_948
	.word	-16
	.word	4
	.word	_Label_949
	.word	-20
	.word	4
	.word	_Label_950
	.word	-24
	.word	4
	.word	_Label_951
	.word	-28
	.word	4
	.word	_Label_952
	.word	-32
	.word	4
	.word	_Label_953
	.word	-36
	.word	4
	.word	_Label_954
	.word	-40
	.word	4
	.word	_Label_955
	.word	-44
	.word	4
	.word	_Label_956
	.word	-48
	.word	4
	.word	_Label_957
	.word	-52
	.word	4
	.word	_Label_958
	.word	-56
	.word	4
	.word	_Label_959
	.word	-60
	.word	4
	.word	_Label_960
	.word	-64
	.word	4
	.word	_Label_961
	.word	-68
	.word	4
	.word	_Label_962
	.word	-72
	.word	4
	.word	_Label_963
	.word	-76
	.word	4
	.word	_Label_964
	.word	-80
	.word	4
	.word	_Label_965
	.word	-84
	.word	4
	.word	_Label_966
	.word	-88
	.word	4
	.word	_Label_967
	.word	-92
	.word	4
	.word	_Label_968
	.word	-116
	.word	24
	.word	_Label_969
	.word	-120
	.word	4
	.word	0
_Label_945:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_946:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_965:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_966:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_967:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_968:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_969:
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
_Label_3898:
	push	r0
	sub	r1,1,r1
	bne	_Label_3898
	mov	1948,r13		! source line 1948
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_974		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_974
	jmp	_Label_970
_Label_974:
!   if fileDesc <= 9 then goto _Label_973		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_973
	jmp	_Label_970
_Label_973:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_977 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_976 = *_temp_977  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_976) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = _temp_976 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_978 [fileDesc ] into _temp_979
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
!   Data Move: _temp_975 = *_temp_979  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_975) then goto _Label_970
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_970
!	jmp	_Label_972
_Label_972:
!   if sizeInBytes >= 0 then goto _Label_971		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_971
!	jmp	_Label_970
_Label_970:
! THEN...
	mov	1955,r13		! source line 1955
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1955,r13		! source line 1955
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_971:
! ASSIGNMENT STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_981 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_980 = *_temp_981  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_980) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = _temp_980 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_982 [fileDesc ] into _temp_983
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
!   Data Move: openFile = *_temp_983  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
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
	mov	1960,r13		! source line 1960
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
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_984  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_985 = *_temp_986  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_985) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_987 = _temp_985 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_987  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0WH",r10
_Label_988:
!	jmp	_Label_989
_Label_989:
	mov	1965,r13		! source line 1965
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1966,r13		! source line 1966
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0IF",r10
!   _temp_993 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_993 <= fileSize then goto _Label_992		(int)
	load	[r14+-208],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	1968,r13		! source line 1968
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_992:
! IF STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0IF",r10
!   _temp_996 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_996 <= sizeInBytes then goto _Label_995		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	1971,r13		! source line 1971
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_995:
! IF STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_998		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_998
!	jmp	_Label_997
_Label_997:
! THEN...
	mov	1974,r13		! source line 1974
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0BR",r10
	jmp	_Label_990
! END IF...
_Label_998:
! IF STATEMENT...
	mov	1977,r13		! source line 1977
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1003		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1003
	jmp	_Label_999
_Label_1003:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1007 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1006 = *_temp_1007  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1006) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _temp_1006 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1009 = _temp_1008 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1005 = *_temp_1009  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1004 = _temp_1005 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1004 then goto _Label_1002		(int)
	load	[r14+-264],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1002
	jmp	_Label_999
_Label_1002:
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1012 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1011 = *_temp_1012  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1011) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1013 = _temp_1011 + 32
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
!   Retrieve Result: targetName=_temp_1010  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1010 then goto _Label_1001 else goto _Label_999
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_999
	jmp	_Label_1001
_Label_1001:
	mov	1977,r13		! source line 1977
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1016 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1015 = *_temp_1016  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1015) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1017 = _temp_1015 + 32
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
!   Retrieve Result: targetName=_temp_1014  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1014 then goto _Label_1000 else goto _Label_999
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_999
	jmp	_Label_1000
_Label_999:
! THEN...
	mov	1978,r13		! source line 1978
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1000:
! ASSIGNMENT STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1019		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1019
!	jmp	_Label_1018
_Label_1018:
! THEN...
	mov	1986,r13		! source line 1986
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0BR",r10
	jmp	_Label_990
! END IF...
_Label_1019:
! END WHILE...
	jmp	_Label_988
_Label_990:
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1021 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1020 = *_temp_1021  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1020) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1022 = _temp_1020 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1022 [fileDesc ] into _temp_1023
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
!   Data Move: openFile = *_temp_1023  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
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
	mov	1994,r13		! source line 1994
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
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1024 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1024  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1025 = *_temp_1026  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1025) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = _temp_1025 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1027  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0WH",r10
_Label_1028:
!	jmp	_Label_1029
_Label_1029:
	mov	1999,r13		! source line 1999
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0IF",r10
!   _temp_1033 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1033 <= fileSize then goto _Label_1032		(int)
	load	[r14+-120],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1032
!	jmp	_Label_1031
_Label_1031:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1032:
! IF STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0IF",r10
!   _temp_1036 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1036 <= sizeInBytes then goto _Label_1035		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	2005,r13		! source line 2005
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1035:
! IF STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1038		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	2008,r13		! source line 2008
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0BR",r10
	jmp	_Label_1030
! END IF...
_Label_1038:
! IF STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1043		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1043
	jmp	_Label_1039
_Label_1043:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1047 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1046 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1046) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = _temp_1046 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1049 = _temp_1048 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1045 = *_temp_1049  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1044 = _temp_1045 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1044 then goto _Label_1042		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1042
	jmp	_Label_1039
_Label_1042:
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1051 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1051) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _temp_1051 + 32
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
!   Retrieve Result: targetName=_temp_1050  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1050 then goto _Label_1041 else goto _Label_1039
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1039
	jmp	_Label_1041
_Label_1041:
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1056 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1055 = *_temp_1056  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1055) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = _temp_1055 + 32
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
!   Retrieve Result: targetName=_temp_1054  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1054 then goto _Label_1040 else goto _Label_1039
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1039
	jmp	_Label_1040
_Label_1039:
! THEN...
	mov	2011,r13		! source line 2011
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1040:
! SEND STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1058 = *_temp_1059  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1058) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1060 = _temp_1058 + 32
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
	mov	2014,r13		! source line 2014
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1062 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1061 = *_temp_1062  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1061) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _temp_1061 + 32
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
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
	mov	2015,r13		! source line 2015
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1066 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1065 = *_temp_1066  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1065) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = _temp_1065 + 32
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
!   Retrieve Result: targetName=_temp_1064  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1064 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   _temp_1068 = &_P_Kernel_fileManager
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
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1070		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0BR",r10
	jmp	_Label_1030
! END IF...
_Label_1070:
! END WHILE...
	jmp	_Label_1028
_Label_1030:
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1071 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2027,r13		! source line 2027
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
	.word	_Label_1072
	.word	12		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1073
	.word	8
	.word	4
	.word	_Label_1074
	.word	12
	.word	4
	.word	_Label_1075
	.word	16
	.word	4
	.word	_Label_1076
	.word	-20
	.word	4
	.word	_Label_1077
	.word	-24
	.word	4
	.word	_Label_1078
	.word	-28
	.word	4
	.word	_Label_1079
	.word	-32
	.word	4
	.word	_Label_1080
	.word	-36
	.word	4
	.word	_Label_1081
	.word	-40
	.word	4
	.word	_Label_1082
	.word	-44
	.word	4
	.word	_Label_1083
	.word	-48
	.word	4
	.word	_Label_1084
	.word	-52
	.word	4
	.word	_Label_1085
	.word	-56
	.word	4
	.word	_Label_1086
	.word	-60
	.word	4
	.word	_Label_1087
	.word	-64
	.word	4
	.word	_Label_1088
	.word	-68
	.word	4
	.word	_Label_1089
	.word	-72
	.word	4
	.word	_Label_1090
	.word	-76
	.word	4
	.word	_Label_1091
	.word	-9
	.word	1
	.word	_Label_1092
	.word	-80
	.word	4
	.word	_Label_1093
	.word	-84
	.word	4
	.word	_Label_1094
	.word	-88
	.word	4
	.word	_Label_1095
	.word	-10
	.word	1
	.word	_Label_1096
	.word	-92
	.word	4
	.word	_Label_1097
	.word	-96
	.word	4
	.word	_Label_1098
	.word	-100
	.word	4
	.word	_Label_1099
	.word	-104
	.word	4
	.word	_Label_1100
	.word	-108
	.word	4
	.word	_Label_1101
	.word	-112
	.word	4
	.word	_Label_1102
	.word	-116
	.word	4
	.word	_Label_1103
	.word	-120
	.word	4
	.word	_Label_1104
	.word	-124
	.word	4
	.word	_Label_1105
	.word	-128
	.word	4
	.word	_Label_1106
	.word	-132
	.word	4
	.word	_Label_1107
	.word	-136
	.word	4
	.word	_Label_1108
	.word	-140
	.word	4
	.word	_Label_1109
	.word	-144
	.word	4
	.word	_Label_1110
	.word	-148
	.word	4
	.word	_Label_1111
	.word	-152
	.word	4
	.word	_Label_1112
	.word	-156
	.word	4
	.word	_Label_1113
	.word	-160
	.word	4
	.word	_Label_1114
	.word	-164
	.word	4
	.word	_Label_1115
	.word	-11
	.word	1
	.word	_Label_1116
	.word	-168
	.word	4
	.word	_Label_1117
	.word	-172
	.word	4
	.word	_Label_1118
	.word	-176
	.word	4
	.word	_Label_1119
	.word	-12
	.word	1
	.word	_Label_1120
	.word	-180
	.word	4
	.word	_Label_1121
	.word	-184
	.word	4
	.word	_Label_1122
	.word	-188
	.word	4
	.word	_Label_1123
	.word	-192
	.word	4
	.word	_Label_1124
	.word	-196
	.word	4
	.word	_Label_1125
	.word	-200
	.word	4
	.word	_Label_1126
	.word	-204
	.word	4
	.word	_Label_1127
	.word	-208
	.word	4
	.word	_Label_1128
	.word	-212
	.word	4
	.word	_Label_1129
	.word	-216
	.word	4
	.word	_Label_1130
	.word	-220
	.word	4
	.word	_Label_1131
	.word	-224
	.word	4
	.word	_Label_1132
	.word	-228
	.word	4
	.word	_Label_1133
	.word	-232
	.word	4
	.word	_Label_1134
	.word	-236
	.word	4
	.word	_Label_1135
	.word	-240
	.word	4
	.word	_Label_1136
	.word	-244
	.word	4
	.word	_Label_1137
	.word	-248
	.word	4
	.word	_Label_1138
	.word	-252
	.word	4
	.word	_Label_1139
	.word	-256
	.word	4
	.word	_Label_1140
	.word	-260
	.word	4
	.word	_Label_1141
	.word	-264
	.word	4
	.word	_Label_1142
	.word	-268
	.word	4
	.word	_Label_1143
	.word	-272
	.word	4
	.word	_Label_1144
	.word	-276
	.word	4
	.word	_Label_1145
	.word	-280
	.word	4
	.word	_Label_1146
	.word	-284
	.word	4
	.word	_Label_1147
	.word	-288
	.word	4
	.word	_Label_1148
	.word	-292
	.word	4
	.word	_Label_1149
	.word	-296
	.word	4
	.word	_Label_1150
	.word	-13
	.word	1
	.word	0
_Label_1072:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1073:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1074:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1075:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1091:
	.byte	'C'
	.ascii	"_temp_1054\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1050\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1115:
	.byte	'C'
	.ascii	"_temp_1014\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1119:
	.byte	'C'
	.ascii	"_temp_1010\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1141:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1142:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1143:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1144:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1145:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1146:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1147:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1148:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1149:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1150:
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
_Label_3899:
	push	r0
	sub	r1,1,r1
	bne	_Label_3899
	mov	2032,r13		! source line 2032
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1155		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1155
	jmp	_Label_1151
_Label_1155:
!   if fileDesc <= 9 then goto _Label_1154		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1154
	jmp	_Label_1151
_Label_1154:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1158 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-252]
!   Data Move: _temp_1157 = *_temp_1158  (sizeInBytes=4)
	load	[r14+-252],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_1157) then goto _runtimeErrorNullPointer
	load	[r14+-256],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1159 = _temp_1157 + 124
	load	[r14+-256],r1
	add	r1,124,r1
	store	r1,[r14+-248]
!   Move address of _temp_1159 [fileDesc ] into _temp_1160
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
!   Data Move: _temp_1156 = *_temp_1160  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1156) then goto _Label_1151
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_1151
!	jmp	_Label_1153
_Label_1153:
!   if sizeInBytes >= 0 then goto _Label_1152		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	2039,r13		! source line 2039
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1152:
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1161 = *_temp_1162  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if intIsZero (_temp_1161) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _temp_1161 + 124
	load	[r14+-240],r1
	add	r1,124,r1
	store	r1,[r14+-232]
!   Move address of _temp_1163 [fileDesc ] into _temp_1164
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
!   Data Move: openFile = *_temp_1164  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
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
	mov	2044,r13		! source line 2044
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
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-224]
!   Data Move: nextPosInFile = *_temp_1165  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 24
	load	[r14+-220],r1
	add	r1,24,r1
	store	r1,[r14+-212]
!   Data Move: fileSize = *_temp_1168  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0WH",r10
_Label_1169:
!	jmp	_Label_1170
_Label_1170:
	mov	2049,r13		! source line 2049
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0IF",r10
!   _temp_1174 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1174 <= fileSize then goto _Label_1173		(int)
	load	[r14+-208],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1173
!	jmp	_Label_1172
_Label_1172:
! THEN...
	mov	2052,r13		! source line 2052
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1173:
! IF STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0IF",r10
!   _temp_1177 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if _temp_1177 <= sizeInBytes then goto _Label_1176		(int)
	load	[r14+-204],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1176
!	jmp	_Label_1175
_Label_1175:
! THEN...
	mov	2055,r13		! source line 2055
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1176:
! IF STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1179		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1179
!	jmp	_Label_1178
_Label_1178:
! THEN...
	mov	2058,r13		! source line 2058
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0BR",r10
	jmp	_Label_1171
! END IF...
_Label_1179:
! IF STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1184		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1184
	jmp	_Label_1180
_Label_1184:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1187) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _temp_1187 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   _temp_1190 = _temp_1189 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1186 = *_temp_1190  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   _temp_1185 = _temp_1186 - 1		(int)
	load	[r14+-196],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-200]
!   if virtPage <= _temp_1185 then goto _Label_1183		(int)
	load	[r14+-264],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1183
	jmp	_Label_1180
_Label_1183:
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1192 = *_temp_1193  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1192) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = _temp_1192 + 32
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
!   Retrieve Result: targetName=_temp_1191  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1191 then goto _Label_1182 else goto _Label_1180
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1180
	jmp	_Label_1182
_Label_1182:
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1197 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1196 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1196) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1198 = _temp_1196 + 32
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
!   Retrieve Result: targetName=_temp_1195  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1195 then goto _Label_1181 else goto _Label_1180
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1180
	jmp	_Label_1181
_Label_1180:
! THEN...
	mov	2062,r13		! source line 2062
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1181:
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1200		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1200
!	jmp	_Label_1199
_Label_1199:
! THEN...
	mov	2070,r13		! source line 2070
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0BR",r10
	jmp	_Label_1171
! END IF...
_Label_1200:
! END WHILE...
	jmp	_Label_1169
_Label_1171:
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1201 = *_temp_1202  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1201) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1203 = _temp_1201 + 124
	load	[r14+-152],r1
	add	r1,124,r1
	store	r1,[r14+-144]
!   Move address of _temp_1203 [fileDesc ] into _temp_1204
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
!   Data Move: openFile = *_temp_1204  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
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
	mov	2078,r13		! source line 2078
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
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1205 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-136]
!   Data Move: nextPosInFile = *_temp_1205  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1207 = openFile + 20
	load	[r14+-296],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1206 = *_temp_1207  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_1206) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1208 = _temp_1206 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: fileSize = *_temp_1208  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-288]
! WHILE STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0WH",r10
_Label_1209:
!	jmp	_Label_1210
_Label_1210:
	mov	2083,r13		! source line 2083
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-268],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0IF",r10
!   _temp_1214 = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1214 <= fileSize then goto _Label_1213		(int)
	load	[r14+-120],r1
	load	[r14+-288],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1213
!	jmp	_Label_1212
_Label_1212:
! THEN...
	mov	2086,r13		! source line 2086
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-288],r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1213:
! IF STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0IF",r10
!   _temp_1217 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if _temp_1217 <= sizeInBytes then goto _Label_1216		(int)
	load	[r14+-116],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1216
!	jmp	_Label_1215
_Label_1215:
! THEN...
	mov	2089,r13		! source line 2089
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! END IF...
_Label_1216:
! IF STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1219		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1219
!	jmp	_Label_1218
_Label_1218:
! THEN...
	mov	2092,r13		! source line 2092
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0BR",r10
	jmp	_Label_1211
! END IF...
_Label_1219:
! IF STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1224		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1224
	jmp	_Label_1220
_Label_1224:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1228 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1227 = *_temp_1228  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1227) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1229 = _temp_1227 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_1230 = _temp_1229 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1226 = *_temp_1230  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   _temp_1225 = _temp_1226 - 1		(int)
	load	[r14+-108],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   if virtPage <= _temp_1225 then goto _Label_1223		(int)
	load	[r14+-264],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1223
	jmp	_Label_1220
_Label_1223:
	mov	2094,r13		! source line 2094
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1233 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1232 = *_temp_1233  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1232) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1234 = _temp_1232 + 32
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
!   Retrieve Result: targetName=_temp_1231  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1231 then goto _Label_1222 else goto _Label_1220
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1220
	jmp	_Label_1222
_Label_1222:
	mov	2094,r13		! source line 2094
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1237 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1236 = *_temp_1237  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1236) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = _temp_1236 + 32
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
!   Retrieve Result: targetName=_temp_1235  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1235 then goto _Label_1221 else goto _Label_1220
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1220
	jmp	_Label_1221
_Label_1220:
! THEN...
	mov	2095,r13		! source line 2095
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,312,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1221:
! SEND STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1240 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1239 = *_temp_1240  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1239) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1241 = _temp_1239 + 32
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
	mov	2098,r13		! source line 2098
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1242 = *_temp_1243  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1242) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1244 = _temp_1242 + 32
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
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
	mov	2099,r13		! source line 2099
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1247 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1246 = *_temp_1247  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1246) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = _temp_1246 + 32
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
!   Retrieve Result: targetName=_temp_1245  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1245 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-292]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   _temp_1249 = &_P_Kernel_fileManager
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
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-276],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-272],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1251		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1251
!	jmp	_Label_1250
_Label_1250:
! THEN...
	mov	2106,r13		! source line 2106
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0BR",r10
	jmp	_Label_1211
! END IF...
_Label_1251:
! END WHILE...
	jmp	_Label_1209
_Label_1211:
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = openFile + 16
	load	[r14+-296],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1252 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-276],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2111,r13		! source line 2111
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
	.word	_Label_1253
	.word	12		! total size of parameters
	.word	308		! frame size = 308
	.word	_Label_1254
	.word	8
	.word	4
	.word	_Label_1255
	.word	12
	.word	4
	.word	_Label_1256
	.word	16
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
	.word	_Label_1263
	.word	-44
	.word	4
	.word	_Label_1264
	.word	-48
	.word	4
	.word	_Label_1265
	.word	-52
	.word	4
	.word	_Label_1266
	.word	-56
	.word	4
	.word	_Label_1267
	.word	-60
	.word	4
	.word	_Label_1268
	.word	-64
	.word	4
	.word	_Label_1269
	.word	-68
	.word	4
	.word	_Label_1270
	.word	-72
	.word	4
	.word	_Label_1271
	.word	-76
	.word	4
	.word	_Label_1272
	.word	-9
	.word	1
	.word	_Label_1273
	.word	-80
	.word	4
	.word	_Label_1274
	.word	-84
	.word	4
	.word	_Label_1275
	.word	-88
	.word	4
	.word	_Label_1276
	.word	-10
	.word	1
	.word	_Label_1277
	.word	-92
	.word	4
	.word	_Label_1278
	.word	-96
	.word	4
	.word	_Label_1279
	.word	-100
	.word	4
	.word	_Label_1280
	.word	-104
	.word	4
	.word	_Label_1281
	.word	-108
	.word	4
	.word	_Label_1282
	.word	-112
	.word	4
	.word	_Label_1283
	.word	-116
	.word	4
	.word	_Label_1284
	.word	-120
	.word	4
	.word	_Label_1285
	.word	-124
	.word	4
	.word	_Label_1286
	.word	-128
	.word	4
	.word	_Label_1287
	.word	-132
	.word	4
	.word	_Label_1288
	.word	-136
	.word	4
	.word	_Label_1289
	.word	-140
	.word	4
	.word	_Label_1290
	.word	-144
	.word	4
	.word	_Label_1291
	.word	-148
	.word	4
	.word	_Label_1292
	.word	-152
	.word	4
	.word	_Label_1293
	.word	-156
	.word	4
	.word	_Label_1294
	.word	-160
	.word	4
	.word	_Label_1295
	.word	-164
	.word	4
	.word	_Label_1296
	.word	-11
	.word	1
	.word	_Label_1297
	.word	-168
	.word	4
	.word	_Label_1298
	.word	-172
	.word	4
	.word	_Label_1299
	.word	-176
	.word	4
	.word	_Label_1300
	.word	-12
	.word	1
	.word	_Label_1301
	.word	-180
	.word	4
	.word	_Label_1302
	.word	-184
	.word	4
	.word	_Label_1303
	.word	-188
	.word	4
	.word	_Label_1304
	.word	-192
	.word	4
	.word	_Label_1305
	.word	-196
	.word	4
	.word	_Label_1306
	.word	-200
	.word	4
	.word	_Label_1307
	.word	-204
	.word	4
	.word	_Label_1308
	.word	-208
	.word	4
	.word	_Label_1309
	.word	-212
	.word	4
	.word	_Label_1310
	.word	-216
	.word	4
	.word	_Label_1311
	.word	-220
	.word	4
	.word	_Label_1312
	.word	-224
	.word	4
	.word	_Label_1313
	.word	-228
	.word	4
	.word	_Label_1314
	.word	-232
	.word	4
	.word	_Label_1315
	.word	-236
	.word	4
	.word	_Label_1316
	.word	-240
	.word	4
	.word	_Label_1317
	.word	-244
	.word	4
	.word	_Label_1318
	.word	-248
	.word	4
	.word	_Label_1319
	.word	-252
	.word	4
	.word	_Label_1320
	.word	-256
	.word	4
	.word	_Label_1321
	.word	-260
	.word	4
	.word	_Label_1322
	.word	-264
	.word	4
	.word	_Label_1323
	.word	-268
	.word	4
	.word	_Label_1324
	.word	-272
	.word	4
	.word	_Label_1325
	.word	-276
	.word	4
	.word	_Label_1326
	.word	-280
	.word	4
	.word	_Label_1327
	.word	-284
	.word	4
	.word	_Label_1328
	.word	-288
	.word	4
	.word	_Label_1329
	.word	-292
	.word	4
	.word	_Label_1330
	.word	-296
	.word	4
	.word	_Label_1331
	.word	-13
	.word	1
	.word	0
_Label_1253:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1255:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1252\0"
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
	.ascii	"_temp_1246\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1272:
	.byte	'C'
	.ascii	"_temp_1235\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1276:
	.byte	'C'
	.ascii	"_temp_1231\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1296:
	.byte	'C'
	.ascii	"_temp_1195\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1300:
	.byte	'C'
	.ascii	"_temp_1191\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1322:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1323:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1324:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1325:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1326:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1327:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1329:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1330:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1331:
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
_Label_3900:
	push	r0
	sub	r1,1,r1
	bne	_Label_3900
	mov	2116,r13		! source line 2116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_1332 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1333 = _temp_1332 + 4
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
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1339		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1339
	jmp	_Label_1334
_Label_1339:
!   if fileDesc < 10 then goto _Label_1338		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1338
	jmp	_Label_1334
_Label_1338:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1342 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1341 = *_temp_1342  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1341) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = _temp_1341 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1343 [fileDesc ] into _temp_1344
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
!   Data Move: _temp_1340 = *_temp_1344  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1340) then goto _Label_1334
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1334
!	jmp	_Label_1337
_Label_1337:
!   if newCurrentPos >= -1 then goto _Label_1336		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1336
	jmp	_Label_1334
_Label_1336:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1348 = *_temp_1349  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1348) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = _temp_1348 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1350 [fileDesc ] into _temp_1351
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
!   Data Move: _temp_1347 = *_temp_1351  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1347) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1352 = _temp_1347 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1346 = *_temp_1352  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1346) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1353 = _temp_1346 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1345 = *_temp_1353  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1345 then goto _Label_1335		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1335
!	jmp	_Label_1334
_Label_1334:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_1354 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1355 = _temp_1354 + 4
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
	mov	2122,r13		! source line 2122
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1335:
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1357 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1356 = *_temp_1357  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1356) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1358 = _temp_1356 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1358 [fileDesc ] into _temp_1359
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
!   Data Move: openFile = *_temp_1359  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1361		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1361
!	jmp	_Label_1360
_Label_1360:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1365 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1364 = *_temp_1365  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1364) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1366 = _temp_1364 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1363 = *_temp_1366  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1362 = _temp_1363  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_1367 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1368 = _temp_1367 + 4
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
	mov	2128,r13		! source line 2128
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1371 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1370 = *_temp_1371  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1370) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _temp_1370 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1369 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1369  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1361:
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1373 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1373 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   _temp_1374 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1375 = _temp_1374 + 4
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
	mov	2132,r13		! source line 2132
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
	.word	_Label_1376
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1377
	.word	8
	.word	4
	.word	_Label_1378
	.word	12
	.word	4
	.word	_Label_1379
	.word	-12
	.word	4
	.word	_Label_1380
	.word	-16
	.word	4
	.word	_Label_1381
	.word	-20
	.word	4
	.word	_Label_1382
	.word	-24
	.word	4
	.word	_Label_1383
	.word	-28
	.word	4
	.word	_Label_1384
	.word	-32
	.word	4
	.word	_Label_1385
	.word	-36
	.word	4
	.word	_Label_1386
	.word	-40
	.word	4
	.word	_Label_1387
	.word	-44
	.word	4
	.word	_Label_1388
	.word	-48
	.word	4
	.word	_Label_1389
	.word	-52
	.word	4
	.word	_Label_1390
	.word	-56
	.word	4
	.word	_Label_1391
	.word	-60
	.word	4
	.word	_Label_1392
	.word	-64
	.word	4
	.word	_Label_1393
	.word	-68
	.word	4
	.word	_Label_1394
	.word	-72
	.word	4
	.word	_Label_1395
	.word	-76
	.word	4
	.word	_Label_1396
	.word	-80
	.word	4
	.word	_Label_1397
	.word	-84
	.word	4
	.word	_Label_1398
	.word	-88
	.word	4
	.word	_Label_1399
	.word	-92
	.word	4
	.word	_Label_1400
	.word	-96
	.word	4
	.word	_Label_1401
	.word	-100
	.word	4
	.word	_Label_1402
	.word	-104
	.word	4
	.word	_Label_1403
	.word	-108
	.word	4
	.word	_Label_1404
	.word	-112
	.word	4
	.word	_Label_1405
	.word	-116
	.word	4
	.word	_Label_1406
	.word	-120
	.word	4
	.word	_Label_1407
	.word	-124
	.word	4
	.word	_Label_1408
	.word	-128
	.word	4
	.word	_Label_1409
	.word	-132
	.word	4
	.word	_Label_1410
	.word	-136
	.word	4
	.word	_Label_1411
	.word	-140
	.word	4
	.word	_Label_1412
	.word	-144
	.word	4
	.word	_Label_1413
	.word	-148
	.word	4
	.word	_Label_1414
	.word	-152
	.word	4
	.word	_Label_1415
	.word	-156
	.word	4
	.word	0
_Label_1376:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1377:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1378:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1355\0"
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
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1415:
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
_Label_3901:
	push	r0
	sub	r1,1,r1
	bne	_Label_3901
	mov	2137,r13		! source line 2137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1419		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1419
	jmp	_Label_1416
_Label_1419:
!   if fileDesc < 10 then goto _Label_1418		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1418
	jmp	_Label_1416
_Label_1418:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1421 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1421) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1423 = _temp_1421 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1423 [fileDesc ] into _temp_1424
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
!   Data Move: _temp_1420 = *_temp_1424  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1420) then goto _Label_1416
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1416
	jmp	_Label_1417
_Label_1416:
	jmp	_Label_1425
_Label_1417:
! ELSE...
	mov	2140,r13		! source line 2140
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1427 = *_temp_1428  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1427) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = _temp_1427 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1429 [fileDesc ] into _temp_1430
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
!   Data Move: _temp_1426 = *_temp_1430  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1431 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1426  sizeInBytes=4
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
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1432 = *_temp_1433  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1432) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1434 = _temp_1432 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1434 [fileDesc ] into _temp_1435
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
!   Data Move: *_temp_1435 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1425:
! RETURN STATEMENT...
	mov	2138,r13		! source line 2138
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1437
	.word	8
	.word	4
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	_Label_1449
	.word	-56
	.word	4
	.word	_Label_1450
	.word	-60
	.word	4
	.word	_Label_1451
	.word	-64
	.word	4
	.word	_Label_1452
	.word	-68
	.word	4
	.word	0
_Label_1436:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1420\0"
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
_Label_3902:
	push	r0
	sub	r1,1,r1
	bne	_Label_3902
	mov	2733,r13		! source line 2733
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1453 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1453  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   _temp_1454 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1454) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1456 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1456) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1455 = *_temp_1456  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1454 = _temp_1455  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   _temp_1457 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1457) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1459 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1459) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1458 = *_temp_1459  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1457 = _temp_1458  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   _temp_1460 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1460) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1462 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1462) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1461 = *_temp_1462  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1460 = _temp_1461  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2740,r13		! source line 2740
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
	.word	_Label_1463
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1464
	.word	8
	.word	4
	.word	_Label_1465
	.word	12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-9
	.word	1
	.word	_Label_1468
	.word	-20
	.word	4
	.word	_Label_1469
	.word	-24
	.word	4
	.word	_Label_1470
	.word	-10
	.word	1
	.word	_Label_1471
	.word	-28
	.word	4
	.word	_Label_1472
	.word	-32
	.word	4
	.word	_Label_1473
	.word	-11
	.word	1
	.word	_Label_1474
	.word	-36
	.word	4
	.word	_Label_1475
	.word	-12
	.word	1
	.word	_Label_1476
	.word	-40
	.word	4
	.word	_Label_1477
	.word	-44
	.word	4
	.word	0
_Label_1463:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1464:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1465:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1467:
	.byte	'C'
	.ascii	"_temp_1461\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1470:
	.byte	'C'
	.ascii	"_temp_1458\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1473:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1475:
	.byte	'C'
	.ascii	"_temp_1453\0"
	.align
_Label_1476:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1477:
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
_Label_3903:
	push	r0
	sub	r1,1,r1
	bne	_Label_3903
	mov	2743,r13		! source line 2743
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1479 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1478 = *_temp_1479  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2745,r13		! source line 2745
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
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
	.word	_Label_1480
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1481
	.word	8
	.word	4
	.word	_Label_1482
	.word	-12
	.word	4
	.word	_Label_1483
	.word	-16
	.word	4
	.word	0
_Label_1480:
	.ascii	"printFCB\0"
	.align
_Label_1481:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1478\0"
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
_Label_3904:
	push	r0
	sub	r1,1,r1
	bne	_Label_3904
	mov	2748,r13		! source line 2748
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1484 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2749,r13		! source line 2749
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1485 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2750,r13		! source line 2750
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1486 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2751,r13		! source line 2751
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2752,r13		! source line 2752
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
	mov	2752,r13		! source line 2752
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
	.word	_Label_1487
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1488
	.word	8
	.word	4
	.word	_Label_1489
	.word	-12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	0
_Label_1487:
	.ascii	"printOpen\0"
	.align
_Label_1488:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1492
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1492:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1493
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1493:
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
_Label_3905:
	push	r0
	sub	r1,1,r1
	bne	_Label_3905
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1495		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1495
!	jmp	_Label_1494
_Label_1494:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1496 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
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
_Label_1495:
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
	.word	_Label_1498
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1500
	.word	12
	.word	4
	.word	_Label_1501
	.word	-12
	.word	4
	.word	_Label_1502
	.word	-16
	.word	4
	.word	0
_Label_1498:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1499:
	.ascii	"Pself\0"
	.align
_Label_1500:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1496\0"
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
_Label_3906:
	push	r0
	sub	r1,1,r1
	bne	_Label_3906
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
!   if count != 2147483647 then goto _Label_1504		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1504
!	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1505 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
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
_Label_1504:
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
!   if count > 0 then goto _Label_1507		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1507
!	jmp	_Label_1506
_Label_1506:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_1508 = &waitingThreads
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
!   _temp_1509 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1509 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_1510 = &_P_Kernel_readyList
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
_Label_1507:
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
	.word	_Label_1511
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	_Label_1517
	.word	-28
	.word	4
	.word	_Label_1518
	.word	-32
	.word	4
	.word	0
_Label_1511:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1517:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1518:
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
_Label_3907:
	push	r0
	sub	r1,1,r1
	bne	_Label_3907
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
!   if count != -2147483648 then goto _Label_1520		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1520
!	jmp	_Label_1519
_Label_1519:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1521 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
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
_Label_1520:
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
!   if count >= 0 then goto _Label_1523		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1523
!	jmp	_Label_1522
_Label_1522:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_1524 = &waitingThreads
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
_Label_1523:
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
	.word	_Label_1525
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	-12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-20
	.word	4
	.word	0
_Label_1525:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1529:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1530
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1530:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1531
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1531:
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
_Label_3908:
	push	r0
	sub	r1,1,r1
	bne	_Label_3908
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
	.word	_Label_1533
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1534
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1535
	.word	-12
	.word	4
	.word	0
_Label_1533:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1534:
	.ascii	"Pself\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1532\0"
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
_Label_3909:
	push	r0
	sub	r1,1,r1
	bne	_Label_3909
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1537		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1537
!	jmp	_Label_1536
_Label_1536:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1538 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1538  sizeInBytes=4
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
_Label_1537:
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
!   if heldBy == 0 then goto _Label_1542		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1542
!   _temp_1541 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1543
_Label_1542:
!   _temp_1541 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1543:
!   if _temp_1541 then goto _Label_1540 else goto _Label_1539
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1539
	jmp	_Label_1540
_Label_1539:
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
	jmp	_Label_1544
_Label_1540:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_1545 = &waitingThreads
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
_Label_1544:
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
	.word	_Label_1546
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1548
	.word	-16
	.word	4
	.word	_Label_1549
	.word	-9
	.word	1
	.word	_Label_1550
	.word	-20
	.word	4
	.word	_Label_1551
	.word	-24
	.word	4
	.word	0
_Label_1546:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1547:
	.ascii	"Pself\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1549:
	.byte	'C'
	.ascii	"_temp_1541\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1551:
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
_Label_3910:
	push	r0
	sub	r1,1,r1
	bne	_Label_3910
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1553		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1553
!	jmp	_Label_1552
_Label_1552:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1554 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
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
_Label_1553:
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
!   _temp_1555 = &waitingThreads
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
!   if t == 0 then goto _Label_1557		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1557
!	jmp	_Label_1556
_Label_1556:
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
!   _temp_1558 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1558 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_1559 = &_P_Kernel_readyList
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
	jmp	_Label_1560
_Label_1557:
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
_Label_1560:
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
	.word	_Label_1561
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	-12
	.word	4
	.word	_Label_1564
	.word	-16
	.word	4
	.word	_Label_1565
	.word	-20
	.word	4
	.word	_Label_1566
	.word	-24
	.word	4
	.word	_Label_1567
	.word	-28
	.word	4
	.word	_Label_1568
	.word	-32
	.word	4
	.word	0
_Label_1561:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1567:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1568:
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
_Label_3911:
	push	r0
	sub	r1,1,r1
	bne	_Label_3911
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1571		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1571
!	jmp	_Label_1570
_Label_1570:
!   _temp_1569 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1572
_Label_1571:
!   _temp_1569 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1572:
!   ReturnResult: _temp_1569  (sizeInBytes=1)
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
	.word	_Label_1573
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1575
	.word	-9
	.word	1
	.word	0
_Label_1573:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1574:
	.ascii	"Pself\0"
	.align
_Label_1575:
	.byte	'C'
	.ascii	"_temp_1569\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1576
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1576:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1577
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1577:
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
_Label_3912:
	push	r0
	sub	r1,1,r1
	bne	_Label_3912
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
	.word	_Label_1579
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1580
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1581
	.word	-12
	.word	4
	.word	0
_Label_1579:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1580:
	.ascii	"Pself\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1578\0"
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
_Label_3913:
	push	r0
	sub	r1,1,r1
	bne	_Label_3913
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
!   Retrieve Result: targetName=_temp_1584  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1584 then goto _Label_1583 else goto _Label_1582
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1582
	jmp	_Label_1583
_Label_1582:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1585 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
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
_Label_1583:
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
!   _temp_1586 = &waitingThreads
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
	.word	_Label_1587
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1589
	.word	12
	.word	4
	.word	_Label_1590
	.word	-16
	.word	4
	.word	_Label_1591
	.word	-20
	.word	4
	.word	_Label_1592
	.word	-9
	.word	1
	.word	_Label_1593
	.word	-24
	.word	4
	.word	0
_Label_1587:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1588:
	.ascii	"Pself\0"
	.align
_Label_1589:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1592:
	.byte	'C'
	.ascii	"_temp_1584\0"
	.align
_Label_1593:
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
_Label_3914:
	push	r0
	sub	r1,1,r1
	bne	_Label_3914
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
!   Retrieve Result: targetName=_temp_1596  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1596 then goto _Label_1595 else goto _Label_1594
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1594
	jmp	_Label_1595
_Label_1594:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1597 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
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
_Label_1595:
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
!   _temp_1598 = &waitingThreads
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
!   if t == 0 then goto _Label_1600		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1600
!	jmp	_Label_1599
_Label_1599:
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
!   _temp_1601 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1601 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_1602 = &_P_Kernel_readyList
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
_Label_1600:
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
	.word	_Label_1603
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	-16
	.word	4
	.word	_Label_1607
	.word	-20
	.word	4
	.word	_Label_1608
	.word	-24
	.word	4
	.word	_Label_1609
	.word	-28
	.word	4
	.word	_Label_1610
	.word	-9
	.word	1
	.word	_Label_1611
	.word	-32
	.word	4
	.word	_Label_1612
	.word	-36
	.word	4
	.word	0
_Label_1603:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1610:
	.byte	'C'
	.ascii	"_temp_1596\0"
	.align
_Label_1611:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1612:
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
_Label_3915:
	push	r0
	sub	r1,1,r1
	bne	_Label_3915
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
!   Retrieve Result: targetName=_temp_1615  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1615 then goto _Label_1614 else goto _Label_1613
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1613
	jmp	_Label_1614
_Label_1613:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1616 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1616  sizeInBytes=4
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
_Label_1614:
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
_Label_1617:
!	jmp	_Label_1618
_Label_1618:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_1620 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1621
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1621
	jmp	_Label_1622
_Label_1621:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_1619
! END IF...
_Label_1622:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1623 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_1624 = &_P_Kernel_readyList
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
	jmp	_Label_1617
_Label_1619:
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
	.word	_Label_1625
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1626
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1627
	.word	12
	.word	4
	.word	_Label_1628
	.word	-16
	.word	4
	.word	_Label_1629
	.word	-20
	.word	4
	.word	_Label_1630
	.word	-24
	.word	4
	.word	_Label_1631
	.word	-28
	.word	4
	.word	_Label_1632
	.word	-9
	.word	1
	.word	_Label_1633
	.word	-32
	.word	4
	.word	_Label_1634
	.word	-36
	.word	4
	.word	0
_Label_1625:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1626:
	.ascii	"Pself\0"
	.align
_Label_1627:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1632:
	.byte	'C'
	.ascii	"_temp_1615\0"
	.align
_Label_1633:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1634:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1635
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
_Label_1635:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1636
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1636:
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
_Label_3916:
	push	r0
	sub	r1,1,r1
	bne	_Label_3916
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
!   _temp_1637 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1637) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1637 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_1638 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1638 [0 ] into _temp_1639
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
!   Data Move: *_temp_1639 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_1640 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1640 [999 ] into _temp_1641
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
!   Data Move: *_temp_1641 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_1642 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1642 [999 ] into _temp_1643
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
!   stackTop = _temp_1643		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_1644 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1646 = &_temp_1645
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1646 = _temp_1646 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1648:
!   Data Move: *_temp_1646 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1646 = _temp_1646 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1647 = _temp_1647 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1647) then goto _Label_1648
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1648
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1649 = &_temp_1645
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3917
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3917:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1644 = *_temp_1649  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3918:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3918
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
!   _temp_1650 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1652 = &_temp_1651
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1652 = _temp_1652 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1654:
!   Data Move: *_temp_1652 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1652 = _temp_1652 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1653 = _temp_1653 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1653) then goto _Label_1654
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1654
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1655 = &_temp_1651
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3919
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3919:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1650 = *_temp_1655  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3920:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3920
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
	.word	_Label_1656
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1657
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1658
	.word	12
	.word	4
	.word	_Label_1659
	.word	-12
	.word	4
	.word	_Label_1660
	.word	-16
	.word	4
	.word	_Label_1661
	.word	-20
	.word	4
	.word	_Label_1662
	.word	-84
	.word	64
	.word	_Label_1663
	.word	-88
	.word	4
	.word	_Label_1664
	.word	-92
	.word	4
	.word	_Label_1665
	.word	-96
	.word	4
	.word	_Label_1666
	.word	-100
	.word	4
	.word	_Label_1667
	.word	-156
	.word	56
	.word	_Label_1668
	.word	-160
	.word	4
	.word	_Label_1669
	.word	-164
	.word	4
	.word	_Label_1670
	.word	-168
	.word	4
	.word	_Label_1671
	.word	-172
	.word	4
	.word	_Label_1672
	.word	-176
	.word	4
	.word	_Label_1673
	.word	-180
	.word	4
	.word	_Label_1674
	.word	-184
	.word	4
	.word	_Label_1675
	.word	-188
	.word	4
	.word	0
_Label_1656:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1657:
	.ascii	"Pself\0"
	.align
_Label_1658:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1637\0"
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
_Label_3921:
	push	r0
	sub	r1,1,r1
	bne	_Label_3921
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
!   _temp_1676 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1676  (sizeInBytes=4)
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
!   _temp_1678 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1677  sizeInBytes=4
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
	.word	_Label_1679
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	12
	.word	4
	.word	_Label_1682
	.word	16
	.word	4
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
	.word	0
_Label_1679:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1686:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1687:
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
_Label_3922:
	push	r0
	sub	r1,1,r1
	bne	_Label_3922
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1690 == _P_Kernel_currentThread then goto _Label_1689		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1689
!	jmp	_Label_1688
_Label_1688:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1691 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
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
_Label_1689:
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
!   _temp_1692 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1694		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1694
!	jmp	_Label_1693
_Label_1693:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1696		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1696
!	jmp	_Label_1695
_Label_1695:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
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
_Label_1696:
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
!   _temp_1699 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1698  sizeInBytes=4
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
_Label_1694:
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
	.word	_Label_1700
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1702
	.word	-12
	.word	4
	.word	_Label_1703
	.word	-16
	.word	4
	.word	_Label_1704
	.word	-20
	.word	4
	.word	_Label_1705
	.word	-24
	.word	4
	.word	_Label_1706
	.word	-28
	.word	4
	.word	_Label_1707
	.word	-32
	.word	4
	.word	_Label_1708
	.word	-36
	.word	4
	.word	_Label_1709
	.word	-40
	.word	4
	.word	_Label_1710
	.word	-44
	.word	4
	.word	0
_Label_1700:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1701:
	.ascii	"Pself\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1708:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1710:
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
_Label_3923:
	push	r0
	sub	r1,1,r1
	bne	_Label_3923
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1712		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1712
!	jmp	_Label_1711
_Label_1711:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1713 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
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
_Label_1712:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1716 == _P_Kernel_currentThread then goto _Label_1715		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1715
!	jmp	_Label_1714
_Label_1714:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1717 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1717  sizeInBytes=4
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
_Label_1715:
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
!   _temp_1718 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1719
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1719
	jmp	_Label_1720
_Label_1719:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1721 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1721  sizeInBytes=4
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
_Label_1720:
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
	.word	_Label_1722
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1723
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1729
	.word	-32
	.word	4
	.word	0
_Label_1722:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1723:
	.ascii	"Pself\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1721\0"
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
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1729:
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
_Label_3924:
	push	r0
	sub	r1,1,r1
	bne	_Label_3924
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_1733 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1733 [0 ] into _temp_1734
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
!   Data Move: _temp_1732 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1732 == 606348324 then goto _Label_1731		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1731
!	jmp	_Label_1730
_Label_1730:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1735 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
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
	jmp	_Label_1736
_Label_1731:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_1740 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1740 [999 ] into _temp_1741
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
!   Data Move: _temp_1739 = *_temp_1741  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1739 == 606348324 then goto _Label_1738		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1738
!	jmp	_Label_1737
_Label_1737:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1742 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
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
_Label_1738:
! END IF...
_Label_1736:
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
	.word	_Label_1743
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1745
	.word	-12
	.word	4
	.word	_Label_1746
	.word	-16
	.word	4
	.word	_Label_1747
	.word	-20
	.word	4
	.word	_Label_1748
	.word	-24
	.word	4
	.word	_Label_1749
	.word	-28
	.word	4
	.word	_Label_1750
	.word	-32
	.word	4
	.word	_Label_1751
	.word	-36
	.word	4
	.word	_Label_1752
	.word	-40
	.word	4
	.word	0
_Label_1743:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1744:
	.ascii	"Pself\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1739\0"
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
_Label_3925:
	push	r0
	sub	r1,1,r1
	bne	_Label_3925
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
!   _temp_1753 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
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
!   _temp_1754 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1756 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1757 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
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
!   _temp_1762 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1763 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1762  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1758:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1763 then goto _Label_1761		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1761
_Label_1759:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1764 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1764  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1765 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1766 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1766  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1768 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1768 [i ] into _temp_1769
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
!   Data Move: _temp_1767 = *_temp_1769  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1770 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1772 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1772 [i ] into _temp_1773
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
!   Data Move: _temp_1771 = *_temp_1773  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1774 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1760:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1758
! END FOR
_Label_1761:
! CALL STATEMENT...
!   _temp_1775 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-116]
!   _temp_1776 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1776  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1777 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-108]
!   _temp_1779 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1779 [0 ] into _temp_1780
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
!   _temp_1778 = _temp_1780		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1778  sizeInBytes=4
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
	be	_Label_1783
	cmp	r1,2
	be	_Label_1784
	cmp	r1,3
	be	_Label_1785
	cmp	r1,4
	be	_Label_1786
	cmp	r1,5
	be	_Label_1787
	jmp	_Label_1781
! CASE 1...
_Label_1783:
! CALL STATEMENT...
!   _temp_1788 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1788  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_1782
! CASE 2...
_Label_1784:
! CALL STATEMENT...
!   _temp_1789 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1789  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_1782
! CASE 3...
_Label_1785:
! CALL STATEMENT...
!   _temp_1790 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1790  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_1782
! CASE 4...
_Label_1786:
! CALL STATEMENT...
!   _temp_1791 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_1782
! CASE 5...
_Label_1787:
! CALL STATEMENT...
!   _temp_1792 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1792  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_1782
! DEFAULT CASE...
_Label_1781:
! CALL STATEMENT...
!   _temp_1793 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
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
_Label_1782:
! CALL STATEMENT...
!   _temp_1794 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
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
!   _temp_1795 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
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
!   _temp_1800 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1801 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1800  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1796:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1801 then goto _Label_1799		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1799
_Label_1797:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1802 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1802  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1803 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1803  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1804 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1806 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1806 [i ] into _temp_1807
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
!   Data Move: _temp_1805 = *_temp_1807  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1808 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1810 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1810 [i ] into _temp_1811
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
!   Data Move: _temp_1809 = *_temp_1811  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1812 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1812  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1798:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1796
! END FOR
_Label_1799:
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
	.word	_Label_1813
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1815
	.word	-12
	.word	4
	.word	_Label_1816
	.word	-16
	.word	4
	.word	_Label_1817
	.word	-20
	.word	4
	.word	_Label_1818
	.word	-24
	.word	4
	.word	_Label_1819
	.word	-28
	.word	4
	.word	_Label_1820
	.word	-32
	.word	4
	.word	_Label_1821
	.word	-36
	.word	4
	.word	_Label_1822
	.word	-40
	.word	4
	.word	_Label_1823
	.word	-44
	.word	4
	.word	_Label_1824
	.word	-48
	.word	4
	.word	_Label_1825
	.word	-52
	.word	4
	.word	_Label_1826
	.word	-56
	.word	4
	.word	_Label_1827
	.word	-60
	.word	4
	.word	_Label_1828
	.word	-64
	.word	4
	.word	_Label_1829
	.word	-68
	.word	4
	.word	_Label_1830
	.word	-72
	.word	4
	.word	_Label_1831
	.word	-76
	.word	4
	.word	_Label_1832
	.word	-80
	.word	4
	.word	_Label_1833
	.word	-84
	.word	4
	.word	_Label_1834
	.word	-88
	.word	4
	.word	_Label_1835
	.word	-92
	.word	4
	.word	_Label_1836
	.word	-96
	.word	4
	.word	_Label_1837
	.word	-100
	.word	4
	.word	_Label_1838
	.word	-104
	.word	4
	.word	_Label_1839
	.word	-108
	.word	4
	.word	_Label_1840
	.word	-112
	.word	4
	.word	_Label_1841
	.word	-116
	.word	4
	.word	_Label_1842
	.word	-120
	.word	4
	.word	_Label_1843
	.word	-124
	.word	4
	.word	_Label_1844
	.word	-128
	.word	4
	.word	_Label_1845
	.word	-132
	.word	4
	.word	_Label_1846
	.word	-136
	.word	4
	.word	_Label_1847
	.word	-140
	.word	4
	.word	_Label_1848
	.word	-144
	.word	4
	.word	_Label_1849
	.word	-148
	.word	4
	.word	_Label_1850
	.word	-152
	.word	4
	.word	_Label_1851
	.word	-156
	.word	4
	.word	_Label_1852
	.word	-160
	.word	4
	.word	_Label_1853
	.word	-164
	.word	4
	.word	_Label_1854
	.word	-168
	.word	4
	.word	_Label_1855
	.word	-172
	.word	4
	.word	_Label_1856
	.word	-176
	.word	4
	.word	_Label_1857
	.word	-180
	.word	4
	.word	_Label_1858
	.word	-184
	.word	4
	.word	_Label_1859
	.word	-188
	.word	4
	.word	_Label_1860
	.word	-192
	.word	4
	.word	_Label_1861
	.word	-196
	.word	4
	.word	0
_Label_1813:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1814:
	.ascii	"Pself\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1861:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1862
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1862:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1863
	.word	_sourceFileName
	.word	191		! line number
	.word	45860		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1863:
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
_Label_3926:
	push	r0
	sub	r1,1,r1
	bne	_Label_3926
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1864 = _StringConst_79
	set	_StringConst_79,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
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
!   _temp_1865 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50068,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1867 = &_temp_1866
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1867 = _temp_1867 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1869 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3927:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3927
!   _temp_1869 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	11,r1
	store	r1,[r14+-4252]
_Label_1871:
!   Data Move: *_temp_1867 = _temp_1869  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3928:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3928
!   _temp_1867 = _temp_1867 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1868 = _temp_1868 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1868) then goto _Label_1871
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1871
!   Initialize the array size...
	mov	11,r1
	set	-50064,r2
	store	r1,[r14+r2]
!   _temp_1872 = &_temp_1866
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 11
	set	-50068,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3929
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3929:
!   make sure array has size 11
	load	[r14+-80],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1865 = *_temp_1872  (sizeInBytes=45808)
	load	[r14+-80],r5
	set	-50068,r4
	load	[r14+r4],r4
	mov	11452,r3
_Label_3930:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3930
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
!   _temp_1875 = &tmLock
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
!   _temp_1877 = &threadFreed
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
!   _temp_1882 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1883 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1882  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-50076,r2
	store	r1,[r14+r2]
_Label_1878:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1883 then goto _Label_1881		
	set	-50076,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1881
_Label_1879:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_1884 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-48]
!   _temp_1885 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1885 [i ] into _temp_1886
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
!   Prepare Argument: offset=12  value=_temp_1884  sizeInBytes=4
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
!   _temp_1887 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1887 [i ] into _temp_1888
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
!   _temp_1889 = _temp_1888 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1889 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_1891 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1891 [i ] into _temp_1892
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
!   _temp_1890 = _temp_1892		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1893 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1890  sizeInBytes=4
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
_Label_1880:
!   i = i + 1
	set	-50076,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
	jmp	_Label_1878
! END FOR
_Label_1881:
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
	.word	_Label_1894
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_1895
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1896
	.word	-12
	.word	4
	.word	_Label_1897
	.word	-16
	.word	4
	.word	_Label_1898
	.word	-20
	.word	4
	.word	_Label_1899
	.word	-24
	.word	4
	.word	_Label_1900
	.word	-28
	.word	4
	.word	_Label_1901
	.word	-32
	.word	4
	.word	_Label_1902
	.word	-36
	.word	4
	.word	_Label_1903
	.word	-40
	.word	4
	.word	_Label_1904
	.word	-44
	.word	4
	.word	_Label_1905
	.word	-48
	.word	4
	.word	_Label_1906
	.word	-52
	.word	4
	.word	_Label_1907
	.word	-56
	.word	4
	.word	_Label_1908
	.word	-60
	.word	4
	.word	_Label_1909
	.word	-64
	.word	4
	.word	_Label_1910
	.word	-68
	.word	4
	.word	_Label_1911
	.word	-72
	.word	4
	.word	_Label_1912
	.word	-76
	.word	4
	.word	_Label_1913
	.word	-80
	.word	4
	.word	_Label_1914
	.word	-84
	.word	4
	.word	_Label_1915
	.word	-4248
	.word	4164
	.word	_Label_1916
	.word	-4252
	.word	4
	.word	_Label_1917
	.word	-4256
	.word	4
	.word	_Label_1918
	.word	-50064
	.word	45808
	.word	_Label_1919
	.word	-50068
	.word	4
	.word	_Label_1920
	.word	-50072
	.word	4
	.word	_Label_1921
	.word	-50076
	.word	4
	.word	0
_Label_1894:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1895:
	.ascii	"Pself\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1921:
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
_Label_3931:
	push	r0
	sub	r1,1,r1
	bne	_Label_3931
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
!   _temp_1922 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1922  sizeInBytes=4
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
!   _temp_1927 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1928 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1927  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1923:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1928 then goto _Label_1926		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1926
_Label_1924:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1929 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
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
!   _temp_1930 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1930  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1932 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1932 [i ] into _temp_1933
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
!   _temp_1931 = _temp_1933		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1931  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_187_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1925:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1923
! END FOR
_Label_1926:
! CALL STATEMENT...
!   _temp_1934 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1934  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_1935 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1936 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1935  sizeInBytes=4
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
	.word	_Label_1937
	.word	4		! total size of parameters
	.word	60		! frame size = 60
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
	.word	_Label_1942
	.word	-24
	.word	4
	.word	_Label_1943
	.word	-28
	.word	4
	.word	_Label_1944
	.word	-32
	.word	4
	.word	_Label_1945
	.word	-36
	.word	4
	.word	_Label_1946
	.word	-40
	.word	4
	.word	_Label_1947
	.word	-44
	.word	4
	.word	_Label_1948
	.word	-48
	.word	4
	.word	_Label_1949
	.word	-52
	.word	4
	.word	_Label_1950
	.word	-56
	.word	4
	.word	_Label_1951
	.word	-60
	.word	4
	.word	0
_Label_1937:
	.ascii	"ThreadManager"
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
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1951:
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
_Label_3932:
	push	r0
	sub	r1,1,r1
	bne	_Label_3932
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1952 = &tmLock
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
_Label_1953:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1956 = &freeList
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
!   if result==true then goto _Label_1954 else goto _Label_1955
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1955
	jmp	_Label_1954
_Label_1954:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_1957 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1958 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1957  sizeInBytes=4
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
	jmp	_Label_1953
_Label_1955:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1959 = &freeList
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
!   _temp_1960 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1960 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_1961 = &tmLock
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
	.word	_Label_1962
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1964
	.word	-12
	.word	4
	.word	_Label_1965
	.word	-16
	.word	4
	.word	_Label_1966
	.word	-20
	.word	4
	.word	_Label_1967
	.word	-24
	.word	4
	.word	_Label_1968
	.word	-28
	.word	4
	.word	_Label_1969
	.word	-32
	.word	4
	.word	_Label_1970
	.word	-36
	.word	4
	.word	_Label_1971
	.word	-40
	.word	4
	.word	0
_Label_1962:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1963:
	.ascii	"Pself\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1971:
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
_Label_3933:
	push	r0
	sub	r1,1,r1
	bne	_Label_3933
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1972 = &tmLock
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
!   _temp_1973 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1973 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_1974 = &freeList
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
!   _temp_1975 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1976 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1975  sizeInBytes=4
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
!   _temp_1977 = &tmLock
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
	.word	_Label_1978
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1980
	.word	12
	.word	4
	.word	_Label_1981
	.word	-12
	.word	4
	.word	_Label_1982
	.word	-16
	.word	4
	.word	_Label_1983
	.word	-20
	.word	4
	.word	_Label_1984
	.word	-24
	.word	4
	.word	_Label_1985
	.word	-28
	.word	4
	.word	_Label_1986
	.word	-32
	.word	4
	.word	0
_Label_1978:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1979:
	.ascii	"Pself\0"
	.align
_Label_1980:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1987
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1987:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1988
	.word	_sourceFileName
	.word	212		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1988:
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
_Label_3934:
	push	r0
	sub	r1,1,r1
	bne	_Label_3934
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
_Label_3935:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3935
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1990 = &addrSpace
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
!   _temp_1991 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1993 = &_temp_1992
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1993 = _temp_1993 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1995:
!   Data Move: *_temp_1993 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1993 = _temp_1993 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1994 = _temp_1994 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1994) then goto _Label_1995
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1995
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1996 = &_temp_1992
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3936
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3936:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1991 = *_temp_1996  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3937:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3937
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
	.word	_Label_1997
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	-12
	.word	4
	.word	_Label_2000
	.word	-16
	.word	4
	.word	_Label_2001
	.word	-20
	.word	4
	.word	_Label_2002
	.word	-64
	.word	44
	.word	_Label_2003
	.word	-68
	.word	4
	.word	_Label_2004
	.word	-72
	.word	4
	.word	_Label_2005
	.word	-76
	.word	4
	.word	0
_Label_1997:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1989\0"
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
_Label_3938:
	push	r0
	sub	r1,1,r1
	bne	_Label_3938
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2006) then goto _runtimeErrorNullPointer
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
!   _temp_2007 = &addrSpace
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
!   _temp_2008 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
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
	.word	_Label_2009
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2011
	.word	-12
	.word	4
	.word	_Label_2012
	.word	-16
	.word	4
	.word	_Label_2013
	.word	-20
	.word	4
	.word	0
_Label_2009:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2010:
	.ascii	"Pself\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2006\0"
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
_Label_3939:
	push	r0
	sub	r1,1,r1
	bne	_Label_3939
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2014 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2016 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
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
!   _temp_2017 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2019		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2019
!	jmp	_Label_2018
_Label_2018:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2020 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2020  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2021
_Label_2019:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2023		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2023
!	jmp	_Label_2022
_Label_2022:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2024 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2025
_Label_2023:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2027		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2027
!	jmp	_Label_2026
_Label_2026:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2028 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2028  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2029
_Label_2027:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2030 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
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
_Label_2029:
! END IF...
_Label_2025:
! END IF...
_Label_2021:
! CALL STATEMENT...
!   _temp_2031 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
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
!   _temp_2032 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2032  sizeInBytes=4
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
	.word	_Label_2033
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2035
	.word	-12
	.word	4
	.word	_Label_2036
	.word	-16
	.word	4
	.word	_Label_2037
	.word	-20
	.word	4
	.word	_Label_2038
	.word	-24
	.word	4
	.word	_Label_2039
	.word	-28
	.word	4
	.word	_Label_2040
	.word	-32
	.word	4
	.word	_Label_2041
	.word	-36
	.word	4
	.word	_Label_2042
	.word	-40
	.word	4
	.word	_Label_2043
	.word	-44
	.word	4
	.word	_Label_2044
	.word	-48
	.word	4
	.word	0
_Label_2033:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2034:
	.ascii	"Pself\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2045
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
_Label_2045:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2046
	.word	_sourceFileName
	.word	232		! line number
	.word	1924		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2046:
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
_Label_3940:
	push	r0
	sub	r1,1,r1
	bne	_Label_3940
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_2047 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-2120]
!   NEW ARRAY Constructor...
!   _temp_2049 = &_temp_2048
	add	r14,-2116,r1
	store	r1,[r14+-264]
!   _temp_2049 = _temp_2049 + 4
	load	[r14+-264],r1
	add	r1,4,r1
	store	r1,[r14+-264]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2051 = zeros  (sizeInBytes=168)
	add	r14,-256,r4
	mov	42,r3
_Label_3941:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3941
!   _temp_2051 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-256]
	mov	11,r1
	store	r1,[r14+-260]
_Label_2053:
!   Data Move: *_temp_2049 = _temp_2051  (sizeInBytes=168)
	add	r14,-256,r5
	load	[r14+-264],r4
	mov	42,r3
_Label_3942:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3942
!   _temp_2049 = _temp_2049 + 168
	load	[r14+-264],r1
	add	r1,168,r1
	store	r1,[r14+-264]
!   _temp_2050 = _temp_2050 + -1
	load	[r14+-260],r1
	add	r1,-1,r1
	store	r1,[r14+-260]
!   if intNotZero (_temp_2050) then goto _Label_2053
	load	[r14+-260],r1
	cmp	r1,r0
	bne	_Label_2053
!   Initialize the array size...
	mov	11,r1
	store	r1,[r14+-2116]
!   _temp_2054 = &_temp_2048
	add	r14,-2116,r1
	store	r1,[r14+-84]
!   make sure array has size 11
	load	[r14+-2120],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_3943
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3943:
!   make sure array has size 11
	load	[r14+-84],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2047 = *_temp_2054  (sizeInBytes=1852)
	load	[r14+-84],r5
	load	[r14+-2120],r4
	mov	463,r3
_Label_3944:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3944
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
!   _temp_2056 = &processManagerLock
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
!   _temp_2058 = &aProcessBecameFree
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
!   _temp_2061 = &aProcessDied
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
!   _temp_2066 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2067 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2066  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-2124]
_Label_2062:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2067 then goto _Label_2065		
	load	[r14+-2124],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2065
_Label_2063:
	mov	894,r13		! source line 894
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_2068 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2068 [i ] into _temp_2069
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
!   _temp_2071 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2071 [i ] into _temp_2072
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
!   _temp_2070 = _temp_2072		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2073 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2070  sizeInBytes=4
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
!   _temp_2074 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2074 [i ] into _temp_2075
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
!   _temp_2076 = _temp_2075 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2076 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2064:
!   i = i + 1
	load	[r14+-2124],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2124]
	jmp	_Label_2062
! END FOR
_Label_2065:
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
	.word	_Label_2077
	.word	4		! total size of parameters
	.word	2124		! frame size = 2124
	.word	_Label_2078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2079
	.word	-12
	.word	4
	.word	_Label_2080
	.word	-16
	.word	4
	.word	_Label_2081
	.word	-20
	.word	4
	.word	_Label_2082
	.word	-24
	.word	4
	.word	_Label_2083
	.word	-28
	.word	4
	.word	_Label_2084
	.word	-32
	.word	4
	.word	_Label_2085
	.word	-36
	.word	4
	.word	_Label_2086
	.word	-40
	.word	4
	.word	_Label_2087
	.word	-44
	.word	4
	.word	_Label_2088
	.word	-48
	.word	4
	.word	_Label_2089
	.word	-52
	.word	4
	.word	_Label_2090
	.word	-56
	.word	4
	.word	_Label_2091
	.word	-60
	.word	4
	.word	_Label_2092
	.word	-64
	.word	4
	.word	_Label_2093
	.word	-68
	.word	4
	.word	_Label_2094
	.word	-72
	.word	4
	.word	_Label_2095
	.word	-76
	.word	4
	.word	_Label_2096
	.word	-80
	.word	4
	.word	_Label_2097
	.word	-84
	.word	4
	.word	_Label_2098
	.word	-88
	.word	4
	.word	_Label_2099
	.word	-256
	.word	168
	.word	_Label_2100
	.word	-260
	.word	4
	.word	_Label_2101
	.word	-264
	.word	4
	.word	_Label_2102
	.word	-2116
	.word	1852
	.word	_Label_2103
	.word	-2120
	.word	4
	.word	_Label_2104
	.word	-2124
	.word	4
	.word	0
_Label_2077:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2078:
	.ascii	"Pself\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2104:
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
_Label_3945:
	push	r0
	sub	r1,1,r1
	bne	_Label_3945
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
!   _temp_2105 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
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
!   _temp_2110 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2111 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2110  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2106:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2111 then goto _Label_2109		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2109
_Label_2107:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2112 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2112  sizeInBytes=4
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
!   _temp_2113 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_2114 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2114 [i ] into _temp_2115
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
_Label_2108:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2106
! END FOR
_Label_2109:
! CALL STATEMENT...
!   _temp_2116 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2117 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2118 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2117  sizeInBytes=4
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
	.word	_Label_2119
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2121
	.word	-12
	.word	4
	.word	_Label_2122
	.word	-16
	.word	4
	.word	_Label_2123
	.word	-20
	.word	4
	.word	_Label_2124
	.word	-24
	.word	4
	.word	_Label_2125
	.word	-28
	.word	4
	.word	_Label_2126
	.word	-32
	.word	4
	.word	_Label_2127
	.word	-36
	.word	4
	.word	_Label_2128
	.word	-40
	.word	4
	.word	_Label_2129
	.word	-44
	.word	4
	.word	_Label_2130
	.word	-48
	.word	4
	.word	_Label_2131
	.word	-52
	.word	4
	.word	_Label_2132
	.word	-56
	.word	4
	.word	0
_Label_2119:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2120:
	.ascii	"Pself\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2131:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2132:
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
_Label_3946:
	push	r0
	sub	r1,1,r1
	bne	_Label_3946
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
!   _temp_2133 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
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
!   _temp_2138 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2139 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2138  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2134:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2139 then goto _Label_2137		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2137
_Label_2135:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2140 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2140  sizeInBytes=4
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
!   _temp_2141 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2141 [i ] into _temp_2142
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
_Label_2136:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2134
! END FOR
_Label_2137:
! CALL STATEMENT...
!   _temp_2143 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2143  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_2144 = _function_186_PrintObjectAddr
	set	_function_186_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2145 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2144  sizeInBytes=4
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
	.word	_Label_2146
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2148
	.word	-12
	.word	4
	.word	_Label_2149
	.word	-16
	.word	4
	.word	_Label_2150
	.word	-20
	.word	4
	.word	_Label_2151
	.word	-24
	.word	4
	.word	_Label_2152
	.word	-28
	.word	4
	.word	_Label_2153
	.word	-32
	.word	4
	.word	_Label_2154
	.word	-36
	.word	4
	.word	_Label_2155
	.word	-40
	.word	4
	.word	_Label_2156
	.word	-44
	.word	4
	.word	_Label_2157
	.word	-48
	.word	4
	.word	_Label_2158
	.word	-52
	.word	4
	.word	0
_Label_2146:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2147:
	.ascii	"Pself\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2157:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2158:
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
_Label_3947:
	push	r0
	sub	r1,1,r1
	bne	_Label_3947
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2159 = &processManagerLock
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
_Label_2160:
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2163 = &freeList
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
!   if result==true then goto _Label_2161 else goto _Label_2162
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2162
	jmp	_Label_2161
_Label_2161:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_2164 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-32]
!   _temp_2165 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2164  sizeInBytes=4
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
	jmp	_Label_2160
_Label_2162:
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_2166 = &freeList
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
!   _temp_2167 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2167 = 1  (sizeInBytes=4)
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
!   _temp_2168 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2168 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1920],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2169 = &processManagerLock
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
	.word	_Label_2170
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2172
	.word	-12
	.word	4
	.word	_Label_2173
	.word	-16
	.word	4
	.word	_Label_2174
	.word	-20
	.word	4
	.word	_Label_2175
	.word	-24
	.word	4
	.word	_Label_2176
	.word	-28
	.word	4
	.word	_Label_2177
	.word	-32
	.word	4
	.word	_Label_2178
	.word	-36
	.word	4
	.word	_Label_2179
	.word	-40
	.word	4
	.word	_Label_2180
	.word	-44
	.word	4
	.word	0
_Label_2170:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2171:
	.ascii	"Pself\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2180:
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
_Label_3948:
	push	r0
	sub	r1,1,r1
	bne	_Label_3948
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_2181 = &processManagerLock
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
!   _temp_2182 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2182 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2183 = &freeList
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
!   _temp_2184 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-20]
!   _temp_2185 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2184  sizeInBytes=4
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
!   _temp_2186 = &processManagerLock
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
	.word	_Label_2187
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2189
	.word	12
	.word	4
	.word	_Label_2190
	.word	-12
	.word	4
	.word	_Label_2191
	.word	-16
	.word	4
	.word	_Label_2192
	.word	-20
	.word	4
	.word	_Label_2193
	.word	-24
	.word	4
	.word	_Label_2194
	.word	-28
	.word	4
	.word	_Label_2195
	.word	-32
	.word	4
	.word	0
_Label_2187:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2188:
	.ascii	"Pself\0"
	.align
_Label_2189:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2181\0"
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
_Label_3949:
	push	r0
	sub	r1,1,r1
	bne	_Label_3949
	mov	986,r13		! source line 986
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_2196 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2197 = _temp_2196 + 1856
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
!   _temp_2202 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2203 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2202  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2198:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2203 then goto _Label_2201		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2201
_Label_2199:
	mov	992,r13		! source line 992
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0IF",r10
!   _temp_2207 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2208 = _temp_2207 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2208 [i ] into _temp_2209
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
!   _temp_2210 = _temp_2209 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2206 = *_temp_2210  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2212 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2211 = *_temp_2212  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2206 != _temp_2211 then goto _Label_2205		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2205
!	jmp	_Label_2204
_Label_2204:
! THEN...
	mov	995,r13		! source line 995
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   _temp_2213 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2214 = _temp_2213 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2214 [i ] into _temp_2215
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
!   parent = _temp_2215		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2205:
! IF STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0IF",r10
!   _temp_2220 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2221 = _temp_2220 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2221 [i ] into _temp_2222
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
!   _temp_2223 = _temp_2222 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2219 = *_temp_2223  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2219 != 2 then goto _Label_2217		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2217
!	jmp	_Label_2218
_Label_2218:
!   _temp_2225 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2226 = _temp_2225 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2226 [i ] into _temp_2227
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
!   _temp_2228 = _temp_2227 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2224 = *_temp_2228  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2229 = *_temp_2230  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2224 != _temp_2229 then goto _Label_2217		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2217
!	jmp	_Label_2216
_Label_2216:
! THEN...
	mov	999,r13		! source line 999
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   _temp_2231 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2232 = _temp_2231 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2232 [i ] into _temp_2233
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
!   _temp_2234 = _temp_2233 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2234 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_2236 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2237 = _temp_2236 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2237 [i ] into _temp_2238
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
!   _temp_2235 = _temp_2238		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2239 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2240 = _temp_2239 + 1892
	load	[r14+-108],r1
	add	r1,1892,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2235  sizeInBytes=4
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
!   _temp_2242 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2243 = _temp_2242 + 1856
	load	[r14+-96],r1
	add	r1,1856,r1
	store	r1,[r14+-92]
!   _temp_2241 = _temp_2243		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2244 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2245 = _temp_2244 + 1876
	load	[r14+-88],r1
	add	r1,1876,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2241  sizeInBytes=4
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
_Label_2217:
!   Increment the FOR-LOOP index variable and jump back
_Label_2200:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2198
! END FOR
_Label_2201:
! IF STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0IF",r10
!   if intIsZero (parent) then goto _Label_2247
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2247
!	jmp	_Label_2248
_Label_2248:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2250 = parent + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2249 = *_temp_2250  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2249 != 1 then goto _Label_2247		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2247
!	jmp	_Label_2246
_Label_2246:
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
!   _temp_2251 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2251 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2253 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2254 = _temp_2253 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2252 = _temp_2254		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2255 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2256 = _temp_2255 + 1904
	load	[r14+-56],r1
	add	r1,1904,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2252  sizeInBytes=4
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
	jmp	_Label_2257
_Label_2247:
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
!   _temp_2258 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2258 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_2259 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2260 = _temp_2259 + 1892
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
!   _temp_2262 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2263 = _temp_2262 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2261 = _temp_2263		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2264 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2265 = _temp_2264 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2261  sizeInBytes=4
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
_Label_2257:
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2266 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2267 = _temp_2266 + 1856
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
	.word	_Label_2268
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2270
	.word	12
	.word	4
	.word	_Label_2271
	.word	-12
	.word	4
	.word	_Label_2272
	.word	-16
	.word	4
	.word	_Label_2273
	.word	-20
	.word	4
	.word	_Label_2274
	.word	-24
	.word	4
	.word	_Label_2275
	.word	-28
	.word	4
	.word	_Label_2276
	.word	-32
	.word	4
	.word	_Label_2277
	.word	-36
	.word	4
	.word	_Label_2278
	.word	-40
	.word	4
	.word	_Label_2279
	.word	-44
	.word	4
	.word	_Label_2280
	.word	-48
	.word	4
	.word	_Label_2281
	.word	-52
	.word	4
	.word	_Label_2282
	.word	-56
	.word	4
	.word	_Label_2283
	.word	-60
	.word	4
	.word	_Label_2284
	.word	-64
	.word	4
	.word	_Label_2285
	.word	-68
	.word	4
	.word	_Label_2286
	.word	-72
	.word	4
	.word	_Label_2287
	.word	-76
	.word	4
	.word	_Label_2288
	.word	-80
	.word	4
	.word	_Label_2289
	.word	-84
	.word	4
	.word	_Label_2290
	.word	-88
	.word	4
	.word	_Label_2291
	.word	-92
	.word	4
	.word	_Label_2292
	.word	-96
	.word	4
	.word	_Label_2293
	.word	-100
	.word	4
	.word	_Label_2294
	.word	-104
	.word	4
	.word	_Label_2295
	.word	-108
	.word	4
	.word	_Label_2296
	.word	-112
	.word	4
	.word	_Label_2297
	.word	-116
	.word	4
	.word	_Label_2298
	.word	-120
	.word	4
	.word	_Label_2299
	.word	-124
	.word	4
	.word	_Label_2300
	.word	-128
	.word	4
	.word	_Label_2301
	.word	-132
	.word	4
	.word	_Label_2302
	.word	-136
	.word	4
	.word	_Label_2303
	.word	-140
	.word	4
	.word	_Label_2304
	.word	-144
	.word	4
	.word	_Label_2305
	.word	-148
	.word	4
	.word	_Label_2306
	.word	-152
	.word	4
	.word	_Label_2307
	.word	-156
	.word	4
	.word	_Label_2308
	.word	-160
	.word	4
	.word	_Label_2309
	.word	-164
	.word	4
	.word	_Label_2310
	.word	-168
	.word	4
	.word	_Label_2311
	.word	-172
	.word	4
	.word	_Label_2312
	.word	-176
	.word	4
	.word	_Label_2313
	.word	-180
	.word	4
	.word	_Label_2314
	.word	-184
	.word	4
	.word	_Label_2315
	.word	-188
	.word	4
	.word	_Label_2316
	.word	-192
	.word	4
	.word	_Label_2317
	.word	-196
	.word	4
	.word	_Label_2318
	.word	-200
	.word	4
	.word	_Label_2319
	.word	-204
	.word	4
	.word	_Label_2320
	.word	-208
	.word	4
	.word	_Label_2321
	.word	-212
	.word	4
	.word	_Label_2322
	.word	-216
	.word	4
	.word	_Label_2323
	.word	-220
	.word	4
	.word	_Label_2324
	.word	-224
	.word	4
	.word	_Label_2325
	.word	-228
	.word	4
	.word	_Label_2326
	.word	-232
	.word	4
	.word	_Label_2327
	.word	-236
	.word	4
	.word	_Label_2328
	.word	-240
	.word	4
	.word	_Label_2329
	.word	-244
	.word	4
	.word	_Label_2330
	.word	-248
	.word	4
	.word	_Label_2331
	.word	-252
	.word	4
	.word	0
_Label_2268:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2269:
	.ascii	"Pself\0"
	.align
_Label_2270:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2330:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2331:
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
_Label_3950:
	push	r0
	sub	r1,1,r1
	bne	_Label_3950
	mov	1019,r13		! source line 1019
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_2332 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_2333 = _temp_2332 + 1856
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
_Label_2334:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2338 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2337 = *_temp_2338  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_2337 == 2 then goto _Label_2336		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2336
!	jmp	_Label_2335
_Label_2335:
	mov	1023,r13		! source line 1023
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2340 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2341 = _temp_2340 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2339 = _temp_2341		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2342 = &aProcessDied
	load	[r14+8],r1
	add	r1,1904,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2339  sizeInBytes=4
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
	jmp	_Label_2334
_Label_2336:
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2343 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_2343  (sizeInBytes=4)
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
!   _temp_2344 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2344 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_2345 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2346 = _temp_2345 + 1892
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
!   _temp_2348 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2349 = _temp_2348 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2347 = _temp_2349		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2350 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2351 = _temp_2350 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2347  sizeInBytes=4
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
!   _temp_2352 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2353 = _temp_2352 + 1856
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
	.word	_Label_2354
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_2355
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2356
	.word	12
	.word	4
	.word	_Label_2357
	.word	-12
	.word	4
	.word	_Label_2358
	.word	-16
	.word	4
	.word	_Label_2359
	.word	-20
	.word	4
	.word	_Label_2360
	.word	-24
	.word	4
	.word	_Label_2361
	.word	-28
	.word	4
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
	.word	_Label_2367
	.word	-52
	.word	4
	.word	_Label_2368
	.word	-56
	.word	4
	.word	_Label_2369
	.word	-60
	.word	4
	.word	_Label_2370
	.word	-64
	.word	4
	.word	_Label_2371
	.word	-68
	.word	4
	.word	_Label_2372
	.word	-72
	.word	4
	.word	_Label_2373
	.word	-76
	.word	4
	.word	_Label_2374
	.word	-80
	.word	4
	.word	_Label_2375
	.word	-84
	.word	4
	.word	_Label_2376
	.word	-88
	.word	4
	.word	0
_Label_2354:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2355:
	.ascii	"Pself\0"
	.align
_Label_2356:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2376:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2377
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2377:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2378
	.word	_sourceFileName
	.word	255		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2378:
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
_Label_3951:
	push	r0
	sub	r1,1,r1
	bne	_Label_3951
	mov	1075,r13		! source line 1075
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2379 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2379  sizeInBytes=4
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
!   _temp_2381 = &framesInUse
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
!   _temp_2383 = &frameManagerLock
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
!   _temp_2385 = &newFramesAvailable
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
!   _temp_2390 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2391 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2390  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2386:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2391 then goto _Label_2389		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2389
_Label_2387:
	mov	1094,r13		! source line 1094
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2394 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2394) then goto _Label_2393
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2393
!	jmp	_Label_2392
_Label_2392:
! THEN...
	mov	1098,r13		! source line 1098
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2395 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2395  sizeInBytes=4
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
_Label_2393:
!   Increment the FOR-LOOP index variable and jump back
_Label_2388:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2386
! END FOR
_Label_2389:
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
	.word	_Label_2396
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2397
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_2396:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2397:
	.ascii	"Pself\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2409:
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
_Label_3952:
	push	r0
	sub	r1,1,r1
	bne	_Label_3952
	mov	1105,r13		! source line 1105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_2410 = &frameManagerLock
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
!   _temp_2411 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2411  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2412 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2412  sizeInBytes=4
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
!   _temp_2413 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2413  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0SE",r10
!   _temp_2414 = &framesInUse
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
!   _temp_2415 = &frameManagerLock
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
	.word	_Label_2416
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2417
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2418
	.word	-12
	.word	4
	.word	_Label_2419
	.word	-16
	.word	4
	.word	_Label_2420
	.word	-20
	.word	4
	.word	_Label_2421
	.word	-24
	.word	4
	.word	_Label_2422
	.word	-28
	.word	4
	.word	_Label_2423
	.word	-32
	.word	4
	.word	0
_Label_2416:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2417:
	.ascii	"Pself\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2410\0"
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
_Label_3953:
	push	r0
	sub	r1,1,r1
	bne	_Label_3953
	mov	1119,r13		! source line 1119
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_2424 = &frameManagerLock
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
_Label_2425:
!   if numberFreeFrames >= 1 then goto _Label_2427		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2427
!	jmp	_Label_2426
_Label_2426:
	mov	1130,r13		! source line 1130
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_2428 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2429 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2428  sizeInBytes=4
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
	jmp	_Label_2425
_Label_2427:
! ASSIGNMENT STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_2430 = &framesInUse
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
!   _temp_2431 = &frameManagerLock
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
!   _temp_2432 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2432		(int)
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
	.word	_Label_2433
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2435
	.word	-12
	.word	4
	.word	_Label_2436
	.word	-16
	.word	4
	.word	_Label_2437
	.word	-20
	.word	4
	.word	_Label_2438
	.word	-24
	.word	4
	.word	_Label_2439
	.word	-28
	.word	4
	.word	_Label_2440
	.word	-32
	.word	4
	.word	_Label_2441
	.word	-36
	.word	4
	.word	_Label_2442
	.word	-40
	.word	4
	.word	0
_Label_2433:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2434:
	.ascii	"Pself\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2441:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2442:
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
_Label_3954:
	push	r0
	sub	r1,1,r1
	bne	_Label_3954
	mov	1149,r13		! source line 1149
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_2443 = &frameManagerLock
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
_Label_2444:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2446		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2446
!	jmp	_Label_2445
_Label_2445:
	mov	1153,r13		! source line 1153
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_2447 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2448 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2447  sizeInBytes=4
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
	jmp	_Label_2444
_Label_2446:
! FOR STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2453 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2454 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2453  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2449:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2454 then goto _Label_2452		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2452
_Label_2450:
	mov	1156,r13		! source line 1156
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   _temp_2455 = &framesInUse
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
!   _temp_2456 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2456		(int)
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
_Label_2451:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2449
! END FOR
_Label_2452:
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
!   _temp_2457 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2457 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_2458 = &frameManagerLock
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
	.word	_Label_2459
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2460
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2461
	.word	12
	.word	4
	.word	_Label_2462
	.word	16
	.word	4
	.word	_Label_2463
	.word	-12
	.word	4
	.word	_Label_2464
	.word	-16
	.word	4
	.word	_Label_2465
	.word	-20
	.word	4
	.word	_Label_2466
	.word	-24
	.word	4
	.word	_Label_2467
	.word	-28
	.word	4
	.word	_Label_2468
	.word	-32
	.word	4
	.word	_Label_2469
	.word	-36
	.word	4
	.word	_Label_2470
	.word	-40
	.word	4
	.word	_Label_2471
	.word	-44
	.word	4
	.word	_Label_2472
	.word	-48
	.word	4
	.word	_Label_2473
	.word	-52
	.word	4
	.word	_Label_2474
	.word	-56
	.word	4
	.word	0
_Label_2459:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2460:
	.ascii	"Pself\0"
	.align
_Label_2461:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2473:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2474:
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
_Label_3955:
	push	r0
	sub	r1,1,r1
	bne	_Label_3955
	mov	1168,r13		! source line 1168
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
!   _temp_2475 = &frameManagerLock
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
!   _temp_2480 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2482 = *_temp_2483  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2481 = _temp_2482 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2480  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2476:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2481 then goto _Label_2479		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2479
_Label_2477:
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
!   _temp_2484 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2484 div 8192		(int)
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
!   _temp_2485 = &framesInUse
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
_Label_2478:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2476
! END FOR
_Label_2479:
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2487 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2486 = *_temp_2487  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2486		(int)
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
!   _temp_2488 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2489 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2488  sizeInBytes=4
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
!   _temp_2490 = &frameManagerLock
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
	.word	_Label_2491
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2492
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2493
	.word	12
	.word	4
	.word	_Label_2494
	.word	-12
	.word	4
	.word	_Label_2495
	.word	-16
	.word	4
	.word	_Label_2496
	.word	-20
	.word	4
	.word	_Label_2497
	.word	-24
	.word	4
	.word	_Label_2498
	.word	-28
	.word	4
	.word	_Label_2499
	.word	-32
	.word	4
	.word	_Label_2500
	.word	-36
	.word	4
	.word	_Label_2501
	.word	-40
	.word	4
	.word	_Label_2502
	.word	-44
	.word	4
	.word	_Label_2503
	.word	-48
	.word	4
	.word	_Label_2504
	.word	-52
	.word	4
	.word	_Label_2505
	.word	-56
	.word	4
	.word	_Label_2506
	.word	-60
	.word	4
	.word	_Label_2507
	.word	-64
	.word	4
	.word	_Label_2508
	.word	-68
	.word	4
	.word	0
_Label_2491:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2492:
	.ascii	"Pself\0"
	.align
_Label_2493:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2507:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2508:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2509
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
_Label_2509:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2510
	.word	_sourceFileName
	.word	274		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2510:
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
_Label_3956:
	push	r0
	sub	r1,1,r1
	bne	_Label_3956
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
!   _temp_2511 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2513 = &_temp_2512
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2513 = _temp_2513 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2515:
!   Data Move: *_temp_2513 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2513 = _temp_2513 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2514 = _temp_2514 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2514) then goto _Label_2515
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2515
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2516 = &_temp_2512
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3957
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3957:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2511 = *_temp_2516  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3958:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3958
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
	.word	_Label_2517
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2518
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2519
	.word	-12
	.word	4
	.word	_Label_2520
	.word	-16
	.word	4
	.word	_Label_2521
	.word	-20
	.word	4
	.word	_Label_2522
	.word	-104
	.word	84
	.word	_Label_2523
	.word	-108
	.word	4
	.word	0
_Label_2517:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2518:
	.ascii	"Pself\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2511\0"
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
_Label_3959:
	push	r0
	sub	r1,1,r1
	bne	_Label_3959
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2524 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2524  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2525 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2525  sizeInBytes=4
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
!   _temp_2530 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2531 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2530  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2526:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2531 then goto _Label_2529		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2529
_Label_2527:
	mov	1207,r13		! source line 1207
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2532 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2532  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1208,r13		! source line 1208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2534 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2534 [i ] into _temp_2535
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
!   _temp_2533 = _temp_2535		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2533  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1209,r13		! source line 1209
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2536 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2536  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2538 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2538 [i ] into _temp_2539
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
!   Data Move: _temp_2537 = *_temp_2539  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2537  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1211,r13		! source line 1211
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2540 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2540  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2541 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2541  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2542 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2542  sizeInBytes=4
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
!   if intIsZero (_temp_2544) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2543  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2545 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
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
!   if intIsZero (_temp_2549) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2548) then goto _Label_2547
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2547
!	jmp	_Label_2546
_Label_2546:
! THEN...
	mov	1218,r13		! source line 1218
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2551) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2552
_Label_2547:
! ELSE...
	mov	1220,r13		! source line 1220
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2553 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2553  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2552:
! CALL STATEMENT...
!   _temp_2554 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2554  sizeInBytes=4
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
!   if intIsZero (_temp_2557) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2555 else goto _Label_2556
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2556
	jmp	_Label_2555
_Label_2555:
! THEN...
	mov	1224,r13		! source line 1224
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2558 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2558  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2559
_Label_2556:
! ELSE...
	mov	1226,r13		! source line 1226
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2560 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2560  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2559:
! CALL STATEMENT...
!   _temp_2561 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2561  sizeInBytes=4
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
!   if intIsZero (_temp_2564) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2562 else goto _Label_2563
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2563
	jmp	_Label_2562
_Label_2562:
! THEN...
	mov	1230,r13		! source line 1230
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2565 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2565  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2566
_Label_2563:
! ELSE...
	mov	1232,r13		! source line 1232
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2567 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2567  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2566:
! CALL STATEMENT...
!   _temp_2568 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2568  sizeInBytes=4
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
!   if intIsZero (_temp_2571) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2569 else goto _Label_2570
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2570
	jmp	_Label_2569
_Label_2569:
! THEN...
	mov	1236,r13		! source line 1236
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2572 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2572  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2573
_Label_2570:
! ELSE...
	mov	1238,r13		! source line 1238
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2574 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2574  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2573:
! CALL STATEMENT...
!   _temp_2575 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2575  sizeInBytes=4
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
!   if intIsZero (_temp_2578) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2576 else goto _Label_2577
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2577
	jmp	_Label_2576
_Label_2576:
! THEN...
	mov	1242,r13		! source line 1242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2579 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2579  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2580
_Label_2577:
! ELSE...
	mov	1244,r13		! source line 1244
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2581 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2580:
! CALL STATEMENT...
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2528:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2526
! END FOR
_Label_2529:
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
	.word	_Label_2582
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2584
	.word	-12
	.word	4
	.word	_Label_2585
	.word	-16
	.word	4
	.word	_Label_2586
	.word	-20
	.word	4
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
	.word	_Label_2592
	.word	-44
	.word	4
	.word	_Label_2593
	.word	-48
	.word	4
	.word	_Label_2594
	.word	-52
	.word	4
	.word	_Label_2595
	.word	-56
	.word	4
	.word	_Label_2596
	.word	-60
	.word	4
	.word	_Label_2597
	.word	-64
	.word	4
	.word	_Label_2598
	.word	-68
	.word	4
	.word	_Label_2599
	.word	-72
	.word	4
	.word	_Label_2600
	.word	-76
	.word	4
	.word	_Label_2601
	.word	-80
	.word	4
	.word	_Label_2602
	.word	-84
	.word	4
	.word	_Label_2603
	.word	-88
	.word	4
	.word	_Label_2604
	.word	-92
	.word	4
	.word	_Label_2605
	.word	-96
	.word	4
	.word	_Label_2606
	.word	-100
	.word	4
	.word	_Label_2607
	.word	-104
	.word	4
	.word	_Label_2608
	.word	-108
	.word	4
	.word	_Label_2609
	.word	-112
	.word	4
	.word	_Label_2610
	.word	-116
	.word	4
	.word	_Label_2611
	.word	-120
	.word	4
	.word	_Label_2612
	.word	-124
	.word	4
	.word	_Label_2613
	.word	-128
	.word	4
	.word	_Label_2614
	.word	-132
	.word	4
	.word	_Label_2615
	.word	-136
	.word	4
	.word	_Label_2616
	.word	-140
	.word	4
	.word	_Label_2617
	.word	-144
	.word	4
	.word	_Label_2618
	.word	-148
	.word	4
	.word	_Label_2619
	.word	-152
	.word	4
	.word	_Label_2620
	.word	-156
	.word	4
	.word	_Label_2621
	.word	-160
	.word	4
	.word	_Label_2622
	.word	-164
	.word	4
	.word	_Label_2623
	.word	-168
	.word	4
	.word	0
_Label_2582:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2583:
	.ascii	"Pself\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2623:
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
_Label_3960:
	push	r0
	sub	r1,1,r1
	bne	_Label_3960
	mov	1252,r13		! source line 1252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0RE",r10
!   _temp_2626 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2626 [entry ] into _temp_2627
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
!   Data Move: _temp_2625 = *_temp_2627  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2624 = _temp_2625 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2624  (sizeInBytes=4)
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
	.word	_Label_2628
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2630
	.word	12
	.word	4
	.word	_Label_2631
	.word	-12
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
	.word	0
_Label_2628:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2629:
	.ascii	"Pself\0"
	.align
_Label_2630:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2627\0"
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
_Label_3961:
	push	r0
	sub	r1,1,r1
	bne	_Label_3961
	mov	1262,r13		! source line 1262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0RE",r10
!   _temp_2637 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2637 [entry ] into _temp_2638
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
!   Data Move: _temp_2636 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2635 = _temp_2636 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2635  (sizeInBytes=4)
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
	.word	_Label_2639
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2641
	.word	12
	.word	4
	.word	_Label_2642
	.word	-12
	.word	4
	.word	_Label_2643
	.word	-16
	.word	4
	.word	_Label_2644
	.word	-20
	.word	4
	.word	_Label_2645
	.word	-24
	.word	4
	.word	0
_Label_2639:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2640:
	.ascii	"Pself\0"
	.align
_Label_2641:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2635\0"
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
_Label_3962:
	push	r0
	sub	r1,1,r1
	bne	_Label_3962
	mov	1271,r13		! source line 1271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_2646 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2646 [entry ] into _temp_2647
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
!   _temp_2651 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2651 [entry ] into _temp_2652
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
!   Data Move: _temp_2650 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2649 = _temp_2650 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2648 = _temp_2649 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2647 = _temp_2648  (sizeInBytes=4)
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
	.word	_Label_2653
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2655
	.word	12
	.word	4
	.word	_Label_2656
	.word	16
	.word	4
	.word	_Label_2657
	.word	-12
	.word	4
	.word	_Label_2658
	.word	-16
	.word	4
	.word	_Label_2659
	.word	-20
	.word	4
	.word	_Label_2660
	.word	-24
	.word	4
	.word	_Label_2661
	.word	-28
	.word	4
	.word	_Label_2662
	.word	-32
	.word	4
	.word	_Label_2663
	.word	-36
	.word	4
	.word	0
_Label_2653:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2654:
	.ascii	"Pself\0"
	.align
_Label_2655:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2656:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2646\0"
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
_Label_3963:
	push	r0
	sub	r1,1,r1
	bne	_Label_3963
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0RE",r10
!   _temp_2667 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2667 [entry ] into _temp_2668
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
!   Data Move: _temp_2666 = *_temp_2668  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2665 = _temp_2666 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2665) then goto _Label_2669
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2669
!   _temp_2664 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2670
_Label_2669:
!   _temp_2664 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2670:
!   ReturnResult: _temp_2664  (sizeInBytes=1)
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
	.word	_Label_2671
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2673
	.word	12
	.word	4
	.word	_Label_2674
	.word	-16
	.word	4
	.word	_Label_2675
	.word	-20
	.word	4
	.word	_Label_2676
	.word	-24
	.word	4
	.word	_Label_2677
	.word	-28
	.word	4
	.word	_Label_2678
	.word	-9
	.word	1
	.word	0
_Label_2671:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2672:
	.ascii	"Pself\0"
	.align
_Label_2673:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2678:
	.byte	'C'
	.ascii	"_temp_2664\0"
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
_Label_3964:
	push	r0
	sub	r1,1,r1
	bne	_Label_3964
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0RE",r10
!   _temp_2682 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2682 [entry ] into _temp_2683
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
!   Data Move: _temp_2681 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2680 = _temp_2681 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2680) then goto _Label_2684
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2684
!   _temp_2679 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2685
_Label_2684:
!   _temp_2679 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2685:
!   ReturnResult: _temp_2679  (sizeInBytes=1)
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
	.word	_Label_2686
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2687
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2688
	.word	12
	.word	4
	.word	_Label_2689
	.word	-16
	.word	4
	.word	_Label_2690
	.word	-20
	.word	4
	.word	_Label_2691
	.word	-24
	.word	4
	.word	_Label_2692
	.word	-28
	.word	4
	.word	_Label_2693
	.word	-9
	.word	1
	.word	0
_Label_2686:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2687:
	.ascii	"Pself\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2693:
	.byte	'C'
	.ascii	"_temp_2679\0"
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
_Label_3965:
	push	r0
	sub	r1,1,r1
	bne	_Label_3965
	mov	1299,r13		! source line 1299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
!   _temp_2697 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2697 [entry ] into _temp_2698
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
!   Data Move: _temp_2696 = *_temp_2698  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2695 = _temp_2696 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2695) then goto _Label_2699
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2699
!   _temp_2694 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2700
_Label_2699:
!   _temp_2694 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2700:
!   ReturnResult: _temp_2694  (sizeInBytes=1)
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
	.word	_Label_2701
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2703
	.word	12
	.word	4
	.word	_Label_2704
	.word	-16
	.word	4
	.word	_Label_2705
	.word	-20
	.word	4
	.word	_Label_2706
	.word	-24
	.word	4
	.word	_Label_2707
	.word	-28
	.word	4
	.word	_Label_2708
	.word	-9
	.word	1
	.word	0
_Label_2701:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2702:
	.ascii	"Pself\0"
	.align
_Label_2703:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2708:
	.byte	'C'
	.ascii	"_temp_2694\0"
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
_Label_3966:
	push	r0
	sub	r1,1,r1
	bne	_Label_3966
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0RE",r10
!   _temp_2712 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2712 [entry ] into _temp_2713
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
!   Data Move: _temp_2711 = *_temp_2713  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2710 = _temp_2711 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2710) then goto _Label_2714
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2714
!   _temp_2709 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2715
_Label_2714:
!   _temp_2709 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2715:
!   ReturnResult: _temp_2709  (sizeInBytes=1)
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
	.word	_Label_2716
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2718
	.word	12
	.word	4
	.word	_Label_2719
	.word	-16
	.word	4
	.word	_Label_2720
	.word	-20
	.word	4
	.word	_Label_2721
	.word	-24
	.word	4
	.word	_Label_2722
	.word	-28
	.word	4
	.word	_Label_2723
	.word	-9
	.word	1
	.word	0
_Label_2716:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2717:
	.ascii	"Pself\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2723:
	.byte	'C'
	.ascii	"_temp_2709\0"
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
_Label_3967:
	push	r0
	sub	r1,1,r1
	bne	_Label_3967
	mov	1317,r13		! source line 1317
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0AS",r10
!   _temp_2724 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2724 [entry ] into _temp_2725
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
!   _temp_2728 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2728 [entry ] into _temp_2729
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
!   Data Move: _temp_2727 = *_temp_2729  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2726 = _temp_2727 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2725 = _temp_2726  (sizeInBytes=4)
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
	.word	_Label_2730
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2732
	.word	12
	.word	4
	.word	_Label_2733
	.word	-12
	.word	4
	.word	_Label_2734
	.word	-16
	.word	4
	.word	_Label_2735
	.word	-20
	.word	4
	.word	_Label_2736
	.word	-24
	.word	4
	.word	_Label_2737
	.word	-28
	.word	4
	.word	_Label_2738
	.word	-32
	.word	4
	.word	0
_Label_2730:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2731:
	.ascii	"Pself\0"
	.align
_Label_2732:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2724\0"
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
_Label_3968:
	push	r0
	sub	r1,1,r1
	bne	_Label_3968
	mov	1326,r13		! source line 1326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   _temp_2739 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2739 [entry ] into _temp_2740
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
!   _temp_2743 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2743 [entry ] into _temp_2744
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
!   Data Move: _temp_2742 = *_temp_2744  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2741 = _temp_2742 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2740 = _temp_2741  (sizeInBytes=4)
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
	.word	_Label_2745
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2747
	.word	12
	.word	4
	.word	_Label_2748
	.word	-12
	.word	4
	.word	_Label_2749
	.word	-16
	.word	4
	.word	_Label_2750
	.word	-20
	.word	4
	.word	_Label_2751
	.word	-24
	.word	4
	.word	_Label_2752
	.word	-28
	.word	4
	.word	_Label_2753
	.word	-32
	.word	4
	.word	0
_Label_2745:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2746:
	.ascii	"Pself\0"
	.align
_Label_2747:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2739\0"
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
_Label_3969:
	push	r0
	sub	r1,1,r1
	bne	_Label_3969
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   _temp_2754 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2754 [entry ] into _temp_2755
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
!   _temp_2758 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2758 [entry ] into _temp_2759
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
!   Data Move: _temp_2757 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2756 = _temp_2757 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2755 = _temp_2756  (sizeInBytes=4)
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
	.word	_Label_2760
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2761
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2762
	.word	12
	.word	4
	.word	_Label_2763
	.word	-12
	.word	4
	.word	_Label_2764
	.word	-16
	.word	4
	.word	_Label_2765
	.word	-20
	.word	4
	.word	_Label_2766
	.word	-24
	.word	4
	.word	_Label_2767
	.word	-28
	.word	4
	.word	_Label_2768
	.word	-32
	.word	4
	.word	0
_Label_2760:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2761:
	.ascii	"Pself\0"
	.align
_Label_2762:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2754\0"
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
_Label_3970:
	push	r0
	sub	r1,1,r1
	bne	_Label_3970
	mov	1344,r13		! source line 1344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1348,r13		! source line 1348
	mov	"\0\0AS",r10
!   _temp_2769 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2769 [entry ] into _temp_2770
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
!   _temp_2773 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2773 [entry ] into _temp_2774
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
!   Data Move: _temp_2772 = *_temp_2774  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2771 = _temp_2772 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2770 = _temp_2771  (sizeInBytes=4)
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
	.word	_Label_2775
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2776
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2777
	.word	12
	.word	4
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
	.word	_Label_2782
	.word	-28
	.word	4
	.word	_Label_2783
	.word	-32
	.word	4
	.word	0
_Label_2775:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2776:
	.ascii	"Pself\0"
	.align
_Label_2777:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2769\0"
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
_Label_3971:
	push	r0
	sub	r1,1,r1
	bne	_Label_3971
	mov	1353,r13		! source line 1353
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0AS",r10
!   _temp_2784 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2784 [entry ] into _temp_2785
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
!   _temp_2788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2788 [entry ] into _temp_2789
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
!   Data Move: _temp_2787 = *_temp_2789  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2786 = _temp_2787 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2785 = _temp_2786  (sizeInBytes=4)
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
	.word	_Label_2790
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2791
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2792
	.word	12
	.word	4
	.word	_Label_2793
	.word	-12
	.word	4
	.word	_Label_2794
	.word	-16
	.word	4
	.word	_Label_2795
	.word	-20
	.word	4
	.word	_Label_2796
	.word	-24
	.word	4
	.word	_Label_2797
	.word	-28
	.word	4
	.word	_Label_2798
	.word	-32
	.word	4
	.word	0
_Label_2790:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2791:
	.ascii	"Pself\0"
	.align
_Label_2792:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2784\0"
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
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
	mov	1362,r13		! source line 1362
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1366,r13		! source line 1366
	mov	"\0\0AS",r10
!   _temp_2799 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2799 [entry ] into _temp_2800
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
!   _temp_2803 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2803 [entry ] into _temp_2804
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
!   Data Move: _temp_2802 = *_temp_2804  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2801 = _temp_2802 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2800 = _temp_2801  (sizeInBytes=4)
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
	.word	_Label_2805
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2806
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2807
	.word	12
	.word	4
	.word	_Label_2808
	.word	-12
	.word	4
	.word	_Label_2809
	.word	-16
	.word	4
	.word	_Label_2810
	.word	-20
	.word	4
	.word	_Label_2811
	.word	-24
	.word	4
	.word	_Label_2812
	.word	-28
	.word	4
	.word	_Label_2813
	.word	-32
	.word	4
	.word	0
_Label_2805:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2806:
	.ascii	"Pself\0"
	.align
_Label_2807:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2799\0"
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
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	1371,r13		! source line 1371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   _temp_2814 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2814 [entry ] into _temp_2815
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
!   _temp_2818 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2818 [entry ] into _temp_2819
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
!   Data Move: _temp_2817 = *_temp_2819  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2816 = _temp_2817 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2815 = _temp_2816  (sizeInBytes=4)
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
	.word	_Label_2820
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2822
	.word	12
	.word	4
	.word	_Label_2823
	.word	-12
	.word	4
	.word	_Label_2824
	.word	-16
	.word	4
	.word	_Label_2825
	.word	-20
	.word	4
	.word	_Label_2826
	.word	-24
	.word	4
	.word	_Label_2827
	.word	-28
	.word	4
	.word	_Label_2828
	.word	-32
	.word	4
	.word	0
_Label_2820:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2821:
	.ascii	"Pself\0"
	.align
_Label_2822:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2814\0"
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
_Label_3974:
	push	r0
	sub	r1,1,r1
	bne	_Label_3974
	mov	1380,r13		! source line 1380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_2829 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2829 [entry ] into _temp_2830
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
!   _temp_2833 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2833 [entry ] into _temp_2834
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
!   Data Move: _temp_2832 = *_temp_2834  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2831 = _temp_2832 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2830 = _temp_2831  (sizeInBytes=4)
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
	.word	_Label_2835
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2837
	.word	12
	.word	4
	.word	_Label_2838
	.word	-12
	.word	4
	.word	_Label_2839
	.word	-16
	.word	4
	.word	_Label_2840
	.word	-20
	.word	4
	.word	_Label_2841
	.word	-24
	.word	4
	.word	_Label_2842
	.word	-28
	.word	4
	.word	_Label_2843
	.word	-32
	.word	4
	.word	0
_Label_2835:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2836:
	.ascii	"Pself\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2829\0"
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
_Label_3975:
	push	r0
	sub	r1,1,r1
	bne	_Label_3975
	mov	1389,r13		! source line 1389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2845 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2845 [0 ] into _temp_2846
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
!   _temp_2844 = _temp_2846		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2847 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2844  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2847  sizeInBytes=4
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
	.word	_Label_2848
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2850
	.word	-12
	.word	4
	.word	_Label_2851
	.word	-16
	.word	4
	.word	_Label_2852
	.word	-20
	.word	4
	.word	_Label_2853
	.word	-24
	.word	4
	.word	0
_Label_2848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2849:
	.ascii	"Pself\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2844\0"
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
_Label_3976:
	push	r0
	sub	r1,1,r1
	bne	_Label_3976
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2854
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2854
	jmp	_Label_2855
_Label_2854:
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
	jmp	_Label_2856
_Label_2855:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2858		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2858
!	jmp	_Label_2857
_Label_2857:
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
_Label_2858:
! END IF...
_Label_2856:
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
_Label_2859:
!	jmp	_Label_2860
_Label_2860:
	mov	1424,r13		! source line 1424
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2863		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2863
!	jmp	_Label_2862
_Label_2862:
! THEN...
	mov	1426,r13		! source line 1426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2864 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2864  sizeInBytes=4
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
_Label_2863:
! IF STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0IF",r10
	mov	1429,r13		! source line 1429
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2868) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2867  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2867 then goto _Label_2866 else goto _Label_2865
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2865
	jmp	_Label_2866
_Label_2865:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2869 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
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
_Label_2866:
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
	mov	1433,r13		! source line 1433
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2871) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2870  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2870 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0WH",r10
_Label_2872:
!   if offset >= 8192 then goto _Label_2874		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2874
!	jmp	_Label_2873
_Label_2873:
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
!   Data Move: _temp_2875 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2875  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2877		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2877
!	jmp	_Label_2876
_Label_2876:
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
_Label_2877:
! END WHILE...
	jmp	_Label_2872
_Label_2874:
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
	jmp	_Label_2859
_Label_2861:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2878
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2880
	.word	12
	.word	4
	.word	_Label_2881
	.word	16
	.word	4
	.word	_Label_2882
	.word	20
	.word	4
	.word	_Label_2883
	.word	-9
	.word	1
	.word	_Label_2884
	.word	-16
	.word	4
	.word	_Label_2885
	.word	-20
	.word	4
	.word	_Label_2886
	.word	-24
	.word	4
	.word	_Label_2887
	.word	-28
	.word	4
	.word	_Label_2888
	.word	-10
	.word	1
	.word	_Label_2889
	.word	-32
	.word	4
	.word	_Label_2890
	.word	-36
	.word	4
	.word	_Label_2891
	.word	-40
	.word	4
	.word	_Label_2892
	.word	-44
	.word	4
	.word	_Label_2893
	.word	-48
	.word	4
	.word	0
_Label_2878:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2879:
	.ascii	"Pself\0"
	.align
_Label_2880:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2881:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2882:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2883:
	.byte	'C'
	.ascii	"_temp_2875\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2888:
	.byte	'C'
	.ascii	"_temp_2867\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2890:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2891:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2892:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2893:
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
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2894
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2894
	jmp	_Label_2895
_Label_2894:
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
	jmp	_Label_2896
_Label_2895:
! ELSE...
	mov	1467,r13		! source line 1467
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2898		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2898
!	jmp	_Label_2897
_Label_2897:
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
_Label_2898:
! END IF...
_Label_2896:
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
_Label_2899:
!	jmp	_Label_2900
_Label_2900:
	mov	1472,r13		! source line 1472
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2905		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2905
	jmp	_Label_2902
_Label_2905:
	mov	1474,r13		! source line 1474
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2906  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2906 then goto _Label_2904 else goto _Label_2902
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2902
	jmp	_Label_2904
_Label_2904:
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2908  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2908 then goto _Label_2903 else goto _Label_2902
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2902
	jmp	_Label_2903
_Label_2902:
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
_Label_2903:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2911) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2910  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2910 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0WH",r10
_Label_2912:
!   if offset >= 8192 then goto _Label_2914		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2914
!	jmp	_Label_2913
_Label_2913:
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
!   Data Move: _temp_2915 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2915  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2917		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2917
!	jmp	_Label_2916
_Label_2916:
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
_Label_2917:
! END WHILE...
	jmp	_Label_2912
_Label_2914:
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
	jmp	_Label_2899
_Label_2901:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2918
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2919
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2920
	.word	12
	.word	4
	.word	_Label_2921
	.word	16
	.word	4
	.word	_Label_2922
	.word	20
	.word	4
	.word	_Label_2923
	.word	-9
	.word	1
	.word	_Label_2924
	.word	-16
	.word	4
	.word	_Label_2925
	.word	-20
	.word	4
	.word	_Label_2926
	.word	-24
	.word	4
	.word	_Label_2927
	.word	-10
	.word	1
	.word	_Label_2928
	.word	-28
	.word	4
	.word	_Label_2929
	.word	-11
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
	.word	0
_Label_2918:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2919:
	.ascii	"Pself\0"
	.align
_Label_2920:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2921:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2922:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2923:
	.byte	'C'
	.ascii	"_temp_2915\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2927:
	.byte	'C'
	.ascii	"_temp_2908\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2929:
	.byte	'C'
	.ascii	"_temp_2906\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2932:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2933:
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
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0IF",r10
	mov	1520,r13		! source line 1520
	mov	"\0\0SE",r10
!   _temp_2937 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2938) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2937  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2936  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2936 >= 4 then goto _Label_2935		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2935
!	jmp	_Label_2934
_Label_2934:
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
_Label_2935:
! IF STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2940		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2940
!	jmp	_Label_2939
_Label_2939:
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
_Label_2940:
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
!   _temp_2943 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2942 = _temp_2943 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2944 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2945) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2942  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2944  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2941  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2941  (sizeInBytes=4)
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
	.word	_Label_2946
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2948
	.word	12
	.word	4
	.word	_Label_2949
	.word	16
	.word	4
	.word	_Label_2950
	.word	20
	.word	4
	.word	_Label_2951
	.word	-12
	.word	4
	.word	_Label_2952
	.word	-16
	.word	4
	.word	_Label_2953
	.word	-20
	.word	4
	.word	_Label_2954
	.word	-24
	.word	4
	.word	_Label_2955
	.word	-28
	.word	4
	.word	_Label_2956
	.word	-32
	.word	4
	.word	_Label_2957
	.word	-36
	.word	4
	.word	_Label_2958
	.word	-40
	.word	4
	.word	_Label_2959
	.word	-44
	.word	4
	.word	0
_Label_2946:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2947:
	.ascii	"Pself\0"
	.align
_Label_2948:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2949:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2950:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2959:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2960
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2960:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2961
	.word	_sourceFileName
	.word	307		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2961:
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
_Label_3979:
	push	r0
	sub	r1,1,r1
	bne	_Label_3979
	mov	2169,r13		! source line 2169
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2962 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2962  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
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
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_2964 = &semUsedInSynchMethods
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
	mov	2179,r13		! source line 2179
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
	mov	2180,r13		! source line 2180
	mov	"\0\0SE",r10
!   _temp_2966 = &diskBusy
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
	mov	2180,r13		! source line 2180
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
	.word	_Label_2967
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2969
	.word	-12
	.word	4
	.word	_Label_2970
	.word	-16
	.word	4
	.word	_Label_2971
	.word	-20
	.word	4
	.word	_Label_2972
	.word	-24
	.word	4
	.word	_Label_2973
	.word	-28
	.word	4
	.word	0
_Label_2967:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2968:
	.ascii	"Pself\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2962\0"
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
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	2185,r13		! source line 2185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0SE",r10
!   _temp_2974 = &diskBusy
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
	mov	2199,r13		! source line 2199
	mov	"\0\0WH",r10
_Label_2975:
!	jmp	_Label_2976
_Label_2976:
	mov	2199,r13		! source line 2199
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0SE",r10
!   _temp_2978 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2979) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2978  sizeInBytes=4
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
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2980 = &semUsedInSynchMethods
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
	mov	2206,r13		! source line 2206
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2989 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2983
	cmp	r1,2
	be	_Label_2984
	cmp	r1,3
	be	_Label_2985
	cmp	r1,4
	be	_Label_2986
	cmp	r1,5
	be	_Label_2987
	cmp	r1,6
	be	_Label_2988
	jmp	_Label_2981
! CASE 1...
_Label_2983:
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_2990 = &diskBusy
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
	mov	2209,r13		! source line 2209
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2984:
! CALL STATEMENT...
!   _temp_2991 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2991  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2211,r13		! source line 2211
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2985:
! CALL STATEMENT...
!   _temp_2992 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2992  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2213,r13		! source line 2213
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2986:
! CALL STATEMENT...
!   _temp_2993 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2215,r13		! source line 2215
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2987:
! BREAK STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0BR",r10
	jmp	_Label_2982
! CASE 6...
_Label_2988:
! CALL STATEMENT...
!   _temp_2994 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2994  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2221,r13		! source line 2221
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2981:
! CALL STATEMENT...
!   _temp_2995 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2995  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2223,r13		! source line 2223
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2982:
! END WHILE...
	jmp	_Label_2975
_Label_2977:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2996
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2997
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2998
	.word	12
	.word	4
	.word	_Label_2999
	.word	16
	.word	4
	.word	_Label_3000
	.word	20
	.word	4
	.word	_Label_3001
	.word	-12
	.word	4
	.word	_Label_3002
	.word	-16
	.word	4
	.word	_Label_3003
	.word	-20
	.word	4
	.word	_Label_3004
	.word	-24
	.word	4
	.word	_Label_3005
	.word	-28
	.word	4
	.word	_Label_3006
	.word	-32
	.word	4
	.word	_Label_3007
	.word	-36
	.word	4
	.word	_Label_3008
	.word	-40
	.word	4
	.word	_Label_3009
	.word	-44
	.word	4
	.word	_Label_3010
	.word	-48
	.word	4
	.word	_Label_3011
	.word	-52
	.word	4
	.word	0
_Label_2996:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2997:
	.ascii	"Pself\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2974\0"
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
	mov	2232,r13		! source line 2232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
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
	mov	2251,r13		! source line 2251
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
	mov	2252,r13		! source line 2252
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
	mov	2253,r13		! source line 2253
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
	mov	2253,r13		! source line 2253
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
	.word	_Label_3012
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3014
	.word	12
	.word	4
	.word	_Label_3015
	.word	16
	.word	4
	.word	_Label_3016
	.word	20
	.word	4
	.word	_Label_3017
	.word	24
	.word	4
	.word	0
_Label_3012:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3013:
	.ascii	"Pself\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3015:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3016:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3017:
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
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	2258,r13		! source line 2258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0SE",r10
!   _temp_3018 = &diskBusy
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
	mov	2271,r13		! source line 2271
	mov	"\0\0WH",r10
_Label_3019:
!	jmp	_Label_3020
_Label_3020:
	mov	2271,r13		! source line 2271
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_3022 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3023) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3022  sizeInBytes=4
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
	mov	2274,r13		! source line 2274
	mov	"\0\0SE",r10
!   _temp_3024 = &semUsedInSynchMethods
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
	mov	2277,r13		! source line 2277
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3033 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3027
	cmp	r1,2
	be	_Label_3028
	cmp	r1,3
	be	_Label_3029
	cmp	r1,4
	be	_Label_3030
	cmp	r1,5
	be	_Label_3031
	cmp	r1,6
	be	_Label_3032
	jmp	_Label_3025
! CASE 1...
_Label_3027:
! SEND STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0SE",r10
!   _temp_3034 = &diskBusy
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
	mov	2280,r13		! source line 2280
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3028:
! CALL STATEMENT...
!   _temp_3035 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3035  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2282,r13		! source line 2282
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3029:
! CALL STATEMENT...
!   _temp_3036 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3036  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2284,r13		! source line 2284
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3030:
! CALL STATEMENT...
!   _temp_3037 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3037  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2286,r13		! source line 2286
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3031:
! BREAK STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0BR",r10
	jmp	_Label_3026
! CASE 6...
_Label_3032:
! CALL STATEMENT...
!   _temp_3038 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3038  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2292,r13		! source line 2292
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3025:
! CALL STATEMENT...
!   _temp_3039 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3039  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2294,r13		! source line 2294
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3026:
! END WHILE...
	jmp	_Label_3019
_Label_3021:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3040
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3042
	.word	12
	.word	4
	.word	_Label_3043
	.word	16
	.word	4
	.word	_Label_3044
	.word	20
	.word	4
	.word	_Label_3045
	.word	-12
	.word	4
	.word	_Label_3046
	.word	-16
	.word	4
	.word	_Label_3047
	.word	-20
	.word	4
	.word	_Label_3048
	.word	-24
	.word	4
	.word	_Label_3049
	.word	-28
	.word	4
	.word	_Label_3050
	.word	-32
	.word	4
	.word	_Label_3051
	.word	-36
	.word	4
	.word	_Label_3052
	.word	-40
	.word	4
	.word	_Label_3053
	.word	-44
	.word	4
	.word	_Label_3054
	.word	-48
	.word	4
	.word	_Label_3055
	.word	-52
	.word	4
	.word	0
_Label_3040:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3041:
	.ascii	"Pself\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3033\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3018\0"
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
	mov	2303,r13		! source line 2303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
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
	mov	2321,r13		! source line 2321
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
	mov	2322,r13		! source line 2322
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
	mov	2323,r13		! source line 2323
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
	mov	2323,r13		! source line 2323
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
	.word	_Label_3056
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3058
	.word	12
	.word	4
	.word	_Label_3059
	.word	16
	.word	4
	.word	_Label_3060
	.word	20
	.word	4
	.word	_Label_3061
	.word	24
	.word	4
	.word	0
_Label_3056:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3057:
	.ascii	"Pself\0"
	.align
_Label_3058:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3059:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3060:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3061:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3062
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
_Label_3062:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3063
	.word	_sourceFileName
	.word	330		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3063:
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
_Label_3982:
	push	r0
	sub	r1,1,r1
	bne	_Label_3982
	mov	2334,r13		! source line 2334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3064 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3064  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2341,r13		! source line 2341
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
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
	mov	2343,r13		! source line 2343
	mov	"\0\0SE",r10
!   _temp_3066 = &fileManagerLock
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
	mov	2346,r13		! source line 2346
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
	mov	2347,r13		! source line 2347
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
	mov	2348,r13		! source line 2348
	mov	"\0\0SE",r10
!   _temp_3069 = &anFCBBecameFree
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
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   _temp_3070 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3072 = &_temp_3071
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3072 = _temp_3072 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3074 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3983:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3983
!   _temp_3074 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3076:
!   Data Move: *_temp_3072 = _temp_3074  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3984:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3984
!   _temp_3072 = _temp_3072 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3073 = _temp_3073 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3073) then goto _Label_3076
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3076
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3077 = &_temp_3071
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3985
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3985:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3070 = *_temp_3077  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3986:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3986
! FOR STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3082 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3083 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3082  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3078:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3083 then goto _Label_3081		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3081
_Label_3079:
	mov	2351,r13		! source line 2351
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   _temp_3084 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3084 [i ] into _temp_3085
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
!   _temp_3086 = _temp_3085 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3086 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0SE",r10
!   _temp_3087 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3087 [i ] into _temp_3088
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
	mov	2354,r13		! source line 2354
	mov	"\0\0SE",r10
!   _temp_3090 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3090 [i ] into _temp_3091
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
!   _temp_3089 = _temp_3091		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3092 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3089  sizeInBytes=4
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
_Label_3080:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3078
! END FOR
_Label_3081:
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
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
	mov	2359,r13		! source line 2359
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
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   _temp_3095 = &anOpenFileBecameFree
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
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   _temp_3096 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3098 = &_temp_3097
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3098 = _temp_3098 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3100 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3987:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3987
!   _temp_3100 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3102:
!   Data Move: *_temp_3098 = _temp_3100  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3988:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3988
!   _temp_3098 = _temp_3098 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3099 = _temp_3099 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3099) then goto _Label_3102
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3102
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3103 = &_temp_3097
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3989
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3989:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3096 = *_temp_3103  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3990:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3990
! FOR STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3108 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3109 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3108  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3104:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3109 then goto _Label_3107		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3107
_Label_3105:
	mov	2363,r13		! source line 2363
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   _temp_3110 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3110 [i ] into _temp_3111
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
!   _temp_3112 = _temp_3111 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3112 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_3114 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3114 [i ] into _temp_3115
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
!   _temp_3113 = _temp_3115		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3116 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3113  sizeInBytes=4
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
_Label_3106:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3104
! END FOR
_Label_3107:
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3991:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3991
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   _temp_3118 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3119 = _temp_3118 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3119 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_3120 = &_P_Kernel_frameManager
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
	mov	2376,r13		! source line 2376
	mov	"\0\0SE",r10
!   _temp_3121 = &_P_Kernel_diskDriver
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
	mov	2376,r13		! source line 2376
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
	.word	_Label_3122
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3124
	.word	-12
	.word	4
	.word	_Label_3125
	.word	-16
	.word	4
	.word	_Label_3126
	.word	-20
	.word	4
	.word	_Label_3127
	.word	-24
	.word	4
	.word	_Label_3128
	.word	-28
	.word	4
	.word	_Label_3129
	.word	-32
	.word	4
	.word	_Label_3130
	.word	-36
	.word	4
	.word	_Label_3131
	.word	-40
	.word	4
	.word	_Label_3132
	.word	-44
	.word	4
	.word	_Label_3133
	.word	-48
	.word	4
	.word	_Label_3134
	.word	-52
	.word	4
	.word	_Label_3135
	.word	-56
	.word	4
	.word	_Label_3136
	.word	-60
	.word	4
	.word	_Label_3137
	.word	-64
	.word	4
	.word	_Label_3138
	.word	-68
	.word	4
	.word	_Label_3139
	.word	-72
	.word	4
	.word	_Label_3140
	.word	-100
	.word	28
	.word	_Label_3141
	.word	-104
	.word	4
	.word	_Label_3142
	.word	-108
	.word	4
	.word	_Label_3143
	.word	-392
	.word	284
	.word	_Label_3144
	.word	-396
	.word	4
	.word	_Label_3145
	.word	-400
	.word	4
	.word	_Label_3146
	.word	-404
	.word	4
	.word	_Label_3147
	.word	-408
	.word	4
	.word	_Label_3148
	.word	-412
	.word	4
	.word	_Label_3149
	.word	-416
	.word	4
	.word	_Label_3150
	.word	-420
	.word	4
	.word	_Label_3151
	.word	-424
	.word	4
	.word	_Label_3152
	.word	-428
	.word	4
	.word	_Label_3153
	.word	-432
	.word	4
	.word	_Label_3154
	.word	-436
	.word	4
	.word	_Label_3155
	.word	-440
	.word	4
	.word	_Label_3156
	.word	-444
	.word	4
	.word	_Label_3157
	.word	-448
	.word	4
	.word	_Label_3158
	.word	-452
	.word	4
	.word	_Label_3159
	.word	-456
	.word	4
	.word	_Label_3160
	.word	-460
	.word	4
	.word	_Label_3161
	.word	-500
	.word	40
	.word	_Label_3162
	.word	-504
	.word	4
	.word	_Label_3163
	.word	-508
	.word	4
	.word	_Label_3164
	.word	-912
	.word	404
	.word	_Label_3165
	.word	-916
	.word	4
	.word	_Label_3166
	.word	-920
	.word	4
	.word	_Label_3167
	.word	-924
	.word	4
	.word	_Label_3168
	.word	-928
	.word	4
	.word	_Label_3169
	.word	-932
	.word	4
	.word	_Label_3170
	.word	-936
	.word	4
	.word	_Label_3171
	.word	-940
	.word	4
	.word	_Label_3172
	.word	-944
	.word	4
	.word	0
_Label_3122:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3123:
	.ascii	"Pself\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3172:
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
_Label_3992:
	push	r0
	sub	r1,1,r1
	bne	_Label_3992
	mov	2383,r13		! source line 2383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0SE",r10
!   _temp_3173 = &fileManagerLock
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
!   _temp_3174 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3174  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2386,r13		! source line 2386
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3179 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3180 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3179  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3175:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3180 then goto _Label_3178		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3178
_Label_3176:
	mov	2387,r13		! source line 2387
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3181 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3181  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2388,r13		! source line 2388
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3182 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3182  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2390,r13		! source line 2390
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0SE",r10
!   _temp_3183 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3183 [i ] into _temp_3184
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
_Label_3177:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3175
! END FOR
_Label_3178:
! CALL STATEMENT...
!   _temp_3185 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3185  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2393,r13		! source line 2393
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0SE",r10
!   _temp_3186 = _function_182_printFCB
	set	_function_182_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3187 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3186  sizeInBytes=4
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
	mov	2395,r13		! source line 2395
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3188 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3188  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2396,r13		! source line 2396
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3193 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3194 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3193  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3189:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3194 then goto _Label_3192		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3192
_Label_3190:
	mov	2397,r13		! source line 2397
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3195 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3195  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2398,r13		! source line 2398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2399,r13		! source line 2399
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3196 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3196  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2400,r13		! source line 2400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3198 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3198 [i ] into _temp_3199
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
!   _temp_3197 = _temp_3199		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3197  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2401,r13		! source line 2401
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3200 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3200  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2402,r13		! source line 2402
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0SE",r10
!   _temp_3201 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3201 [i ] into _temp_3202
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
_Label_3191:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3189
! END FOR
_Label_3192:
! CALL STATEMENT...
!   _temp_3203 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3203  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2405,r13		! source line 2405
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_3204 = _function_181_printOpen
	set	_function_181_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3205 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3204  sizeInBytes=4
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
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_3206 = &fileManagerLock
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
	mov	2407,r13		! source line 2407
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
	.word	_Label_3207
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3209
	.word	-12
	.word	4
	.word	_Label_3210
	.word	-16
	.word	4
	.word	_Label_3211
	.word	-20
	.word	4
	.word	_Label_3212
	.word	-24
	.word	4
	.word	_Label_3213
	.word	-28
	.word	4
	.word	_Label_3214
	.word	-32
	.word	4
	.word	_Label_3215
	.word	-36
	.word	4
	.word	_Label_3216
	.word	-40
	.word	4
	.word	_Label_3217
	.word	-44
	.word	4
	.word	_Label_3218
	.word	-48
	.word	4
	.word	_Label_3219
	.word	-52
	.word	4
	.word	_Label_3220
	.word	-56
	.word	4
	.word	_Label_3221
	.word	-60
	.word	4
	.word	_Label_3222
	.word	-64
	.word	4
	.word	_Label_3223
	.word	-68
	.word	4
	.word	_Label_3224
	.word	-72
	.word	4
	.word	_Label_3225
	.word	-76
	.word	4
	.word	_Label_3226
	.word	-80
	.word	4
	.word	_Label_3227
	.word	-84
	.word	4
	.word	_Label_3228
	.word	-88
	.word	4
	.word	_Label_3229
	.word	-92
	.word	4
	.word	_Label_3230
	.word	-96
	.word	4
	.word	_Label_3231
	.word	-100
	.word	4
	.word	_Label_3232
	.word	-104
	.word	4
	.word	_Label_3233
	.word	-108
	.word	4
	.word	_Label_3234
	.word	-112
	.word	4
	.word	_Label_3235
	.word	-116
	.word	4
	.word	0
_Label_3207:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3208:
	.ascii	"Pself\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3235:
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
_Label_3993:
	push	r0
	sub	r1,1,r1
	bne	_Label_3993
	mov	2412,r13		! source line 2412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
	mov	2428,r13		! source line 2428
	mov	"\0\0SE",r10
!   _temp_3236 = &_P_Kernel_fileManager
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
	mov	2429,r13		! source line 2429
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3237
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3237
	jmp	_Label_3238
_Label_3237:
! THEN...
	mov	2430,r13		! source line 2430
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3238:
! SEND STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_3239 = &fileManagerLock
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
	mov	2435,r13		! source line 2435
	mov	"\0\0WH",r10
_Label_3240:
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_3243 = &openFileFreeList
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
!   if result==true then goto _Label_3241 else goto _Label_3242
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3242
	jmp	_Label_3241
_Label_3241:
	mov	2435,r13		! source line 2435
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   _temp_3244 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3245 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3244  sizeInBytes=4
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
	jmp	_Label_3240
_Label_3242:
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_3246 = &openFileFreeList
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
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3247 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3247 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3248 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3248 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3249 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3249 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_3250 = &fileManagerLock
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
	mov	2448,r13		! source line 2448
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
	.word	_Label_3251
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3253
	.word	12
	.word	4
	.word	_Label_3254
	.word	-12
	.word	4
	.word	_Label_3255
	.word	-16
	.word	4
	.word	_Label_3256
	.word	-20
	.word	4
	.word	_Label_3257
	.word	-24
	.word	4
	.word	_Label_3258
	.word	-28
	.word	4
	.word	_Label_3259
	.word	-32
	.word	4
	.word	_Label_3260
	.word	-36
	.word	4
	.word	_Label_3261
	.word	-40
	.word	4
	.word	_Label_3262
	.word	-44
	.word	4
	.word	_Label_3263
	.word	-48
	.word	4
	.word	_Label_3264
	.word	-52
	.word	4
	.word	_Label_3265
	.word	-56
	.word	4
	.word	0
_Label_3251:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3252:
	.ascii	"Pself\0"
	.align
_Label_3253:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3264:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3265:
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
_Label_3994:
	push	r0
	sub	r1,1,r1
	bne	_Label_3994
	mov	2453,r13		! source line 2453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
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
! IF STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3267		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3267
!	jmp	_Label_3266
_Label_3266:
! THEN...
	mov	2484,r13		! source line 2484
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3268 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3268  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2484,r13		! source line 2484
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3267:
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
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
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
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
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0WH",r10
_Label_3269:
!   if numFiles <= 0 then goto _Label_3271		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3271
!	jmp	_Label_3270
_Label_3270:
	mov	2494,r13		! source line 2494
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3272 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3272  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3273 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3273  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3274 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3274  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CA",r10
	call	_function_183_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3278 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3278 then goto _Label_3276		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3276
!	jmp	_Label_3277
_Label_3277:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3280
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
!   _temp_3279 = _temp_3280		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3279  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2502,r13		! source line 2502
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3275 else goto _Label_3276
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3276
	jmp	_Label_3275
_Label_3275:
! THEN...
	mov	2503,r13		! source line 2503
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0BR",r10
	jmp	_Label_3271
! END IF...
_Label_3276:
! ASSIGNMENT STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3269
_Label_3271:
! IF STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3282		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3282
!	jmp	_Label_3281
_Label_3281:
! THEN...
	mov	2511,r13		! source line 2511
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3282:
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_3283 = &fileManagerLock
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
	mov	2516,r13		! source line 2516
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3288 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3289 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3288  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3284:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3289 then goto _Label_3287		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3287
_Label_3285:
	mov	2516,r13		! source line 2516
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   _temp_3290 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3290 [i ] into _temp_3291
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
!   fcb = _temp_3291		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3295 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3294 = *_temp_3295  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3294 != start then goto _Label_3293		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3293
!	jmp	_Label_3292
_Label_3292:
! THEN...
	mov	2519,r13		! source line 2519
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3296 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3299 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3298 = *_temp_3299  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3297 = _temp_3298 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3296 = _temp_3297  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   _temp_3300 = &fileManagerLock
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
	mov	2521,r13		! source line 2521
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3293:
!   Increment the FOR-LOOP index variable and jump back
_Label_3286:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3284
! END FOR
_Label_3287:
! WHILE STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0WH",r10
_Label_3301:
	mov	2526,r13		! source line 2526
	mov	"\0\0SE",r10
!   _temp_3304 = &fcbFreeList
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
!   if result==true then goto _Label_3302 else goto _Label_3303
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3303
	jmp	_Label_3302
_Label_3302:
	mov	2526,r13		! source line 2526
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_3305 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3306 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3305  sizeInBytes=4
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
	jmp	_Label_3301
_Label_3303:
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
!   _temp_3307 = &fcbFreeList
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
	mov	2532,r13		! source line 2532
	mov	"\0\0SE",r10
!   _temp_3308 = &fileManagerLock
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
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3309 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3309 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3310 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3310 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3311 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3311 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3316 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3315 = *_temp_3316  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3315 < 0 then goto _Label_3314		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3314
	jmp	_Label_3312
_Label_3314:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3317 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3317 ) then goto _Label_3313		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3313
!	jmp	_Label_3312
_Label_3312:
! THEN...
	mov	2539,r13		! source line 2539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3318 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2539,r13		! source line 2539
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3313:
! RETURN STATEMENT...
	mov	2541,r13		! source line 2541
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
	.word	_Label_3319
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3320
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3321
	.word	12
	.word	4
	.word	_Label_3322
	.word	-12
	.word	4
	.word	_Label_3323
	.word	-16
	.word	4
	.word	_Label_3324
	.word	-20
	.word	4
	.word	_Label_3325
	.word	-24
	.word	4
	.word	_Label_3326
	.word	-28
	.word	4
	.word	_Label_3327
	.word	-32
	.word	4
	.word	_Label_3328
	.word	-36
	.word	4
	.word	_Label_3329
	.word	-40
	.word	4
	.word	_Label_3330
	.word	-44
	.word	4
	.word	_Label_3331
	.word	-48
	.word	4
	.word	_Label_3332
	.word	-52
	.word	4
	.word	_Label_3333
	.word	-56
	.word	4
	.word	_Label_3334
	.word	-60
	.word	4
	.word	_Label_3335
	.word	-64
	.word	4
	.word	_Label_3336
	.word	-68
	.word	4
	.word	_Label_3337
	.word	-72
	.word	4
	.word	_Label_3338
	.word	-76
	.word	4
	.word	_Label_3339
	.word	-80
	.word	4
	.word	_Label_3340
	.word	-84
	.word	4
	.word	_Label_3341
	.word	-88
	.word	4
	.word	_Label_3342
	.word	-92
	.word	4
	.word	_Label_3343
	.word	-96
	.word	4
	.word	_Label_3344
	.word	-100
	.word	4
	.word	_Label_3345
	.word	-104
	.word	4
	.word	_Label_3346
	.word	-108
	.word	4
	.word	_Label_3347
	.word	-112
	.word	4
	.word	_Label_3348
	.word	-116
	.word	4
	.word	_Label_3349
	.word	-120
	.word	4
	.word	_Label_3350
	.word	-124
	.word	4
	.word	_Label_3351
	.word	-128
	.word	4
	.word	_Label_3352
	.word	-132
	.word	4
	.word	_Label_3353
	.word	-136
	.word	4
	.word	_Label_3354
	.word	-140
	.word	4
	.word	_Label_3355
	.word	-144
	.word	4
	.word	_Label_3356
	.word	-148
	.word	4
	.word	_Label_3357
	.word	-152
	.word	4
	.word	_Label_3358
	.word	-156
	.word	4
	.word	_Label_3359
	.word	-160
	.word	4
	.word	0
_Label_3319:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3320:
	.ascii	"Pself\0"
	.align
_Label_3321:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3318\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3317\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3311\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3310\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3294\0"
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
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3353:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3354:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3355:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3356:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3357:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3358:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3359:
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
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	2554,r13		! source line 2554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0IF",r10
!   _temp_3362 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3362 then goto _Label_3361		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3361
!	jmp	_Label_3360
_Label_3360:
! THEN...
	mov	2557,r13		! source line 2557
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3361:
! SEND STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_3363 = &fileManagerLock
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
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_3364 = &_P_Kernel_fileManager
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
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3365 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3365  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3366 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3369 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3368 = *_temp_3369  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3367 = _temp_3368 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3366 = _temp_3367  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3373 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3372 = *_temp_3373  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3372 > 0 then goto _Label_3371		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3371
!	jmp	_Label_3370
_Label_3370:
! THEN...
	mov	2564,r13		! source line 2564
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0SE",r10
!   _temp_3374 = &openFileFreeList
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
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_3375 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3376 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3375  sizeInBytes=4
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
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3377 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3380 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3379 = *_temp_3380  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3378 = _temp_3379 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3377 = _temp_3378  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3384 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3383 = *_temp_3384  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3383 > 0 then goto _Label_3382		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3382
!	jmp	_Label_3381
_Label_3381:
! THEN...
	mov	2568,r13		! source line 2568
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_3385 = &fcbFreeList
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
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   _temp_3386 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3387 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3386  sizeInBytes=4
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
_Label_3382:
! END IF...
_Label_3371:
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_3388 = &fileManagerLock
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
	mov	2572,r13		! source line 2572
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
	.word	_Label_3389
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3391
	.word	12
	.word	4
	.word	_Label_3392
	.word	-12
	.word	4
	.word	_Label_3393
	.word	-16
	.word	4
	.word	_Label_3394
	.word	-20
	.word	4
	.word	_Label_3395
	.word	-24
	.word	4
	.word	_Label_3396
	.word	-28
	.word	4
	.word	_Label_3397
	.word	-32
	.word	4
	.word	_Label_3398
	.word	-36
	.word	4
	.word	_Label_3399
	.word	-40
	.word	4
	.word	_Label_3400
	.word	-44
	.word	4
	.word	_Label_3401
	.word	-48
	.word	4
	.word	_Label_3402
	.word	-52
	.word	4
	.word	_Label_3403
	.word	-56
	.word	4
	.word	_Label_3404
	.word	-60
	.word	4
	.word	_Label_3405
	.word	-64
	.word	4
	.word	_Label_3406
	.word	-68
	.word	4
	.word	_Label_3407
	.word	-72
	.word	4
	.word	_Label_3408
	.word	-76
	.word	4
	.word	_Label_3409
	.word	-80
	.word	4
	.word	_Label_3410
	.word	-84
	.word	4
	.word	_Label_3411
	.word	-88
	.word	4
	.word	_Label_3412
	.word	-92
	.word	4
	.word	_Label_3413
	.word	-96
	.word	4
	.word	_Label_3414
	.word	-100
	.word	4
	.word	_Label_3415
	.word	-104
	.word	4
	.word	0
_Label_3389:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3390:
	.ascii	"Pself\0"
	.align
_Label_3391:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3398:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3399:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3369\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3368\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3415:
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
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	2577,r13		! source line 2577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3419 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3418 = *_temp_3419  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3418) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3420 = _temp_3418 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3420 ) then goto _Label_3417		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3417
!	jmp	_Label_3416
_Label_3416:
! THEN...
	mov	2583,r13		! source line 2583
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3425 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3424 = *_temp_3425  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3424) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3426 = _temp_3424 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3423 = *_temp_3426  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3423 >= 0 then goto _Label_3422		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3422
!	jmp	_Label_3421
_Label_3421:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3427 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3427  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2584,r13		! source line 2584
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3422:
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3429 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3428 = *_temp_3429  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3428) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3430 = _temp_3428 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3430 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3434 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3433 = *_temp_3434  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3433) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3435 = _temp_3433 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3432 = *_temp_3435  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3438 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3437 = *_temp_3438  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3437) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3439 = _temp_3437 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3436 = *_temp_3439  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3431 = _temp_3432 + _temp_3436		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3442 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3441 = *_temp_3442  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3441) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3443 = _temp_3441 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3440 = *_temp_3443  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3444 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3431  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3440  sizeInBytes=4
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
_Label_3417:
! RETURN STATEMENT...
	mov	2582,r13		! source line 2582
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
	.word	_Label_3445
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3447
	.word	12
	.word	4
	.word	_Label_3448
	.word	-12
	.word	4
	.word	_Label_3449
	.word	-16
	.word	4
	.word	_Label_3450
	.word	-20
	.word	4
	.word	_Label_3451
	.word	-24
	.word	4
	.word	_Label_3452
	.word	-28
	.word	4
	.word	_Label_3453
	.word	-32
	.word	4
	.word	_Label_3454
	.word	-36
	.word	4
	.word	_Label_3455
	.word	-40
	.word	4
	.word	_Label_3456
	.word	-44
	.word	4
	.word	_Label_3457
	.word	-48
	.word	4
	.word	_Label_3458
	.word	-52
	.word	4
	.word	_Label_3459
	.word	-56
	.word	4
	.word	_Label_3460
	.word	-60
	.word	4
	.word	_Label_3461
	.word	-64
	.word	4
	.word	_Label_3462
	.word	-68
	.word	4
	.word	_Label_3463
	.word	-72
	.word	4
	.word	_Label_3464
	.word	-76
	.word	4
	.word	_Label_3465
	.word	-80
	.word	4
	.word	_Label_3466
	.word	-84
	.word	4
	.word	_Label_3467
	.word	-88
	.word	4
	.word	_Label_3468
	.word	-92
	.word	4
	.word	_Label_3469
	.word	-96
	.word	4
	.word	_Label_3470
	.word	-100
	.word	4
	.word	_Label_3471
	.word	-104
	.word	4
	.word	_Label_3472
	.word	-108
	.word	4
	.word	0
_Label_3445:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3446:
	.ascii	"Pself\0"
	.align
_Label_3447:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3437\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3436\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3435\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3419\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3418\0"
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
_Label_3997:
	push	r0
	sub	r1,1,r1
	bne	_Label_3997
	mov	2596,r13		! source line 2596
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
!   _temp_3473 = &fileManagerLock
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
	mov	2612,r13		! source line 2612
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3479		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3479
!   _temp_3478 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3480
_Label_3479:
!   _temp_3478 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3480:
!   if _temp_3478 then goto _Label_3477 else goto _Label_3474
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3474
	jmp	_Label_3477
_Label_3477:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3483 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3482 = *_temp_3483  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3482 == 0 then goto _Label_3484		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3484
!   _temp_3481 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3485
_Label_3484:
!   _temp_3481 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3485:
!   if _temp_3481 then goto _Label_3476 else goto _Label_3474
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3474
	jmp	_Label_3476
_Label_3476:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3488 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3487 = *_temp_3488  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3487) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3489 = _temp_3487 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3486 = *_temp_3489  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3486 >= 0 then goto _Label_3475		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3475
!	jmp	_Label_3474
_Label_3474:
! THEN...
	mov	2613,r13		! source line 2613
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3490 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3490  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2613,r13		! source line 2613
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3475:
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3491 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3491  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0WH",r10
_Label_3492:
!   if numBytes <= 0 then goto _Label_3494		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3494
!	jmp	_Label_3493
_Label_3493:
	mov	2616,r13		! source line 2616
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
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
	mov	2626,r13		! source line 2626
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
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3498 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3497 = *_temp_3498  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3497 == sector then goto _Label_3496		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3496
!	jmp	_Label_3495
_Label_3495:
! THEN...
	mov	2631,r13		! source line 2631
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3499) then goto _runtimeErrorNullPointer
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
	mov	2633,r13		! source line 2633
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3502 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3501 = *_temp_3502  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3500 = sector + _temp_3501		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3504 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3503 = *_temp_3504  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3505 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3500  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3503  sizeInBytes=4
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
	mov	2636,r13		! source line 2636
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3506 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3506 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3507 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3507 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3496:
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3509 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3508 = *_temp_3509  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3508 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
!   _temp_3510 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3510  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2640,r13		! source line 2640
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
	mov	2644,r13		! source line 2644
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3492
_Label_3494:
! SEND STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
!   _temp_3511 = &fileManagerLock
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
	mov	2655,r13		! source line 2655
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
	.word	_Label_3512
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3514
	.word	12
	.word	4
	.word	_Label_3515
	.word	16
	.word	4
	.word	_Label_3516
	.word	20
	.word	4
	.word	_Label_3517
	.word	24
	.word	4
	.word	_Label_3518
	.word	-16
	.word	4
	.word	_Label_3519
	.word	-20
	.word	4
	.word	_Label_3520
	.word	-24
	.word	4
	.word	_Label_3521
	.word	-28
	.word	4
	.word	_Label_3522
	.word	-32
	.word	4
	.word	_Label_3523
	.word	-36
	.word	4
	.word	_Label_3524
	.word	-40
	.word	4
	.word	_Label_3525
	.word	-44
	.word	4
	.word	_Label_3526
	.word	-48
	.word	4
	.word	_Label_3527
	.word	-52
	.word	4
	.word	_Label_3528
	.word	-56
	.word	4
	.word	_Label_3529
	.word	-60
	.word	4
	.word	_Label_3530
	.word	-64
	.word	4
	.word	_Label_3531
	.word	-68
	.word	4
	.word	_Label_3532
	.word	-72
	.word	4
	.word	_Label_3533
	.word	-76
	.word	4
	.word	_Label_3534
	.word	-80
	.word	4
	.word	_Label_3535
	.word	-84
	.word	4
	.word	_Label_3536
	.word	-88
	.word	4
	.word	_Label_3537
	.word	-92
	.word	4
	.word	_Label_3538
	.word	-96
	.word	4
	.word	_Label_3539
	.word	-100
	.word	4
	.word	_Label_3540
	.word	-104
	.word	4
	.word	_Label_3541
	.word	-9
	.word	1
	.word	_Label_3542
	.word	-10
	.word	1
	.word	_Label_3543
	.word	-108
	.word	4
	.word	_Label_3544
	.word	-112
	.word	4
	.word	_Label_3545
	.word	-116
	.word	4
	.word	_Label_3546
	.word	-120
	.word	4
	.word	_Label_3547
	.word	-124
	.word	4
	.word	_Label_3548
	.word	-128
	.word	4
	.word	0
_Label_3512:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3513:
	.ascii	"Pself\0"
	.align
_Label_3514:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3515:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3516:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3517:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3488\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3541:
	.byte	'C'
	.ascii	"_temp_3481\0"
	.align
_Label_3542:
	.byte	'C'
	.ascii	"_temp_3478\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3544:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3545:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3546:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3547:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3548:
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
_Label_3998:
	push	r0
	sub	r1,1,r1
	bne	_Label_3998
	mov	2660,r13		! source line 2660
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_3549 = &fileManagerLock
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
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3555		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3555
!   _temp_3554 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3556
_Label_3555:
!   _temp_3554 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3556:
!   if _temp_3554 then goto _Label_3553 else goto _Label_3550
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3550
	jmp	_Label_3553
_Label_3553:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3559 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3558 = *_temp_3559  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3558 == 0 then goto _Label_3560		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3560
!   _temp_3557 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3561
_Label_3560:
!   _temp_3557 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3561:
!   if _temp_3557 then goto _Label_3552 else goto _Label_3550
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3550
	jmp	_Label_3552
_Label_3552:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3564 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3563 = *_temp_3564  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3563) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3565 = _temp_3563 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3562 = *_temp_3565  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3562 >= 0 then goto _Label_3551		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3551
!	jmp	_Label_3550
_Label_3550:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3566 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3566  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2678,r13		! source line 2678
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3551:
! ASSIGNMENT STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3567 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3567  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0WH",r10
_Label_3568:
!   if numBytes <= 0 then goto _Label_3570		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3570
!	jmp	_Label_3569
_Label_3569:
	mov	2681,r13		! source line 2681
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2690,r13		! source line 2690
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
	mov	2691,r13		! source line 2691
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
	mov	2695,r13		! source line 2695
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3574 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3573 = *_temp_3574  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3573 == sector then goto _Label_3572		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3572
!	jmp	_Label_3571
_Label_3571:
! THEN...
	mov	2697,r13		! source line 2697
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3575) then goto _runtimeErrorNullPointer
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
_Label_3572:
! ASSIGNMENT STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3577 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3576 = *_temp_3577  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3576 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0AS",r10
!   _temp_3578 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3578  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2700,r13		! source line 2700
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3582 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3581 = *_temp_3582  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3581 != sector then goto _Label_3580		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3580
!	jmp	_Label_3579
_Label_3579:
	jmp	_Label_3583
_Label_3580:
! ELSE...
	mov	2703,r13		! source line 2703
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3586
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3586
	jmp	_Label_3585
_Label_3586:
!   if bytesToMove != 8192 then goto _Label_3585		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3585
!	jmp	_Label_3584
_Label_3584:
	jmp	_Label_3587
_Label_3585:
! ELSE...
	mov	2707,r13		! source line 2707
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3590 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3589 = *_temp_3590  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3588 = sector + _temp_3589		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3592 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3591 = *_temp_3592  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3593 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3588  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3591  sizeInBytes=4
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
_Label_3587:
! END IF...
_Label_3583:
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3594 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3594 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3595 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3595 = 1  (sizeInBytes=1)
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
	mov	2716,r13		! source line 2716
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3568
_Label_3570:
! SEND STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   _temp_3596 = &fileManagerLock
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
	mov	2728,r13		! source line 2728
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
	.word	_Label_3597
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3599
	.word	12
	.word	4
	.word	_Label_3600
	.word	16
	.word	4
	.word	_Label_3601
	.word	20
	.word	4
	.word	_Label_3602
	.word	24
	.word	4
	.word	_Label_3603
	.word	-16
	.word	4
	.word	_Label_3604
	.word	-20
	.word	4
	.word	_Label_3605
	.word	-24
	.word	4
	.word	_Label_3606
	.word	-28
	.word	4
	.word	_Label_3607
	.word	-32
	.word	4
	.word	_Label_3608
	.word	-36
	.word	4
	.word	_Label_3609
	.word	-40
	.word	4
	.word	_Label_3610
	.word	-44
	.word	4
	.word	_Label_3611
	.word	-48
	.word	4
	.word	_Label_3612
	.word	-52
	.word	4
	.word	_Label_3613
	.word	-56
	.word	4
	.word	_Label_3614
	.word	-60
	.word	4
	.word	_Label_3615
	.word	-64
	.word	4
	.word	_Label_3616
	.word	-68
	.word	4
	.word	_Label_3617
	.word	-72
	.word	4
	.word	_Label_3618
	.word	-76
	.word	4
	.word	_Label_3619
	.word	-80
	.word	4
	.word	_Label_3620
	.word	-84
	.word	4
	.word	_Label_3621
	.word	-88
	.word	4
	.word	_Label_3622
	.word	-92
	.word	4
	.word	_Label_3623
	.word	-96
	.word	4
	.word	_Label_3624
	.word	-100
	.word	4
	.word	_Label_3625
	.word	-104
	.word	4
	.word	_Label_3626
	.word	-108
	.word	4
	.word	_Label_3627
	.word	-112
	.word	4
	.word	_Label_3628
	.word	-9
	.word	1
	.word	_Label_3629
	.word	-10
	.word	1
	.word	_Label_3630
	.word	-116
	.word	4
	.word	_Label_3631
	.word	-120
	.word	4
	.word	_Label_3632
	.word	-124
	.word	4
	.word	_Label_3633
	.word	-128
	.word	4
	.word	_Label_3634
	.word	-132
	.word	4
	.word	_Label_3635
	.word	-136
	.word	4
	.word	0
_Label_3597:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3598:
	.ascii	"Pself\0"
	.align
_Label_3599:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3600:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3601:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3602:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3578\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3577\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3573\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3565\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3628:
	.byte	'C'
	.ascii	"_temp_3557\0"
	.align
_Label_3629:
	.byte	'C'
	.ascii	"_temp_3554\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3631:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3632:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3633:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3634:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3635:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3636
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3636:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3637
	.word	_sourceFileName
	.word	355		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3637:
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
_Label_3999:
	push	r0
	sub	r1,1,r1
	bne	_Label_3999
	mov	2764,r13		! source line 2764
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_3638 = &_P_Kernel_frameManager
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
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2769,r13		! source line 2769
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
	.word	_Label_3639
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3640
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3641
	.word	-12
	.word	4
	.word	0
_Label_3639:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3640:
	.ascii	"Pself\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3638\0"
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
_Label_4000:
	push	r0
	sub	r1,1,r1
	bne	_Label_4000
	mov	2774,r13		! source line 2774
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3642 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3642  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3643 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3643  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2777,r13		! source line 2777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2778,r13		! source line 2778
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3644 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3644  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2779,r13		! source line 2779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2780,r13		! source line 2780
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3645 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3645  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2781,r13		! source line 2781
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2782,r13		! source line 2782
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3646 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3646  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2783,r13		! source line 2783
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2784,r13		! source line 2784
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3647 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3647  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2785,r13		! source line 2785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2787,r13		! source line 2787
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2787,r13		! source line 2787
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
	.word	_Label_3648
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3650
	.word	-12
	.word	4
	.word	_Label_3651
	.word	-16
	.word	4
	.word	_Label_3652
	.word	-20
	.word	4
	.word	_Label_3653
	.word	-24
	.word	4
	.word	_Label_3654
	.word	-28
	.word	4
	.word	_Label_3655
	.word	-32
	.word	4
	.word	0
_Label_3648:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3649:
	.ascii	"Pself\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3643\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3656
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3656:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3657
	.word	_sourceFileName
	.word	372		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3657:
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
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	2798,r13		! source line 2798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3658 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3658  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3659 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3659  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2801,r13		! source line 2801
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3661		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3661
!	jmp	_Label_3660
_Label_3660:
! THEN...
	mov	2803,r13		! source line 2803
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2803,r13		! source line 2803
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
	jmp	_Label_3662
_Label_3661:
! ELSE...
	mov	2805,r13		! source line 2805
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3663 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3663  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2805,r13		! source line 2805
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3662:
! RETURN STATEMENT...
	mov	2802,r13		! source line 2802
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
	.word	_Label_3664
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3666
	.word	-12
	.word	4
	.word	_Label_3667
	.word	-16
	.word	4
	.word	_Label_3668
	.word	-20
	.word	4
	.word	0
_Label_3664:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3665:
	.ascii	"Pself\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3667:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3668:
	.byte	'?'
	.ascii	"_temp_3658\0"
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
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	2811,r13		! source line 2811
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
!   _temp_3669 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3670 = _temp_3669 + 4
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
	mov	2822,r13		! source line 2822
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2823,r13		! source line 2823
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
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_3671 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3672 = _temp_3671 + 4
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
	mov	2825,r13		! source line 2825
	mov	"\0\0RE",r10
	mov	2825,r13		! source line 2825
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3675 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3674  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3673  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3673  (sizeInBytes=1)
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
	.word	_Label_3676
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3678
	.word	12
	.word	4
	.word	_Label_3679
	.word	16
	.word	4
	.word	_Label_3680
	.word	-16
	.word	4
	.word	_Label_3681
	.word	-20
	.word	4
	.word	_Label_3682
	.word	-9
	.word	1
	.word	_Label_3683
	.word	-24
	.word	4
	.word	_Label_3684
	.word	-28
	.word	4
	.word	_Label_3685
	.word	-32
	.word	4
	.word	_Label_3686
	.word	-36
	.word	4
	.word	_Label_3687
	.word	-40
	.word	4
	.word	0
_Label_3676:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3677:
	.ascii	"Pself\0"
	.align
_Label_3678:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3679:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3681:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3682:
	.byte	'C'
	.ascii	"_temp_3673\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3687:
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
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	2830,r13		! source line 2830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0IF",r10
	mov	2835,r13		! source line 2835
	mov	"\0\0SE",r10
!   _temp_3691 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3692) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3691  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3690  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3690 then goto _Label_3689 else goto _Label_3688
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3688
	jmp	_Label_3689
_Label_3688:
! THEN...
	mov	2836,r13		! source line 2836
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3693 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3693  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2836,r13		! source line 2836
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3689:
! RETURN STATEMENT...
	mov	2838,r13		! source line 2838
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
	.word	_Label_3694
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3696
	.word	-16
	.word	4
	.word	_Label_3697
	.word	-20
	.word	4
	.word	_Label_3698
	.word	-24
	.word	4
	.word	_Label_3699
	.word	-9
	.word	1
	.word	_Label_3700
	.word	-28
	.word	4
	.word	0
_Label_3694:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3695:
	.ascii	"Pself\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3697:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3699:
	.byte	'C'
	.ascii	"_temp_3690\0"
	.align
_Label_3700:
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
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	2843,r13		! source line 2843
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3704 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3703 = *_temp_3704  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3703) then goto _Label_3702
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3702
!	jmp	_Label_3701
_Label_3701:
! THEN...
	mov	2870,r13		! source line 2870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3705 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3705  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2870,r13		! source line 2870
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3702:
! IF STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0IF",r10
	mov	2874,r13		! source line 2874
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3709) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3708  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3708 == 1112300152 then goto _Label_3707		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3707
!	jmp	_Label_3706
_Label_3706:
! THEN...
	mov	2875,r13		! source line 2875
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3710 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3710  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3707:
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3711) then goto _runtimeErrorNullPointer
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
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
	mov	2881,r13		! source line 2881
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3712) then goto _runtimeErrorNullPointer
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
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3713) then goto _runtimeErrorNullPointer
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
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
	mov	2883,r13		! source line 2883
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3714) then goto _runtimeErrorNullPointer
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
	mov	2884,r13		! source line 2884
	mov	"\0\0AS",r10
	mov	2884,r13		! source line 2884
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3715) then goto _runtimeErrorNullPointer
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
	mov	2885,r13		! source line 2885
	mov	"\0\0AS",r10
	mov	2885,r13		! source line 2885
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3716) then goto _runtimeErrorNullPointer
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
	mov	2888,r13		! source line 2888
	mov	"\0\0IF",r10
!   _temp_3719 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3719) then goto _Label_3718
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3718
!	jmp	_Label_3717
_Label_3717:
! THEN...
	mov	2889,r13		! source line 2889
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3720 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3720  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3718:
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
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
	mov	2896,r13		! source line 2896
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3722
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3722
!	jmp	_Label_3721
_Label_3721:
! THEN...
	mov	2897,r13		! source line 2897
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3723 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3723  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3722:
! IF STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0IF",r10
!   _temp_3726 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3726) then goto _Label_3725
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3725
!	jmp	_Label_3724
_Label_3724:
! THEN...
	mov	2903,r13		! source line 2903
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3727 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3727  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2903,r13		! source line 2903
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3725:
! IF STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0IF",r10
!   _temp_3730 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3730 then goto _Label_3729		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3729
!	jmp	_Label_3728
_Label_3728:
! THEN...
	mov	2907,r13		! source line 2907
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3731 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3731  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3729:
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
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
	mov	2913,r13		! source line 2913
	mov	"\0\0IF",r10
!   _temp_3734 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3734) then goto _Label_3733
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3733
!	jmp	_Label_3732
_Label_3732:
! THEN...
	mov	2914,r13		! source line 2914
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3735 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3735  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3733:
! IF STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0IF",r10
!   _temp_3738 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3738 then goto _Label_3737		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3737
!	jmp	_Label_3736
_Label_3736:
! THEN...
	mov	2918,r13		! source line 2918
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3739 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3739  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3737:
! ASSIGNMENT STATEMENT...
	mov	2921,r13		! source line 2921
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
	mov	2924,r13		! source line 2924
	mov	"\0\0AS",r10
!   _temp_3742 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3741 = _temp_3742 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3740 = _temp_3741 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3740 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3744		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3744
!	jmp	_Label_3743
_Label_3743:
! THEN...
	mov	2940,r13		! source line 2940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3745 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3745  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2940,r13		! source line 2940
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3746 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3746  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3747 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3747  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2942,r13		! source line 2942
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3744:
! SEND STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0SE",r10
!   _temp_3748 = &_P_Kernel_frameManager
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
	mov	2951,r13		! source line 2951
	mov	"\0\0IF",r10
	mov	2951,r13		! source line 2951
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3752) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3751  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3751 == 707406378 then goto _Label_3750		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3750
!	jmp	_Label_3749
_Label_3749:
! THEN...
	mov	2952,r13		! source line 2952
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3753 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3753  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2952,r13		! source line 2952
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0SE",r10
!   _temp_3754 = &_P_Kernel_frameManager
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
	mov	2954,r13		! source line 2954
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3750:
! ASSIGNMENT STATEMENT...
	mov	2958,r13		! source line 2958
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
	mov	2959,r13		! source line 2959
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3759 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3760 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3759  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3755:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3760 then goto _Label_3758		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3758
_Label_3756:
	mov	2959,r13		! source line 2959
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0AS",r10
	mov	2960,r13		! source line 2960
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
	mov	2963,r13		! source line 2963
	mov	"\0\0IF",r10
	mov	2963,r13		! source line 2963
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3764) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3763  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3763 then goto _Label_3762 else goto _Label_3761
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3761
	jmp	_Label_3762
_Label_3761:
! THEN...
	mov	2964,r13		! source line 2964
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3765 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3765  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2964,r13		! source line 2964
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0SE",r10
!   _temp_3766 = &_P_Kernel_frameManager
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
	mov	2966,r13		! source line 2966
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3762:
! SEND STATEMENT...
	mov	2968,r13		! source line 2968
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
	mov	2969,r13		! source line 2969
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3757:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3755
! END FOR
_Label_3758:
! IF STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0IF",r10
	mov	2973,r13		! source line 2973
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3770) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3769  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3769 == 707406378 then goto _Label_3768		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3768
!	jmp	_Label_3767
_Label_3767:
! THEN...
	mov	2974,r13		! source line 2974
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3771 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3771  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2974,r13		! source line 2974
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
!   _temp_3772 = &_P_Kernel_frameManager
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
	mov	2976,r13		! source line 2976
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3768:
! FOR STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3777 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3778 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3777  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3773:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3778 then goto _Label_3776		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3776
_Label_3774:
	mov	2980,r13		! source line 2980
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
	mov	2981,r13		! source line 2981
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
	mov	2984,r13		! source line 2984
	mov	"\0\0IF",r10
	mov	2984,r13		! source line 2984
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3782) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3781  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3781 then goto _Label_3780 else goto _Label_3779
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3779
	jmp	_Label_3780
_Label_3779:
! THEN...
	mov	2985,r13		! source line 2985
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3783 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3783  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2985,r13		! source line 2985
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
!   _temp_3784 = &_P_Kernel_frameManager
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
_Label_3780:
! ASSIGNMENT STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3775:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3773
! END FOR
_Label_3776:
! IF STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0IF",r10
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3788) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3787  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3787 == 707406378 then goto _Label_3786		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3786
!	jmp	_Label_3785
_Label_3785:
! THEN...
	mov	2994,r13		! source line 2994
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3789 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3789  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2994,r13		! source line 2994
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
!   _temp_3790 = &_P_Kernel_frameManager
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
	mov	2996,r13		! source line 2996
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3786:
! ASSIGNMENT STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0AS",r10
	mov	3000,r13		! source line 3000
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
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3007,r13		! source line 3007
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
	.word	_Label_3791
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3792
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3793
	.word	12
	.word	4
	.word	_Label_3794
	.word	-16
	.word	4
	.word	_Label_3795
	.word	-20
	.word	4
	.word	_Label_3796
	.word	-24
	.word	4
	.word	_Label_3797
	.word	-28
	.word	4
	.word	_Label_3798
	.word	-32
	.word	4
	.word	_Label_3799
	.word	-36
	.word	4
	.word	_Label_3800
	.word	-40
	.word	4
	.word	_Label_3801
	.word	-9
	.word	1
	.word	_Label_3802
	.word	-44
	.word	4
	.word	_Label_3803
	.word	-48
	.word	4
	.word	_Label_3804
	.word	-52
	.word	4
	.word	_Label_3805
	.word	-56
	.word	4
	.word	_Label_3806
	.word	-60
	.word	4
	.word	_Label_3807
	.word	-64
	.word	4
	.word	_Label_3808
	.word	-68
	.word	4
	.word	_Label_3809
	.word	-72
	.word	4
	.word	_Label_3810
	.word	-76
	.word	4
	.word	_Label_3811
	.word	-10
	.word	1
	.word	_Label_3812
	.word	-80
	.word	4
	.word	_Label_3813
	.word	-84
	.word	4
	.word	_Label_3814
	.word	-88
	.word	4
	.word	_Label_3815
	.word	-92
	.word	4
	.word	_Label_3816
	.word	-96
	.word	4
	.word	_Label_3817
	.word	-100
	.word	4
	.word	_Label_3818
	.word	-104
	.word	4
	.word	_Label_3819
	.word	-108
	.word	4
	.word	_Label_3820
	.word	-112
	.word	4
	.word	_Label_3821
	.word	-116
	.word	4
	.word	_Label_3822
	.word	-120
	.word	4
	.word	_Label_3823
	.word	-124
	.word	4
	.word	_Label_3824
	.word	-128
	.word	4
	.word	_Label_3825
	.word	-132
	.word	4
	.word	_Label_3826
	.word	-136
	.word	4
	.word	_Label_3827
	.word	-140
	.word	4
	.word	_Label_3828
	.word	-144
	.word	4
	.word	_Label_3829
	.word	-148
	.word	4
	.word	_Label_3830
	.word	-152
	.word	4
	.word	_Label_3831
	.word	-156
	.word	4
	.word	_Label_3832
	.word	-160
	.word	4
	.word	_Label_3833
	.word	-164
	.word	4
	.word	_Label_3834
	.word	-168
	.word	4
	.word	_Label_3835
	.word	-172
	.word	4
	.word	_Label_3836
	.word	-176
	.word	4
	.word	_Label_3837
	.word	-180
	.word	4
	.word	_Label_3838
	.word	-184
	.word	4
	.word	_Label_3839
	.word	-188
	.word	4
	.word	_Label_3840
	.word	-192
	.word	4
	.word	_Label_3841
	.word	-196
	.word	4
	.word	_Label_3842
	.word	-200
	.word	4
	.word	_Label_3843
	.word	-204
	.word	4
	.word	_Label_3844
	.word	-208
	.word	4
	.word	_Label_3845
	.word	-212
	.word	4
	.word	_Label_3846
	.word	-216
	.word	4
	.word	_Label_3847
	.word	-220
	.word	4
	.word	_Label_3848
	.word	-224
	.word	4
	.word	_Label_3849
	.word	-228
	.word	4
	.word	_Label_3850
	.word	-232
	.word	4
	.word	_Label_3851
	.word	-236
	.word	4
	.word	_Label_3852
	.word	-240
	.word	4
	.word	_Label_3853
	.word	-244
	.word	4
	.word	_Label_3854
	.word	-248
	.word	4
	.word	_Label_3855
	.word	-252
	.word	4
	.word	_Label_3856
	.word	-256
	.word	4
	.word	_Label_3857
	.word	-260
	.word	4
	.word	_Label_3858
	.word	-264
	.word	4
	.word	_Label_3859
	.word	-268
	.word	4
	.word	0
_Label_3791:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3792:
	.ascii	"Pself\0"
	.align
_Label_3793:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3794:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3795:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3796:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3797:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3798:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3799:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3800:
	.byte	'?'
	.ascii	"_temp_3782\0"
	.align
_Label_3801:
	.byte	'C'
	.ascii	"_temp_3781\0"
	.align
_Label_3802:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3803:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3769\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3809:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3810:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3811:
	.byte	'C'
	.ascii	"_temp_3763\0"
	.align
_Label_3812:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3813:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3814:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3827:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3828:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3829:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
_Label_3830:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3831:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3836:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3715\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3714\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3713\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3712\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3711\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3710\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3709\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3708\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3848:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3849:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3850:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3851:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3852:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3853:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3854:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3855:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3856:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3857:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3858:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3859:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
