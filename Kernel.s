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
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	148
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_185:
	.word	15			! length
	.ascii	"\' was ignored \n"
	.align
_StringConst_184:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_183:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_182:
	.word	29			! length
	.ascii	"Initializing Serial Driver..."
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_180:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_178:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_177:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_176:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_175:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_174:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_173:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_172:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_170:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_168:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_167:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_166:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_165:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_164:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_163:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_162:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_161:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_160:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_159:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_158:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_157:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_156:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_155:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_154:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_153:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_152:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_151:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_150:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_149:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_148:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_147:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_146:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_145:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_143:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_142:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_141:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_140:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_139:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_138:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_137:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_136:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_135:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_134:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_133:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_132:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_131:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_130:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_129:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_128:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_114:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_110:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_109:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_108:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_107:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_106:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_105:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_104:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_103:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_102:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_99:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_98:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_94:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_93:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_92:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_90:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_89:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_88:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_87:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_86:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_85:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_84:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_82:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_81:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_80:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_78:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_77:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_76:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_69:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_68:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_67:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_66:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_65:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_64:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_63:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_62:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_61:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_60:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_59:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_58:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_57:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_55:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_53:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_52:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_50:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_46:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_44:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_43:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_42:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_41:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_40:
	.word	8			! length
	.ascii	"terminal"
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
	.ascii	"TestProgram5"
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
	set	0x451855e3,r4		! myHashVal = 1159222755
	cmp	r3,r4
	be	_Label_196
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
_Label_196:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_197
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_197
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_197
_Label_197:
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
_Label_4311:
	push	r0
	sub	r1,1,r1
	bne	_Label_4311
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_198 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_198  sizeInBytes=4
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
_Label_4312:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4312
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_202 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_203 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_202  sizeInBytes=4
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
!   _temp_204 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_205 = _temp_204 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_205 = 3  (sizeInBytes=4)
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
_Label_4313:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4313
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_207 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_208 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_207  sizeInBytes=4
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
!   _temp_209 = _function_195_IdleFunction
	set	_function_195_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_210 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
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
	.word	_Label_211
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_212
	.word	-12
	.word	4
	.word	_Label_213
	.word	-16
	.word	4
	.word	_Label_214
	.word	-20
	.word	4
	.word	_Label_215
	.word	-24
	.word	4
	.word	_Label_216
	.word	-28
	.word	4
	.word	_Label_217
	.word	-32
	.word	4
	.word	_Label_218
	.word	-36
	.word	4
	.word	_Label_219
	.word	-40
	.word	4
	.word	_Label_220
	.word	-44
	.word	4
	.word	_Label_221
	.word	-48
	.word	4
	.word	_Label_222
	.word	-52
	.word	4
	.word	_Label_223
	.word	-56
	.word	4
	.word	_Label_224
	.word	-60
	.word	4
	.word	0
_Label_211:
	.ascii	"InitializeScheduler\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_195_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4314:
	push	r0
	sub	r1,1,r1
	bne	_Label_4314
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_225:
!	jmp	_Label_226
_Label_226:
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
!   _temp_230 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_228 else goto _Label_229
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_229
	jmp	_Label_228
_Label_228:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_231
_Label_229:
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
_Label_231:
! END WHILE...
	jmp	_Label_225
_Label_227:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_IdleFunction:
	.word	_sourceFileName
	.word	_Label_232
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_233
	.word	8
	.word	4
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	0
_Label_232:
	.ascii	"IdleFunction\0"
	.align
_Label_233:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
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
_Label_4315:
	push	r0
	sub	r1,1,r1
	bne	_Label_4315
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
!   _temp_238 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_238 ) then goto _Label_237		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_237
!	jmp	_Label_236
_Label_236:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_240 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_240 [0 ] into _temp_241
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
!   _temp_239 = _temp_241		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_237:
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
!   _temp_242 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_242 = 3  (sizeInBytes=4)
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
_Label_243:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_247 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_246  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_246 then goto _Label_245 else goto _Label_244
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_244
	jmp	_Label_245
_Label_244:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_248 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_249 = &_P_Kernel_threadManager
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
	jmp	_Label_243
_Label_245:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_252 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_252 ) then goto _Label_251		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_251
!	jmp	_Label_250
_Label_250:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_254 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_254 [0 ] into _temp_255
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
!   _temp_253 = _temp_255		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
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
!   _temp_257 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_256 = *_temp_257  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_256) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = _temp_256 + 32
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
_Label_251:
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
	.word	_Label_259
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_260
	.word	8
	.word	4
	.word	_Label_261
	.word	-16
	.word	4
	.word	_Label_262
	.word	-20
	.word	4
	.word	_Label_263
	.word	-24
	.word	4
	.word	_Label_264
	.word	-28
	.word	4
	.word	_Label_265
	.word	-32
	.word	4
	.word	_Label_266
	.word	-36
	.word	4
	.word	_Label_267
	.word	-40
	.word	4
	.word	_Label_268
	.word	-44
	.word	4
	.word	_Label_269
	.word	-48
	.word	4
	.word	_Label_270
	.word	-52
	.word	4
	.word	_Label_271
	.word	-9
	.word	1
	.word	_Label_272
	.word	-56
	.word	4
	.word	_Label_273
	.word	-60
	.word	4
	.word	_Label_274
	.word	-64
	.word	4
	.word	_Label_275
	.word	-68
	.word	4
	.word	_Label_276
	.word	-72
	.word	4
	.word	_Label_277
	.word	-76
	.word	4
	.word	_Label_278
	.word	-80
	.word	4
	.word	0
_Label_259:
	.ascii	"Run\0"
	.align
_Label_260:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_271:
	.byte	'C'
	.ascii	"_temp_246\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_277:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_278:
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
_Label_4316:
	push	r0
	sub	r1,1,r1
	bne	_Label_4316
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
!   _temp_279 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_280 = _function_193_ThreadPrintShort
	set	_function_193_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_281 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_280  sizeInBytes=4
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
	.word	_Label_282
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_283
	.word	-12
	.word	4
	.word	_Label_284
	.word	-16
	.word	4
	.word	_Label_285
	.word	-20
	.word	4
	.word	_Label_286
	.word	-24
	.word	4
	.word	0
_Label_282:
	.ascii	"PrintReadyList\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_286:
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
_Label_4317:
	push	r0
	sub	r1,1,r1
	bne	_Label_4317
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
!   _temp_287 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_287  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_288 = *_temp_289  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
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
!   _temp_290 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
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
	.word	_Label_291
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	_Label_296
	.word	-28
	.word	4
	.word	_Label_297
	.word	-32
	.word	4
	.word	0
_Label_291:
	.ascii	"ThreadStartMain\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_296:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_297:
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
_Label_4318:
	push	r0
	sub	r1,1,r1
	bne	_Label_4318
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
!   _temp_298 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_299 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
	.word	_Label_300
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_301
	.word	-12
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	0
_Label_300:
	.ascii	"ThreadFinish\0"
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
_Label_4319:
	push	r0
	sub	r1,1,r1
	bne	_Label_4319
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
!   _temp_304 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_306		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_306
!	jmp	_Label_305
_Label_305:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_307 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
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
!   _temp_309 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_308 = *_temp_309  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_306:
! CALL STATEMENT...
!   _temp_310 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
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
!   _temp_311 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_312 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
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
	.word	_Label_313
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-12
	.word	4
	.word	_Label_316
	.word	-16
	.word	4
	.word	_Label_317
	.word	-20
	.word	4
	.word	_Label_318
	.word	-24
	.word	4
	.word	_Label_319
	.word	-28
	.word	4
	.word	_Label_320
	.word	-32
	.word	4
	.word	_Label_321
	.word	-36
	.word	4
	.word	_Label_322
	.word	-40
	.word	4
	.word	0
_Label_313:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_322:
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
_Label_4320:
	push	r0
	sub	r1,1,r1
	bne	_Label_4320
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
!   if newStatus != 1 then goto _Label_324		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_324
!	jmp	_Label_323
_Label_323:
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
	jmp	_Label_325
_Label_324:
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
_Label_325:
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
	.word	_Label_326
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_327:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_328:
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
_Label_4321:
	push	r0
	sub	r1,1,r1
	bne	_Label_4321
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0AS",r10
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_329 = &_P_Kernel_threadManager
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
!   _temp_330 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_330  sizeInBytes=4
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
!   _temp_331 = _function_194_StartUserProcess
	set	_function_194_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (userProgram) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_331  sizeInBytes=4
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
	.word	_Label_332
	.word	0		! total size of parameters
	.word	28		! frame size = 28
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
	.word	0
_Label_332:
	.ascii	"InitFirstProcess\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_336:
	.byte	'P'
	.ascii	"userProgram\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_194_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_4322:
	push	r0
	sub	r1,1,r1
	bne	_Label_4322
	mov	213,r13		! source line 213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	mov	221,r13		! source line 221
	mov	"\0\0SE",r10
!   _temp_337 = &_P_Kernel_processManager
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
!   _temp_338 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_338 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_339 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_339 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_340 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-56]
!   _temp_341 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_340  sizeInBytes=4
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
!   _temp_343 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_342 = _temp_343		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_342  sizeInBytes=4
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
!   _temp_344 = &_P_Kernel_fileManager
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
!   _temp_346 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_347 = _temp_346 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_345 = *_temp_347  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_345 * 8192		(int)
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
!   _temp_348 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_348 [999 ] into _temp_349
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
!   initSystemStackTop = _temp_349		(4 bytes)
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
!   _temp_350 = pcb + 32
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
!   _temp_351 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_351 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_194_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_352
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_353
	.word	8
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	_Label_361
	.word	-40
	.word	4
	.word	_Label_362
	.word	-44
	.word	4
	.word	_Label_363
	.word	-48
	.word	4
	.word	_Label_364
	.word	-52
	.word	4
	.word	_Label_365
	.word	-56
	.word	4
	.word	_Label_366
	.word	-60
	.word	4
	.word	_Label_367
	.word	-64
	.word	4
	.word	_Label_368
	.word	-68
	.word	4
	.word	_Label_369
	.word	-72
	.word	4
	.word	_Label_370
	.word	-76
	.word	4
	.word	_Label_371
	.word	-80
	.word	4
	.word	_Label_372
	.word	-84
	.word	4
	.word	_Label_373
	.word	-88
	.word	4
	.word	_Label_374
	.word	-92
	.word	4
	.word	0
_Label_352:
	.ascii	"StartUserProcess\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_369:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_370:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_371:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_372:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_193_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4323:
	push	r0
	sub	r1,1,r1
	bne	_Label_4323
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
!   if t == 0 then goto _Label_378		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_378
!   _temp_377 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_379
_Label_378:
!   _temp_377 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_379:
!   if _temp_377 then goto _Label_376 else goto _Label_375
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_375
	jmp	_Label_376
_Label_375:
! THEN...
	mov	681,r13		! source line 681
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_380 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
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
_Label_376:
! CALL STATEMENT...
!   _temp_381 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
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
!   _temp_383 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_382 = *_temp_383  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_384 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
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
!   _temp_393 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_392 = *_temp_393  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_387
	cmp	r1,2
	be	_Label_388
	cmp	r1,3
	be	_Label_389
	cmp	r1,4
	be	_Label_390
	cmp	r1,5
	be	_Label_391
	jmp	_Label_385
! CASE 1...
_Label_387:
! CALL STATEMENT...
!   _temp_394 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 2...
_Label_388:
! CALL STATEMENT...
!   _temp_395 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	693,r13		! source line 693
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 3...
_Label_389:
! CALL STATEMENT...
!   _temp_396 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 4...
_Label_390:
! CALL STATEMENT...
!   _temp_397 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0BR",r10
	jmp	_Label_386
! CASE 5...
_Label_391:
! CALL STATEMENT...
!   _temp_398 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0BR",r10
	jmp	_Label_386
! DEFAULT CASE...
_Label_385:
! CALL STATEMENT...
!   _temp_399 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
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
_Label_386:
! CALL STATEMENT...
!   _temp_400 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_401 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_402 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
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
_RoutineDescriptor__function_193_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-16
	.word	4
	.word	_Label_406
	.word	-20
	.word	4
	.word	_Label_407
	.word	-24
	.word	4
	.word	_Label_408
	.word	-28
	.word	4
	.word	_Label_409
	.word	-32
	.word	4
	.word	_Label_410
	.word	-36
	.word	4
	.word	_Label_411
	.word	-40
	.word	4
	.word	_Label_412
	.word	-44
	.word	4
	.word	_Label_413
	.word	-48
	.word	4
	.word	_Label_414
	.word	-52
	.word	4
	.word	_Label_415
	.word	-56
	.word	4
	.word	_Label_416
	.word	-60
	.word	4
	.word	_Label_417
	.word	-64
	.word	4
	.word	_Label_418
	.word	-68
	.word	4
	.word	_Label_419
	.word	-72
	.word	4
	.word	_Label_420
	.word	-76
	.word	4
	.word	_Label_421
	.word	-9
	.word	1
	.word	_Label_422
	.word	-80
	.word	4
	.word	0
_Label_403:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_404:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_421:
	.byte	'C'
	.ascii	"_temp_377\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_192_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4324:
	push	r0
	sub	r1,1,r1
	bne	_Label_4324
	mov	1040,r13		! source line 1040
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_423 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
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
_RoutineDescriptor__function_192_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	-12
	.word	4
	.word	0
_Label_424:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_423\0"
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
_Label_4325:
	push	r0
	sub	r1,1,r1
	bne	_Label_4325
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
!   _temp_428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_427 = *_temp_428  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = _temp_427 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_429 = exitStatus  (sizeInBytes=4)
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
!   _temp_430 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_430 = 0  (sizeInBytes=1)
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
!   _temp_433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_432 = *_temp_433  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_432) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _temp_432 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_431 = _temp_434		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_435 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_431  sizeInBytes=4
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
!   _temp_437 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_436 = *_temp_437  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_438 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_436  sizeInBytes=4
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
!   _temp_443 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_444 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_443  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_439:
!   Perform the FOR-LOOP termination test
!   if i > _temp_444 then goto _Label_442		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_442
_Label_440:
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
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_448) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = _temp_448 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_450 [i ] into _temp_451
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
!   Data Move: _temp_447 = *_temp_451  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_447) then goto _Label_446
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_446
!	jmp	_Label_445
_Label_445:
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
!   _temp_454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_453 = *_temp_454  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_453) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_455 = _temp_453 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_455 [i ] into _temp_456
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
!   Data Move: _temp_452 = *_temp_456  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_457 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_452  sizeInBytes=4
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
!   _temp_459 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_458 = *_temp_459  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_460 = _temp_458 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_460 [i ] into _temp_461
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
!   Data Move: *_temp_461 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_446:
!   Increment the FOR-LOOP index variable and jump back
_Label_441:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_439
! END FOR
_Label_442:
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_462 = *_temp_463  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_462) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = _temp_462 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_464 = 0  (sizeInBytes=4)
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
!   _temp_465 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_465 = 0  (sizeInBytes=4)
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
	.word	_Label_466
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_467
	.word	8
	.word	4
	.word	_Label_468
	.word	-12
	.word	4
	.word	_Label_469
	.word	-16
	.word	4
	.word	_Label_470
	.word	-20
	.word	4
	.word	_Label_471
	.word	-24
	.word	4
	.word	_Label_472
	.word	-28
	.word	4
	.word	_Label_473
	.word	-32
	.word	4
	.word	_Label_474
	.word	-36
	.word	4
	.word	_Label_475
	.word	-40
	.word	4
	.word	_Label_476
	.word	-44
	.word	4
	.word	_Label_477
	.word	-48
	.word	4
	.word	_Label_478
	.word	-52
	.word	4
	.word	_Label_479
	.word	-56
	.word	4
	.word	_Label_480
	.word	-60
	.word	4
	.word	_Label_481
	.word	-64
	.word	4
	.word	_Label_482
	.word	-68
	.word	4
	.word	_Label_483
	.word	-72
	.word	4
	.word	_Label_484
	.word	-76
	.word	4
	.word	_Label_485
	.word	-80
	.word	4
	.word	_Label_486
	.word	-84
	.word	4
	.word	_Label_487
	.word	-88
	.word	4
	.word	_Label_488
	.word	-92
	.word	4
	.word	_Label_489
	.word	-96
	.word	4
	.word	_Label_490
	.word	-100
	.word	4
	.word	_Label_491
	.word	-104
	.word	4
	.word	_Label_492
	.word	-108
	.word	4
	.word	_Label_493
	.word	-112
	.word	4
	.word	_Label_494
	.word	-116
	.word	4
	.word	_Label_495
	.word	-120
	.word	4
	.word	_Label_496
	.word	-124
	.word	4
	.word	_Label_497
	.word	-128
	.word	4
	.word	_Label_498
	.word	-132
	.word	4
	.word	_Label_499
	.word	-136
	.word	4
	.word	_Label_500
	.word	-140
	.word	4
	.word	_Label_501
	.word	-144
	.word	4
	.word	_Label_502
	.word	-148
	.word	4
	.word	0
_Label_466:
	.ascii	"ProcessFinish\0"
	.align
_Label_467:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_502:
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
_Label_4326:
	push	r0
	sub	r1,1,r1
	bne	_Label_4326
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_503:
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
_Label_4327:
	push	r0
	sub	r1,1,r1
	bne	_Label_4327
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
!   _temp_507 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_508 = _temp_507 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_506 = *_temp_508  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_506 == 0 then goto _Label_505		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_505
!	jmp	_Label_504
_Label_504:
! THEN...
	mov	1588,r13		! source line 1588
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0SE",r10
!   _temp_510 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_511 = _temp_510 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_509 = *_temp_511  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_509) then goto _runtimeErrorNullPointer
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
_Label_505:
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
	.word	_Label_512
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_513
	.word	-12
	.word	4
	.word	_Label_514
	.word	-16
	.word	4
	.word	_Label_515
	.word	-20
	.word	4
	.word	_Label_516
	.word	-24
	.word	4
	.word	_Label_517
	.word	-28
	.word	4
	.word	_Label_518
	.word	-32
	.word	4
	.word	0
_Label_512:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_506\0"
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
	mov	3,r1
_Label_4328:
	push	r0
	sub	r1,1,r1
	bne	_Label_4328
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
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_519 else goto _Label_520
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_520
	jmp	_Label_519
_Label_519:
! THEN...
	mov	1606,r13		! source line 1606
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
!   _temp_521 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_522 = _temp_521 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_520:
! RETURN STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_523
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_524
	.word	-12
	.word	4
	.word	_Label_525
	.word	-16
	.word	4
	.word	0
_Label_523:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_521\0"
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
_Label_4329:
	push	r0
	sub	r1,1,r1
	bne	_Label_4329
	mov	1611,r13		! source line 1611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_526 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
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
	.word	_Label_527
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_527:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_4330:
	push	r0
	sub	r1,1,r1
	bne	_Label_4330
	mov	1623,r13		! source line 1623
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_529 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
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
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
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
_Label_4331:
	push	r0
	sub	r1,1,r1
	bne	_Label_4331
	mov	1635,r13		! source line 1635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_532 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
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
	.word	_Label_533
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_534
	.word	-12
	.word	4
	.word	0
_Label_533:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_532\0"
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
_Label_4332:
	push	r0
	sub	r1,1,r1
	bne	_Label_4332
	mov	1647,r13		! source line 1647
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_535 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1654,r13		! source line 1654
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
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
	.word	_Label_536
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_537
	.word	-12
	.word	4
	.word	0
_Label_536:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_535\0"
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
_Label_4333:
	push	r0
	sub	r1,1,r1
	bne	_Label_4333
	mov	1659,r13		! source line 1659
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_538 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_538  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
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
	.word	_Label_539
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_540
	.word	-12
	.word	4
	.word	0
_Label_539:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_538\0"
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
_Label_4334:
	push	r0
	sub	r1,1,r1
	bne	_Label_4334
	mov	1671,r13		! source line 1671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_541 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1678,r13		! source line 1678
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
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
	.word	_Label_542
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_543
	.word	-12
	.word	4
	.word	0
_Label_542:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_541\0"
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
_Label_4335:
	push	r0
	sub	r1,1,r1
	bne	_Label_4335
	mov	1683,r13		! source line 1683
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_544 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_function_191_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
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
	.word	_Label_545
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_546
	.word	-12
	.word	4
	.word	0
_Label_545:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_191_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4336:
	push	r0
	sub	r1,1,r1
	bne	_Label_4336
	mov	1695,r13		! source line 1695
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_547 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_548 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_552 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_551 = *_temp_552  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_551 == 0 then goto _Label_550		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_550
!	jmp	_Label_549
_Label_549:
! THEN...
	mov	1706,r13		! source line 1706
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_554 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_553 = *_temp_554  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_553) then goto _runtimeErrorNullPointer
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
	jmp	_Label_555
_Label_550:
! ELSE...
	mov	1708,r13		! source line 1708
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_556 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_555:
! SEND STATEMENT...
	mov	1710,r13		! source line 1710
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
	mov	1716,r13		! source line 1716
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_557
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_558
	.word	8
	.word	4
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	_Label_561
	.word	-20
	.word	4
	.word	_Label_562
	.word	-24
	.word	4
	.word	_Label_563
	.word	-28
	.word	4
	.word	_Label_564
	.word	-32
	.word	4
	.word	_Label_565
	.word	-36
	.word	4
	.word	0
_Label_557:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_558:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_547\0"
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
_Label_4337:
	push	r0
	sub	r1,1,r1
	bne	_Label_4337
	mov	1721,r13		! source line 1721
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1742,r13		! source line 1742
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4338
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_566
_Label_4338:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_566
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_566
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_580,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_580:
	jmp	_Label_572	! 1:	
	jmp	_Label_579	! 2:	
	jmp	_Label_569	! 3:	
	jmp	_Label_568	! 4:	
	jmp	_Label_571	! 5:	
	jmp	_Label_570	! 6:	
	jmp	_Label_573	! 7:	
	jmp	_Label_574	! 8:	
	jmp	_Label_575	! 9:	
	jmp	_Label_576	! 10:	
	jmp	_Label_577	! 11:	
	jmp	_Label_578	! 12:	
! CASE 4...
_Label_568:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_581  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_581  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_569:
! CALL STATEMENT...
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_570:
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_582  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_582  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_571:
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_583  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_583  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_572:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_573:
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_584  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_584  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_574:
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_585  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_585  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_575:
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
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_586  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_586  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_576:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
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
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_587  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_587  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_577:
! RETURN STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_588  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_588  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_578:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_579:
! CALL STATEMENT...
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_566:
! CALL STATEMENT...
!   _temp_589 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_590 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
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
! END SWITCH...
_Label_567:
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
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
	.word	_Label_591
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_592
	.word	8
	.word	4
	.word	_Label_593
	.word	12
	.word	4
	.word	_Label_594
	.word	16
	.word	4
	.word	_Label_595
	.word	20
	.word	4
	.word	_Label_596
	.word	24
	.word	4
	.word	_Label_597
	.word	-12
	.word	4
	.word	_Label_598
	.word	-16
	.word	4
	.word	_Label_599
	.word	-20
	.word	4
	.word	_Label_600
	.word	-24
	.word	4
	.word	_Label_601
	.word	-28
	.word	4
	.word	_Label_602
	.word	-32
	.word	4
	.word	_Label_603
	.word	-36
	.word	4
	.word	_Label_604
	.word	-40
	.word	4
	.word	_Label_605
	.word	-44
	.word	4
	.word	_Label_606
	.word	-48
	.word	4
	.word	0
_Label_591:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_592:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_593:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_594:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_595:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_581\0"
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
_Label_4339:
	push	r0
	sub	r1,1,r1
	bne	_Label_4339
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
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
	.word	_Label_607
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_608
	.word	8
	.word	4
	.word	0
_Label_607:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_608:
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
_Label_4340:
	push	r0
	sub	r1,1,r1
	bne	_Label_4340
	mov	1788,r13		! source line 1788
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_609 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1789,r13		! source line 1789
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
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
	.word	_Label_610
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_611
	.word	-12
	.word	4
	.word	0
_Label_610:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_609\0"
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
_Label_4341:
	push	r0
	sub	r1,1,r1
	bne	_Label_4341
	mov	1794,r13		! source line 1794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1795,r13		! source line 1795
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
	mov	1795,r13		! source line 1795
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
	.word	_Label_612
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_612:
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
_Label_4342:
	push	r0
	sub	r1,1,r1
	bne	_Label_4342
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
	mov	1806,r13		! source line 1806
	mov	"\0\0SE",r10
!   _temp_613 = &_P_Kernel_threadManager
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
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
	mov	1809,r13		! source line 1809
	mov	"\0\0SE",r10
!   _temp_614 = &_P_Kernel_processManager
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
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = pcb + 24
	load	[r14+-324],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_615 = th  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = pcb + 16
	load	[r14+-324],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_618 = *_temp_619  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_618) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = _temp_618 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_617 = *_temp_620  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_616 = _temp_617  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = th + 76
	load	[r14+-320],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_621 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1814,r13		! source line 1814
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = th + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_622 = pcb  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = th + 4096
	load	[r14+-320],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_624 [0 ] into _temp_625
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
!   _temp_623 = _temp_625		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-336]
! FOR STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_630 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
!   Calculate and save the FOR-LOOP ending value
!   _temp_631 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-260]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_630  (sizeInBytes=4)
	load	[r14+-264],r1
	store	r1,[r14+-332]
_Label_626:
!   Perform the FOR-LOOP termination test
!   if i > _temp_631 then goto _Label_629		
	load	[r14+-332],r1
	load	[r14+-260],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_629
_Label_627:
	mov	1820,r13		! source line 1820
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_635 = *_temp_636  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_635) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_635 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_637 [i ] into _temp_638
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
!   Data Move: _temp_634 = *_temp_638  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_634) then goto _Label_633
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_633
!	jmp	_Label_632
_Label_632:
! THEN...
	mov	1822,r13		! source line 1822
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-228]
!   Data Move: _temp_640 = *_temp_641  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = _temp_640 + 124
	load	[r14+-232],r1
	add	r1,124,r1
	store	r1,[r14+-224]
!   Move address of _temp_642 [i ] into _temp_643
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
!   Data Move: _temp_639 = *_temp_643  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_639) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = _temp_639 + 24
	load	[r14+-236],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_648 = *_temp_649  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _temp_648 + 124
	load	[r14+-200],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   Move address of _temp_650 [i ] into _temp_651
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
!   Data Move: _temp_647 = *_temp_651  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_647) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = _temp_647 + 24
	load	[r14+-204],r1
	add	r1,24,r1
	store	r1,[r14+-184]
!   Data Move: _temp_646 = *_temp_652  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_645 = _temp_646 + 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Data Move: *_temp_644 = _temp_645  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r14+-216],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = th + 4160
	load	[r14+-320],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_653 = *_temp_654  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_653) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = _temp_653 + 124
	load	[r14+-180],r1
	add	r1,124,r1
	store	r1,[r14+-172]
!   Move address of _temp_655 [i ] into _temp_656
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
!   _temp_659 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_658 = *_temp_659  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_658) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = _temp_658 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_660 [i ] into _temp_661
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
!   Data Move: _temp_657 = *_temp_661  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   Data Move: *_temp_656 = _temp_657  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r14+-168],r2
	store	r1,[r2]
! END IF...
_Label_633:
!   Increment the FOR-LOOP index variable and jump back
_Label_628:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_626
! END FOR
_Label_629:
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = th + 68
	load	[r14+-320],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = th + 88
	load	[r14+-320],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_664 [999 ] into _temp_665
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
!   _temp_663 = _temp_665		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_662 = _temp_663  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = pcb + 32
	load	[r14+-324],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_666 = _temp_667		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_669 = *_temp_670  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_669) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_671 = _temp_669 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_672 = _temp_671 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_668 = *_temp_672  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_673 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_666  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_668  sizeInBytes=4
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
	mov	1830,r13		! source line 1830
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_678 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_682 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_681 = *_temp_682  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_681) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _temp_681 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_684 = _temp_683 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_680 = *_temp_684  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_679 = _temp_680 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_678  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-332]
_Label_674:
!   Perform the FOR-LOOP termination test
!   if i > _temp_679 then goto _Label_677		
	load	[r14+-332],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_677
_Label_675:
	mov	1830,r13		! source line 1830
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = pcb + 32
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
!   Retrieve Result: targetName=_temp_685  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1831,r13		! source line 1831
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_688 = *_temp_689  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_688) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_690 = _temp_688 + 32
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
!   Retrieve Result: targetName=_temp_687  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_687  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0IF",r10
	mov	1832,r13		! source line 1832
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_695 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_694 = *_temp_695  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_694) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = _temp_694 + 32
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
!   Retrieve Result: targetName=_temp_693  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_693 then goto _Label_692 else goto _Label_691
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_691
	jmp	_Label_692
_Label_691:
! THEN...
	mov	1833,r13		! source line 1833
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1833,r13		! source line 1833
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = pcb + 32
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
	jmp	_Label_698
_Label_692:
! ELSE...
	mov	1835,r13		! source line 1835
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = pcb + 32
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
_Label_698:
!   Increment the FOR-LOOP index variable and jump back
_Label_676:
!   i = i + 1
	load	[r14+-332],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-332]
	jmp	_Label_674
! END FOR
_Label_677:
! ASSIGNMENT STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0AS",r10
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   _temp_700 = _function_190_ResumeChildAfterFork
	set	_function_190_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_700  sizeInBytes=4
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
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_702 = pcb + 12
	load	[r14+-324],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_701 = *_temp_702  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_701  (sizeInBytes=4)
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
	.word	_Label_703
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-24
	.word	4
	.word	_Label_707
	.word	-28
	.word	4
	.word	_Label_708
	.word	-32
	.word	4
	.word	_Label_709
	.word	-36
	.word	4
	.word	_Label_710
	.word	-40
	.word	4
	.word	_Label_711
	.word	-44
	.word	4
	.word	_Label_712
	.word	-9
	.word	1
	.word	_Label_713
	.word	-48
	.word	4
	.word	_Label_714
	.word	-52
	.word	4
	.word	_Label_715
	.word	-56
	.word	4
	.word	_Label_716
	.word	-60
	.word	4
	.word	_Label_717
	.word	-64
	.word	4
	.word	_Label_718
	.word	-68
	.word	4
	.word	_Label_719
	.word	-72
	.word	4
	.word	_Label_720
	.word	-76
	.word	4
	.word	_Label_721
	.word	-80
	.word	4
	.word	_Label_722
	.word	-84
	.word	4
	.word	_Label_723
	.word	-88
	.word	4
	.word	_Label_724
	.word	-92
	.word	4
	.word	_Label_725
	.word	-96
	.word	4
	.word	_Label_726
	.word	-100
	.word	4
	.word	_Label_727
	.word	-104
	.word	4
	.word	_Label_728
	.word	-108
	.word	4
	.word	_Label_729
	.word	-112
	.word	4
	.word	_Label_730
	.word	-116
	.word	4
	.word	_Label_731
	.word	-120
	.word	4
	.word	_Label_732
	.word	-124
	.word	4
	.word	_Label_733
	.word	-128
	.word	4
	.word	_Label_734
	.word	-132
	.word	4
	.word	_Label_735
	.word	-136
	.word	4
	.word	_Label_736
	.word	-140
	.word	4
	.word	_Label_737
	.word	-144
	.word	4
	.word	_Label_738
	.word	-148
	.word	4
	.word	_Label_739
	.word	-152
	.word	4
	.word	_Label_740
	.word	-156
	.word	4
	.word	_Label_741
	.word	-160
	.word	4
	.word	_Label_742
	.word	-164
	.word	4
	.word	_Label_743
	.word	-168
	.word	4
	.word	_Label_744
	.word	-172
	.word	4
	.word	_Label_745
	.word	-176
	.word	4
	.word	_Label_746
	.word	-180
	.word	4
	.word	_Label_747
	.word	-184
	.word	4
	.word	_Label_748
	.word	-188
	.word	4
	.word	_Label_749
	.word	-192
	.word	4
	.word	_Label_750
	.word	-196
	.word	4
	.word	_Label_751
	.word	-200
	.word	4
	.word	_Label_752
	.word	-204
	.word	4
	.word	_Label_753
	.word	-208
	.word	4
	.word	_Label_754
	.word	-212
	.word	4
	.word	_Label_755
	.word	-216
	.word	4
	.word	_Label_756
	.word	-220
	.word	4
	.word	_Label_757
	.word	-224
	.word	4
	.word	_Label_758
	.word	-228
	.word	4
	.word	_Label_759
	.word	-232
	.word	4
	.word	_Label_760
	.word	-236
	.word	4
	.word	_Label_761
	.word	-240
	.word	4
	.word	_Label_762
	.word	-244
	.word	4
	.word	_Label_763
	.word	-248
	.word	4
	.word	_Label_764
	.word	-252
	.word	4
	.word	_Label_765
	.word	-256
	.word	4
	.word	_Label_766
	.word	-260
	.word	4
	.word	_Label_767
	.word	-264
	.word	4
	.word	_Label_768
	.word	-268
	.word	4
	.word	_Label_769
	.word	-272
	.word	4
	.word	_Label_770
	.word	-276
	.word	4
	.word	_Label_771
	.word	-280
	.word	4
	.word	_Label_772
	.word	-284
	.word	4
	.word	_Label_773
	.word	-288
	.word	4
	.word	_Label_774
	.word	-292
	.word	4
	.word	_Label_775
	.word	-296
	.word	4
	.word	_Label_776
	.word	-300
	.word	4
	.word	_Label_777
	.word	-304
	.word	4
	.word	_Label_778
	.word	-308
	.word	4
	.word	_Label_779
	.word	-312
	.word	4
	.word	_Label_780
	.word	-316
	.word	4
	.word	_Label_781
	.word	-320
	.word	4
	.word	_Label_782
	.word	-324
	.word	4
	.word	_Label_783
	.word	-328
	.word	4
	.word	_Label_784
	.word	-332
	.word	4
	.word	_Label_785
	.word	-336
	.word	4
	.word	0
_Label_703:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_712:
	.byte	'C'
	.ascii	"_temp_693\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_781:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_783:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_785:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_190_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4343:
	push	r0
	sub	r1,1,r1
	bne	_Label_4343
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_786 = *_temp_787  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_786) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_788 = _temp_786 + 32
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
!   _temp_790 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_790 [0 ] into _temp_791
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
!   _temp_789 = _temp_791		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_792 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_792 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_793 [14 ] into _temp_794
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
!   Data Move: initUserStackTop = *_temp_794  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_795 [999 ] into _temp_796
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
!   initSystemStackTop = _temp_796		(4 bytes)
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
	mov	1854,r13		! source line 1854
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_797
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_798
	.word	8
	.word	4
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	_Label_801
	.word	-20
	.word	4
	.word	_Label_802
	.word	-24
	.word	4
	.word	_Label_803
	.word	-28
	.word	4
	.word	_Label_804
	.word	-32
	.word	4
	.word	_Label_805
	.word	-36
	.word	4
	.word	_Label_806
	.word	-40
	.word	4
	.word	_Label_807
	.word	-44
	.word	4
	.word	_Label_808
	.word	-48
	.word	4
	.word	_Label_809
	.word	-52
	.word	4
	.word	_Label_810
	.word	-56
	.word	4
	.word	_Label_811
	.word	-60
	.word	4
	.word	_Label_812
	.word	-64
	.word	4
	.word	0
_Label_797:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_798:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_810:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_811:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_812:
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
_Label_4344:
	push	r0
	sub	r1,1,r1
	bne	_Label_4344
	mov	1859,r13		! source line 1859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_817 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_818 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_817  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_813:
!   Perform the FOR-LOOP termination test
!   if i > _temp_818 then goto _Label_816		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_816
_Label_814:
	mov	1862,r13		! source line 1862
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0IF",r10
!   _temp_824 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_825 = _temp_824 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_825 [i ] into _temp_826
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
!   _temp_827 = _temp_826 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_823 = *_temp_827  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_823 != processID then goto _Label_820		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_820
!	jmp	_Label_822
_Label_822:
!   _temp_829 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_830 = _temp_829 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_830 [i ] into _temp_831
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
!   _temp_832 = _temp_831 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_828 = *_temp_832  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_835 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_834 = *_temp_835  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_834) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = _temp_834 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_833 = *_temp_836  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_828 != _temp_833 then goto _Label_820		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_820
!	jmp	_Label_821
_Label_821:
!   _temp_838 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_839 = _temp_838 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_839 [i ] into _temp_840
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
!   _temp_841 = _temp_840 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_837 = *_temp_841  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_837 == 3 then goto _Label_820		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_820
!	jmp	_Label_819
_Label_819:
! THEN...
	mov	1864,r13		! source line 1864
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0AS",r10
	mov	1864,r13		! source line 1864
	mov	"\0\0SE",r10
!   _temp_843 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_844 = _temp_843 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_844 [i ] into _temp_845
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
!   _temp_842 = _temp_845		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_846 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_842  sizeInBytes=4
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
	mov	1865,r13		! source line 1865
	mov	"\0\0RE",r10
!   ReturnResult: exitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_820:
!   Increment the FOR-LOOP index variable and jump back
_Label_815:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_813
! END FOR
_Label_816:
! RETURN STATEMENT...
	mov	1868,r13		! source line 1868
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
	.word	_Label_847
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_848
	.word	8
	.word	4
	.word	_Label_849
	.word	-12
	.word	4
	.word	_Label_850
	.word	-16
	.word	4
	.word	_Label_851
	.word	-20
	.word	4
	.word	_Label_852
	.word	-24
	.word	4
	.word	_Label_853
	.word	-28
	.word	4
	.word	_Label_854
	.word	-32
	.word	4
	.word	_Label_855
	.word	-36
	.word	4
	.word	_Label_856
	.word	-40
	.word	4
	.word	_Label_857
	.word	-44
	.word	4
	.word	_Label_858
	.word	-48
	.word	4
	.word	_Label_859
	.word	-52
	.word	4
	.word	_Label_860
	.word	-56
	.word	4
	.word	_Label_861
	.word	-60
	.word	4
	.word	_Label_862
	.word	-64
	.word	4
	.word	_Label_863
	.word	-68
	.word	4
	.word	_Label_864
	.word	-72
	.word	4
	.word	_Label_865
	.word	-76
	.word	4
	.word	_Label_866
	.word	-80
	.word	4
	.word	_Label_867
	.word	-84
	.word	4
	.word	_Label_868
	.word	-88
	.word	4
	.word	_Label_869
	.word	-92
	.word	4
	.word	_Label_870
	.word	-96
	.word	4
	.word	_Label_871
	.word	-100
	.word	4
	.word	_Label_872
	.word	-104
	.word	4
	.word	_Label_873
	.word	-108
	.word	4
	.word	_Label_874
	.word	-112
	.word	4
	.word	_Label_875
	.word	-116
	.word	4
	.word	_Label_876
	.word	-120
	.word	4
	.word	0
_Label_847:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_848:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_875:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_876:
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
_Label_4345:
	push	r0
	sub	r1,1,r1
	bne	_Label_4345
	mov	1873,r13		! source line 1873
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0AS",r10
	mov	1883,r13		! source line 1883
	mov	"\0\0SE",r10
!   _temp_877 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-112]
!   _temp_878 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_880 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_879 = *_temp_880  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_879) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = _temp_879 + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_877  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_878  sizeInBytes=4
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
	mov	1884,r13		! source line 1884
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_883		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_883
!	jmp	_Label_882
_Label_882:
! THEN...
	mov	1884,r13		! source line 1884
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_883:
! ASSIGNMENT STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4346:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4346
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_885 = &newAddrSpace
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
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
	mov	1889,r13		! source line 1889
	mov	"\0\0SE",r10
!   _temp_886 = &strBuffer
	add	r14,-236,r1
	store	r1,[r14+-84]
!   _temp_887 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_886  sizeInBytes=4
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
	mov	1890,r13		! source line 1890
	mov	"\0\0IF",r10
!   if intIsZero (file) then goto _Label_888
	load	[r14+-208],r1
	cmp	r1,r0
	be	_Label_888
	jmp	_Label_889
_Label_888:
! THEN...
	mov	1890,r13		! source line 1890
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_889:
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
	mov	1893,r13		! source line 1893
	mov	"\0\0SE",r10
!   _temp_890 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (file) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_890  sizeInBytes=4
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
	mov	1894,r13		! source line 1894
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_892		(int)
	load	[r14+-240],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_892
!	jmp	_Label_891
_Label_891:
! THEN...
	mov	1894,r13		! source line 1894
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_894 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_893 = *_temp_894  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_893) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _temp_893 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_895 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_4347:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4347
! SEND STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_898 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_897 = *_temp_898  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_897) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_899 = _temp_897 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_896 = _temp_899		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-60]
!   _temp_900 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_896  sizeInBytes=4
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
	mov	1899,r13		! source line 1899
	mov	"\0\0SE",r10
!   _temp_901 = &_P_Kernel_fileManager
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
	mov	1901,r13		! source line 1901
	mov	"\0\0AS",r10
!   _temp_903 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-32]
!   _temp_904 = _temp_903 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_902 = *_temp_904  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_902 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_905 [999 ] into _temp_906
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
!   initSystemStackTop = _temp_906		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   _temp_907 = &newAddrSpace
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
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_908 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_908 = 1  (sizeInBytes=1)
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
	mov	1906,r13		! source line 1906
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1908,r13		! source line 1908
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
	.word	_Label_909
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_910
	.word	8
	.word	4
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
	.word	-204
	.word	92
	.word	_Label_938
	.word	-208
	.word	4
	.word	_Label_939
	.word	-212
	.word	4
	.word	_Label_940
	.word	-236
	.word	24
	.word	_Label_941
	.word	-240
	.word	4
	.word	_Label_942
	.word	-244
	.word	4
	.word	_Label_943
	.word	-248
	.word	4
	.word	0
_Label_909:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_910:
	.byte	'P'
	.ascii	"filename\0"
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
	.ascii	"_temp_895\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_890\0"
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
	.ascii	"_temp_881\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_937:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_938:
	.byte	'P'
	.ascii	"file\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_940:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_941:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_942:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_943:
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
_Label_4348:
	push	r0
	sub	r1,1,r1
	bne	_Label_4348
	mov	1913,r13		! source line 1913
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_944 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-44]
!   _temp_945 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_946 = *_temp_947  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_946) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = _temp_946 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_944  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_945  sizeInBytes=4
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
	mov	1918,r13		! source line 1918
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_950		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_950
!	jmp	_Label_949
_Label_949:
! THEN...
	mov	1918,r13		! source line 1918
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_950:
! CALL STATEMENT...
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_951 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_951  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_952 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_952  sizeInBytes=4
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
!   _temp_953 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1924,r13		! source line 1924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_954 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
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
	mov	1927,r13		! source line 1927
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
	.word	_Label_955
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_956
	.word	8
	.word	4
	.word	_Label_957
	.word	-12
	.word	4
	.word	_Label_958
	.word	-16
	.word	4
	.word	_Label_959
	.word	-20
	.word	4
	.word	_Label_960
	.word	-24
	.word	4
	.word	_Label_961
	.word	-28
	.word	4
	.word	_Label_962
	.word	-32
	.word	4
	.word	_Label_963
	.word	-36
	.word	4
	.word	_Label_964
	.word	-40
	.word	4
	.word	_Label_965
	.word	-44
	.word	4
	.word	_Label_966
	.word	-48
	.word	4
	.word	_Label_967
	.word	-72
	.word	24
	.word	0
_Label_955:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_956:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_966:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_967:
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
	mov	36,r1
_Label_4349:
	push	r0
	sub	r1,1,r1
	bne	_Label_4349
	mov	1932,r13		! source line 1932
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
	mov	1937,r13		! source line 1937
	mov	"\0\0SE",r10
!   _temp_968 = &strBuffer
	add	r14,-132,r1
	store	r1,[r14+-96]
!   _temp_969 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_971 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_970 = *_temp_971  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_970) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_972 = _temp_970 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_968  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_969  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=tmp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0IF",r10
!   if tmp >= 0 then goto _Label_974		(int)
	load	[r14+-100],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_974
!	jmp	_Label_973
_Label_973:
! THEN...
	mov	1938,r13		! source line 1938
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_974:
! ASSIGNMENT STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-108]
! FOR STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_979 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_980 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_979  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-104]
_Label_975:
!   Perform the FOR-LOOP termination test
!   if i > _temp_980 then goto _Label_978		
	load	[r14+-104],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_978
_Label_976:
	mov	1942,r13		! source line 1942
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_985 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_984 = *_temp_985  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_984) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_986 = _temp_984 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_986 [i ] into _temp_987
!     make sure index expr is >= 0
	load	[r14+-104],r2
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
!   Data Move: _temp_983 = *_temp_987  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_983) then goto _Label_981
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_981
	jmp	_Label_982
_Label_981:
! THEN...
	mov	1944,r13		! source line 1944
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-104],r1
	store	r1,[r14+-108]
! BREAK STATEMENT...
	mov	1945,r13		! source line 1945
	mov	"\0\0BR",r10
	jmp	_Label_978
! END IF...
_Label_982:
!   Increment the FOR-LOOP index variable and jump back
_Label_977:
!   i = i + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_975
! END FOR
_Label_978:
! IF STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_989		(int)
	load	[r14+-108],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_989
!	jmp	_Label_988
_Label_988:
! THEN...
	mov	1949,r13		! source line 1949
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_989:
! IF STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0IF",r10
!   _temp_992 = &strBuffer
	add	r14,-132,r1
	store	r1,[r14+-48]
!   _temp_993 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_992  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_993  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_990 else goto _Label_991
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_991
	jmp	_Label_990
_Label_990:
! THEN...
	mov	1959,r13		! source line 1959
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
!   _temp_994 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_995 = _temp_994 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   openFile = _temp_995		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-136]
	jmp	_Label_996
_Label_991:
! ELSE...
	mov	1961,r13		! source line 1961
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
	mov	1961,r13		! source line 1961
	mov	"\0\0SE",r10
!   _temp_997 = &strBuffer
	add	r14,-132,r1
	store	r1,[r14+-32]
!   _temp_998 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_997  sizeInBytes=4
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
	store	r1,[r14+-136]
! END IF...
_Label_996:
! IF STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_999
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_999
	jmp	_Label_1000
_Label_999:
! THEN...
	mov	1965,r13		! source line 1965
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1000:
! ASSIGNMENT STATEMENT...
	mov	1968,r13		! source line 1968
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1002 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1001 = *_temp_1002  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1001) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1003 = _temp_1001 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1003 [fileDescriptorIndex ] into _temp_1004
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   Data Move: *_temp_1004 = openFile  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_1005
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_1006
	.word	8
	.word	4
	.word	_Label_1007
	.word	-12
	.word	4
	.word	_Label_1008
	.word	-16
	.word	4
	.word	_Label_1009
	.word	-20
	.word	4
	.word	_Label_1010
	.word	-24
	.word	4
	.word	_Label_1011
	.word	-28
	.word	4
	.word	_Label_1012
	.word	-32
	.word	4
	.word	_Label_1013
	.word	-36
	.word	4
	.word	_Label_1014
	.word	-40
	.word	4
	.word	_Label_1015
	.word	-44
	.word	4
	.word	_Label_1016
	.word	-48
	.word	4
	.word	_Label_1017
	.word	-52
	.word	4
	.word	_Label_1018
	.word	-56
	.word	4
	.word	_Label_1019
	.word	-60
	.word	4
	.word	_Label_1020
	.word	-64
	.word	4
	.word	_Label_1021
	.word	-68
	.word	4
	.word	_Label_1022
	.word	-72
	.word	4
	.word	_Label_1023
	.word	-76
	.word	4
	.word	_Label_1024
	.word	-80
	.word	4
	.word	_Label_1025
	.word	-84
	.word	4
	.word	_Label_1026
	.word	-88
	.word	4
	.word	_Label_1027
	.word	-92
	.word	4
	.word	_Label_1028
	.word	-96
	.word	4
	.word	_Label_1029
	.word	-100
	.word	4
	.word	_Label_1030
	.word	-104
	.word	4
	.word	_Label_1031
	.word	-108
	.word	4
	.word	_Label_1032
	.word	-132
	.word	24
	.word	_Label_1033
	.word	-136
	.word	4
	.word	0
_Label_1005:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_1006:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1029:
	.byte	'I'
	.ascii	"tmp\0"
	.align
_Label_1030:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1031:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1032:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_1033:
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
	mov	108,r1
_Label_4350:
	push	r0
	sub	r1,1,r1
	bne	_Label_4350
	mov	1974,r13		! source line 1974
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1981,r13		! source line 1981
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1038		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1038
	jmp	_Label_1034
_Label_1038:
!   if fileDesc <= 9 then goto _Label_1037		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1037
	jmp	_Label_1034
_Label_1037:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-372]
!   Data Move: _temp_1040 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-372],r1
	load	[r1],r1
	store	r1,[r14+-376]
!   if intIsZero (_temp_1040) then goto _runtimeErrorNullPointer
	load	[r14+-376],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1042 = _temp_1040 + 124
	load	[r14+-376],r1
	add	r1,124,r1
	store	r1,[r14+-368]
!   Move address of _temp_1042 [fileDesc ] into _temp_1043
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-368],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-364]
!   Data Move: _temp_1039 = *_temp_1043  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_1039) then goto _Label_1034
	load	[r14+-380],r1
	cmp	r1,r0
	be	_Label_1034
!	jmp	_Label_1036
_Label_1036:
!   if sizeInBytes >= 0 then goto _Label_1035		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	1982,r13		! source line 1982
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1035:
! IF STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1049 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-348]
!   Data Move: _temp_1048 = *_temp_1049  (sizeInBytes=4)
	load	[r14+-348],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_1048) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = _temp_1048 + 124
	load	[r14+-352],r1
	add	r1,124,r1
	store	r1,[r14+-344]
!   Move address of _temp_1050 [fileDesc ] into _temp_1051
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-344],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-340]
!   Data Move: _temp_1047 = *_temp_1051  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1047) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1052 = _temp_1047 + 12
	load	[r14+-356],r1
	add	r1,12,r1
	store	r1,[r14+-336]
!   Data Move: _temp_1046 = *_temp_1052  (sizeInBytes=4)
	load	[r14+-336],r1
	load	[r1],r1
	store	r1,[r14+-360]
!   if _temp_1046 != 2 then goto _Label_1045		(int)
	load	[r14+-360],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	1986,r13		! source line 1986
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! FOR STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1057 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-332]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1058 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-328]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1057  (sizeInBytes=4)
	load	[r14+-332],r1
	store	r1,[r14+-416]
_Label_1053:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1058 then goto _Label_1056		
	load	[r14+-416],r1
	load	[r14+-328],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1056
_Label_1054:
	mov	1987,r13		! source line 1987
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   _temp_1059 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-324]
!   virtPage = _temp_1059 div 8192		(int)
	load	[r14+-324],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-404]
! IF STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1064		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1064
	jmp	_Label_1060
_Label_1064:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1067 = *_temp_1068  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if intIsZero (_temp_1067) then goto _runtimeErrorNullPointer
	load	[r14+-312],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _temp_1067 + 32
	load	[r14+-312],r1
	add	r1,32,r1
	store	r1,[r14+-304]
!   _temp_1070 = _temp_1069 + 4
	load	[r14+-304],r1
	add	r1,4,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1066 = *_temp_1070  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   _temp_1065 = _temp_1066 - 1		(int)
	load	[r14+-316],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   if virtPage <= _temp_1065 then goto _Label_1063		(int)
	load	[r14+-384],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1063
	jmp	_Label_1060
_Label_1063:
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1072 = *_temp_1073  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1072) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = _temp_1072 + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1071  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1075 = _temp_1071 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1075 then goto _Label_1062 else goto _Label_1060
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1060
	jmp	_Label_1062
_Label_1062:
	mov	1990,r13		! source line 1990
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1078 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: _temp_1077 = *_temp_1078  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_1077) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _temp_1077 + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1076  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
!   _temp_1080 = _temp_1076 XOR 0		(bool)
	loadb	[r14+-17],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-16]
!   if _temp_1080 then goto _Label_1061 else goto _Label_1060
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_1060
	jmp	_Label_1061
_Label_1060:
! THEN...
	mov	1991,r13		! source line 1991
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1061:
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-404],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
	mov	1994,r13		! source line 1994
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-264]
!   Data Move: _temp_1082 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_1082) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = _temp_1082 + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1081  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
!   destAddr = _temp_1081 + offset		(int)
	load	[r14+-272],r1
	load	[r14+-388],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
	mov	1995,r13		! source line 1995
	mov	"\0\0SE",r10
!   _temp_1085 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-256]
!   Send message GetChar
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
! IF STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0IF",r10
!   _temp_1088 = c XOR 13		(bool)
	loadb	[r14+-21],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1088 then goto _Label_1087 else goto _Label_1086
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1086
	jmp	_Label_1087
_Label_1086:
! THEN...
	mov	1997,r13		! source line 1997
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0AS",r10
!   c = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-21]
! END IF...
_Label_1087:
! IF STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0IF",r10
!   _temp_1091 = charToInt (c)
	loadb	[r14+-21],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-252]
!   if _temp_1091 != 4 then goto _Label_1090		(int)
	load	[r14+-252],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1090
!	jmp	_Label_1089
_Label_1089:
! THEN...
	mov	2000,r13		! source line 2000
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0BR",r10
	jmp	_Label_1056
! END IF...
_Label_1090:
! ASSIGNMENT STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-412],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = c  (sizeInBytes=1)
	loadb	[r14+-21],r1
	load	[r14+-412],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-400],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! IF STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-412],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1094 = *destAddr  (sizeInBytes=1)
	load	[r14+-412],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
!   _temp_1095 = _temp_1094 XOR 10		(bool)
	loadb	[r14+-14],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1095 then goto _Label_1093 else goto _Label_1092
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1092
	jmp	_Label_1093
_Label_1092:
! THEN...
	mov	2005,r13		! source line 2005
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0BR",r10
	jmp	_Label_1056
! END IF...
_Label_1093:
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1055:
!   i = i + 1
	load	[r14+-416],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
	jmp	_Label_1053
! END FOR
_Label_1056:
! RETURN STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1096
_Label_1045:
! ELSE...
	mov	2012,r13		! source line 2012
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1097 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1097) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1097 + 124
	load	[r14+-248],r1
	add	r1,124,r1
	store	r1,[r14+-240]
!   Move address of _temp_1099 [fileDesc ] into _temp_1100
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-236]
!   Data Move: openFile = *_temp_1100  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-404],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-404],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = openFile + 16
	load	[r14+-420],r1
	add	r1,16,r1
	store	r1,[r14+-232]
!   Data Move: nextPosInFile = *_temp_1101  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1103 = openFile + 20
	load	[r14+-420],r1
	add	r1,20,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1102 = *_temp_1103  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1102) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1104 = _temp_1102 + 24
	load	[r14+-228],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: fileSize = *_temp_1104  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-408]
! WHILE STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0WH",r10
_Label_1105:
!	jmp	_Label_1106
_Label_1106:
	mov	2020,r13		! source line 2020
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0IF",r10
!   _temp_1110 = nextPosInFile + chunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1110 <= fileSize then goto _Label_1109		(int)
	load	[r14+-216],r1
	load	[r14+-408],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1109
!	jmp	_Label_1108
_Label_1108:
! THEN...
	mov	2023,r13		! source line 2023
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-408],r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1109:
! IF STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0IF",r10
!   _temp_1113 = copiedSoFar + chunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_1113 <= sizeInBytes then goto _Label_1112		(int)
	load	[r14+-212],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1112
!	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	2026,r13		! source line 2026
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1112:
! IF STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1115		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1115
!	jmp	_Label_1114
_Label_1114:
! THEN...
	mov	2029,r13		! source line 2029
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0BR",r10
	jmp	_Label_1107
! END IF...
_Label_1115:
! IF STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1120		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1120
	jmp	_Label_1116
_Label_1120:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1124 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1123 = *_temp_1124  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1123) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1125 = _temp_1123 + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-192]
!   _temp_1126 = _temp_1125 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1122 = *_temp_1126  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_1121 = _temp_1122 - 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if virtPage <= _temp_1121 then goto _Label_1119		(int)
	load	[r14+-384],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1119
	jmp	_Label_1116
_Label_1119:
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1129 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1128 = *_temp_1129  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1128) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1130 = _temp_1128 + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1127  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1127 then goto _Label_1118 else goto _Label_1116
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1116
	jmp	_Label_1118
_Label_1118:
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1133 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1132 = *_temp_1133  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1132) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1134 = _temp_1132 + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1131  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1131 then goto _Label_1117 else goto _Label_1116
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1116
	jmp	_Label_1117
_Label_1116:
! THEN...
	mov	2033,r13		! source line 2033
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1117:
! ASSIGNMENT STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-384],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1136		(int)
	load	[r14+-400],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1136
!	jmp	_Label_1135
_Label_1135:
! THEN...
	mov	2041,r13		! source line 2041
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0BR",r10
	jmp	_Label_1107
! END IF...
_Label_1136:
! END WHILE...
	jmp	_Label_1105
_Label_1107:
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1138 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1137 = *_temp_1138  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1137) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1139 = _temp_1137 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_1139 [fileDesc ] into _temp_1140
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1140  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-404]
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-404],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-404],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1141 = openFile + 16
	load	[r14+-420],r1
	add	r1,16,r1
	store	r1,[r14+-144]
!   Data Move: nextPosInFile = *_temp_1141  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = openFile + 20
	load	[r14+-420],r1
	add	r1,20,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1142 = *_temp_1143  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1142) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = _temp_1142 + 24
	load	[r14+-140],r1
	add	r1,24,r1
	store	r1,[r14+-132]
!   Data Move: fileSize = *_temp_1144  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-408]
! WHILE STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0WH",r10
_Label_1145:
!	jmp	_Label_1146
_Label_1146:
	mov	2054,r13		! source line 2054
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-388],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! IF STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0IF",r10
!   _temp_1150 = nextPosInFile + chunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1150 <= fileSize then goto _Label_1149		(int)
	load	[r14+-128],r1
	load	[r14+-408],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1149
!	jmp	_Label_1148
_Label_1148:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-408],r1
	load	[r14+-396],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1149:
! IF STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0IF",r10
!   _temp_1153 = copiedSoFar + chunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1153 <= sizeInBytes then goto _Label_1152		(int)
	load	[r14+-124],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	2060,r13		! source line 2060
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-400],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-392]
! END IF...
_Label_1152:
! IF STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1155		(int)
	load	[r14+-392],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1155
!	jmp	_Label_1154
_Label_1154:
! THEN...
	mov	2063,r13		! source line 2063
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0BR",r10
	jmp	_Label_1147
! END IF...
_Label_1155:
! IF STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1160		(int)
	load	[r14+-384],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1160
	jmp	_Label_1156
_Label_1160:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1164 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1163 = *_temp_1164  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1163) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = _temp_1163 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   _temp_1166 = _temp_1165 + 4
	load	[r14+-104],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1162 = *_temp_1166  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_1161 = _temp_1162 - 1		(int)
	load	[r14+-116],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if virtPage <= _temp_1161 then goto _Label_1159		(int)
	load	[r14+-384],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1159
	jmp	_Label_1156
_Label_1159:
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1168 = *_temp_1169  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1168) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1170 = _temp_1168 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1167  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1167 then goto _Label_1158 else goto _Label_1156
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1156
	jmp	_Label_1158
_Label_1158:
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1173 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1172 = *_temp_1173  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1172) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1174 = _temp_1172 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1171  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1171 then goto _Label_1157 else goto _Label_1156
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1156
	jmp	_Label_1157
_Label_1156:
! THEN...
	mov	2066,r13		! source line 2066
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1157:
! SEND STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1176 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1175 = *_temp_1176  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1175) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = _temp_1175 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1179 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1178 = *_temp_1179  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1178) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1180 = _temp_1178 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1183 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1182 = *_temp_1183  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1182) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1184 = _temp_1182 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1181  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   destAddr = _temp_1181 + offset		(int)
	load	[r14+-48],r1
	load	[r14+-388],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_1185 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-420],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=read  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-396],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-400],r1
	load	[r14+-392],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-400]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-384],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-384]
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-388]
! IF STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1187		(int)
	load	[r14+-400],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1187
!	jmp	_Label_1186
_Label_1186:
! THEN...
	mov	2077,r13		! source line 2077
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0BR",r10
	jmp	_Label_1147
! END IF...
_Label_1187:
! END WHILE...
	jmp	_Label_1145
_Label_1147:
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-420],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = openFile + 16
	load	[r14+-420],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1188 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-396],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-400],r1
	store	r1,[r14+8]
	add	r15,436,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1096:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1189
	.word	12		! total size of parameters
	.word	432		! frame size = 432
	.word	_Label_1190
	.word	8
	.word	4
	.word	_Label_1191
	.word	12
	.word	4
	.word	_Label_1192
	.word	16
	.word	4
	.word	_Label_1193
	.word	-28
	.word	4
	.word	_Label_1194
	.word	-32
	.word	4
	.word	_Label_1195
	.word	-36
	.word	4
	.word	_Label_1196
	.word	-40
	.word	4
	.word	_Label_1197
	.word	-44
	.word	4
	.word	_Label_1198
	.word	-48
	.word	4
	.word	_Label_1199
	.word	-52
	.word	4
	.word	_Label_1200
	.word	-56
	.word	4
	.word	_Label_1201
	.word	-60
	.word	4
	.word	_Label_1202
	.word	-64
	.word	4
	.word	_Label_1203
	.word	-68
	.word	4
	.word	_Label_1204
	.word	-72
	.word	4
	.word	_Label_1205
	.word	-76
	.word	4
	.word	_Label_1206
	.word	-80
	.word	4
	.word	_Label_1207
	.word	-84
	.word	4
	.word	_Label_1208
	.word	-9
	.word	1
	.word	_Label_1209
	.word	-88
	.word	4
	.word	_Label_1210
	.word	-92
	.word	4
	.word	_Label_1211
	.word	-96
	.word	4
	.word	_Label_1212
	.word	-10
	.word	1
	.word	_Label_1213
	.word	-100
	.word	4
	.word	_Label_1214
	.word	-104
	.word	4
	.word	_Label_1215
	.word	-108
	.word	4
	.word	_Label_1216
	.word	-112
	.word	4
	.word	_Label_1217
	.word	-116
	.word	4
	.word	_Label_1218
	.word	-120
	.word	4
	.word	_Label_1219
	.word	-124
	.word	4
	.word	_Label_1220
	.word	-128
	.word	4
	.word	_Label_1221
	.word	-132
	.word	4
	.word	_Label_1222
	.word	-136
	.word	4
	.word	_Label_1223
	.word	-140
	.word	4
	.word	_Label_1224
	.word	-144
	.word	4
	.word	_Label_1225
	.word	-148
	.word	4
	.word	_Label_1226
	.word	-152
	.word	4
	.word	_Label_1227
	.word	-156
	.word	4
	.word	_Label_1228
	.word	-160
	.word	4
	.word	_Label_1229
	.word	-164
	.word	4
	.word	_Label_1230
	.word	-168
	.word	4
	.word	_Label_1231
	.word	-172
	.word	4
	.word	_Label_1232
	.word	-11
	.word	1
	.word	_Label_1233
	.word	-176
	.word	4
	.word	_Label_1234
	.word	-180
	.word	4
	.word	_Label_1235
	.word	-184
	.word	4
	.word	_Label_1236
	.word	-12
	.word	1
	.word	_Label_1237
	.word	-188
	.word	4
	.word	_Label_1238
	.word	-192
	.word	4
	.word	_Label_1239
	.word	-196
	.word	4
	.word	_Label_1240
	.word	-200
	.word	4
	.word	_Label_1241
	.word	-204
	.word	4
	.word	_Label_1242
	.word	-208
	.word	4
	.word	_Label_1243
	.word	-212
	.word	4
	.word	_Label_1244
	.word	-216
	.word	4
	.word	_Label_1245
	.word	-220
	.word	4
	.word	_Label_1246
	.word	-224
	.word	4
	.word	_Label_1247
	.word	-228
	.word	4
	.word	_Label_1248
	.word	-232
	.word	4
	.word	_Label_1249
	.word	-236
	.word	4
	.word	_Label_1250
	.word	-240
	.word	4
	.word	_Label_1251
	.word	-244
	.word	4
	.word	_Label_1252
	.word	-248
	.word	4
	.word	_Label_1253
	.word	-13
	.word	1
	.word	_Label_1254
	.word	-14
	.word	1
	.word	_Label_1255
	.word	-252
	.word	4
	.word	_Label_1256
	.word	-15
	.word	1
	.word	_Label_1257
	.word	-256
	.word	4
	.word	_Label_1258
	.word	-260
	.word	4
	.word	_Label_1259
	.word	-264
	.word	4
	.word	_Label_1260
	.word	-268
	.word	4
	.word	_Label_1261
	.word	-272
	.word	4
	.word	_Label_1262
	.word	-16
	.word	1
	.word	_Label_1263
	.word	-276
	.word	4
	.word	_Label_1264
	.word	-280
	.word	4
	.word	_Label_1265
	.word	-284
	.word	4
	.word	_Label_1266
	.word	-17
	.word	1
	.word	_Label_1267
	.word	-18
	.word	1
	.word	_Label_1268
	.word	-288
	.word	4
	.word	_Label_1269
	.word	-292
	.word	4
	.word	_Label_1270
	.word	-296
	.word	4
	.word	_Label_1271
	.word	-19
	.word	1
	.word	_Label_1272
	.word	-300
	.word	4
	.word	_Label_1273
	.word	-304
	.word	4
	.word	_Label_1274
	.word	-308
	.word	4
	.word	_Label_1275
	.word	-312
	.word	4
	.word	_Label_1276
	.word	-316
	.word	4
	.word	_Label_1277
	.word	-320
	.word	4
	.word	_Label_1278
	.word	-324
	.word	4
	.word	_Label_1279
	.word	-328
	.word	4
	.word	_Label_1280
	.word	-332
	.word	4
	.word	_Label_1281
	.word	-336
	.word	4
	.word	_Label_1282
	.word	-340
	.word	4
	.word	_Label_1283
	.word	-344
	.word	4
	.word	_Label_1284
	.word	-348
	.word	4
	.word	_Label_1285
	.word	-352
	.word	4
	.word	_Label_1286
	.word	-356
	.word	4
	.word	_Label_1287
	.word	-360
	.word	4
	.word	_Label_1288
	.word	-364
	.word	4
	.word	_Label_1289
	.word	-368
	.word	4
	.word	_Label_1290
	.word	-372
	.word	4
	.word	_Label_1291
	.word	-376
	.word	4
	.word	_Label_1292
	.word	-380
	.word	4
	.word	_Label_1293
	.word	-384
	.word	4
	.word	_Label_1294
	.word	-388
	.word	4
	.word	_Label_1295
	.word	-392
	.word	4
	.word	_Label_1296
	.word	-396
	.word	4
	.word	_Label_1297
	.word	-400
	.word	4
	.word	_Label_1298
	.word	-404
	.word	4
	.word	_Label_1299
	.word	-408
	.word	4
	.word	_Label_1300
	.word	-412
	.word	4
	.word	_Label_1301
	.word	-416
	.word	4
	.word	_Label_1302
	.word	-420
	.word	4
	.word	_Label_1303
	.word	-20
	.word	1
	.word	_Label_1304
	.word	-21
	.word	1
	.word	0
_Label_1189:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1190:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1191:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1192:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1208:
	.byte	'C'
	.ascii	"_temp_1171\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1212:
	.byte	'C'
	.ascii	"_temp_1167\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1232:
	.byte	'C'
	.ascii	"_temp_1131\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1236:
	.byte	'C'
	.ascii	"_temp_1127\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1253:
	.byte	'C'
	.ascii	"_temp_1095\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1094\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1256:
	.byte	'C'
	.ascii	"_temp_1088\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1262:
	.byte	'C'
	.ascii	"_temp_1080\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1266:
	.byte	'C'
	.ascii	"_temp_1076\0"
	.align
_Label_1267:
	.byte	'C'
	.ascii	"_temp_1075\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1271:
	.byte	'C'
	.ascii	"_temp_1071\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1293:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1294:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1295:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1296:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1297:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1298:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1299:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1300:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1301:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1302:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1303:
	.byte	'B'
	.ascii	"read\0"
	.align
_Label_1304:
	.byte	'C'
	.ascii	"c\0"
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
	mov	124,r1
_Label_4351:
	push	r0
	sub	r1,1,r1
	bne	_Label_4351
	mov	2088,r13		! source line 2088
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1309		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1309
	jmp	_Label_1305
_Label_1309:
!   if fileDesc <= 9 then goto _Label_1308		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1308
	jmp	_Label_1305
_Label_1308:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1312 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-432]
!   Data Move: _temp_1311 = *_temp_1312  (sizeInBytes=4)
	load	[r14+-432],r1
	load	[r1],r1
	store	r1,[r14+-436]
!   if intIsZero (_temp_1311) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1313 = _temp_1311 + 124
	load	[r14+-436],r1
	add	r1,124,r1
	store	r1,[r14+-428]
!   Move address of _temp_1313 [fileDesc ] into _temp_1314
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-428],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-424]
!   Data Move: _temp_1310 = *_temp_1314  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-440]
!   if intIsZero (_temp_1310) then goto _Label_1305
	load	[r14+-440],r1
	cmp	r1,r0
	be	_Label_1305
!	jmp	_Label_1307
_Label_1307:
!   if sizeInBytes >= 0 then goto _Label_1306		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1306
!	jmp	_Label_1305
_Label_1305:
! THEN...
	mov	2097,r13		! source line 2097
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1306:
! IF STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1320 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-408]
!   Data Move: _temp_1319 = *_temp_1320  (sizeInBytes=4)
	load	[r14+-408],r1
	load	[r1],r1
	store	r1,[r14+-412]
!   if intIsZero (_temp_1319) then goto _runtimeErrorNullPointer
	load	[r14+-412],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1321 = _temp_1319 + 124
	load	[r14+-412],r1
	add	r1,124,r1
	store	r1,[r14+-404]
!   Move address of _temp_1321 [fileDesc ] into _temp_1322
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-404],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-400]
!   Data Move: _temp_1318 = *_temp_1322  (sizeInBytes=4)
	load	[r14+-400],r1
	load	[r1],r1
	store	r1,[r14+-416]
!   if intIsZero (_temp_1318) then goto _runtimeErrorNullPointer
	load	[r14+-416],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1323 = _temp_1318 + 12
	load	[r14+-416],r1
	add	r1,12,r1
	store	r1,[r14+-396]
!   Data Move: _temp_1317 = *_temp_1323  (sizeInBytes=4)
	load	[r14+-396],r1
	load	[r1],r1
	store	r1,[r14+-420]
!   if _temp_1317 != 2 then goto _Label_1316		(int)
	load	[r14+-420],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1316
!	jmp	_Label_1315
_Label_1315:
! THEN...
	mov	2101,r13		! source line 2101
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   tempBuffer = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-484]
! FOR STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1328 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-392]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1329 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-388]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1328  (sizeInBytes=4)
	load	[r14+-392],r1
	store	r1,[r14+-476]
_Label_1324:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1329 then goto _Label_1327		
	load	[r14+-476],r1
	load	[r14+-388],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1327
_Label_1325:
	mov	2102,r13		! source line 2102
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0AS",r10
!   _temp_1330 = tempBuffer		(4 bytes)
	load	[r14+-484],r1
	store	r1,[r14+-384]
!   virtPage = _temp_1330 div 8192		(int)
	load	[r14+-384],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
!   virtAddr = tempBuffer		(4 bytes)
	load	[r14+-484],r1
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1335		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1335
	jmp	_Label_1331
_Label_1335:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-368]
!   Data Move: _temp_1338 = *_temp_1339  (sizeInBytes=4)
	load	[r14+-368],r1
	load	[r1],r1
	store	r1,[r14+-372]
!   if intIsZero (_temp_1338) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1340 = _temp_1338 + 32
	load	[r14+-372],r1
	add	r1,32,r1
	store	r1,[r14+-364]
!   _temp_1341 = _temp_1340 + 4
	load	[r14+-364],r1
	add	r1,4,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1337 = *_temp_1341  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-376]
!   _temp_1336 = _temp_1337 - 1		(int)
	load	[r14+-376],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-380]
!   if virtPage <= _temp_1336 then goto _Label_1334		(int)
	load	[r14+-444],r1
	load	[r14+-380],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1334
	jmp	_Label_1331
_Label_1334:
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-352]
!   Data Move: _temp_1343 = *_temp_1344  (sizeInBytes=4)
	load	[r14+-352],r1
	load	[r1],r1
	store	r1,[r14+-356]
!   if intIsZero (_temp_1343) then goto _runtimeErrorNullPointer
	load	[r14+-356],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1345 = _temp_1343 + 32
	load	[r14+-356],r1
	add	r1,32,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-348],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1342  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1346 = _temp_1342 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1346 then goto _Label_1333 else goto _Label_1331
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1331
	jmp	_Label_1333
_Label_1333:
	mov	2105,r13		! source line 2105
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-340]
!   Data Move: _temp_1348 = *_temp_1349  (sizeInBytes=4)
	load	[r14+-340],r1
	load	[r1],r1
	store	r1,[r14+-344]
!   if intIsZero (_temp_1348) then goto _runtimeErrorNullPointer
	load	[r14+-344],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1350 = _temp_1348 + 32
	load	[r14+-344],r1
	add	r1,32,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1347  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1351 = _temp_1347 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1351 then goto _Label_1332 else goto _Label_1331
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1331
	jmp	_Label_1332
_Label_1331:
! THEN...
	mov	2106,r13		! source line 2106
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1332:
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   tempBuffer = tempBuffer + 1		(int)
	load	[r14+-484],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-484]
!   Increment the FOR-LOOP index variable and jump back
_Label_1326:
!   i = i + 1
	load	[r14+-476],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
	jmp	_Label_1324
! END FOR
_Label_1327:
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-460]
! FOR STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1356 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-332]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1357 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-328]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1356  (sizeInBytes=4)
	load	[r14+-332],r1
	store	r1,[r14+-476]
_Label_1352:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1357 then goto _Label_1355		
	load	[r14+-476],r1
	load	[r14+-328],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1355
_Label_1353:
	mov	2111,r13		! source line 2111
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   _temp_1358 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-324]
!   virtPage = _temp_1358 div 8192		(int)
	load	[r14+-324],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-464]
! IF STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1363		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1363
	jmp	_Label_1359
_Label_1363:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1367 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1366 = *_temp_1367  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if intIsZero (_temp_1366) then goto _runtimeErrorNullPointer
	load	[r14+-312],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1368 = _temp_1366 + 32
	load	[r14+-312],r1
	add	r1,32,r1
	store	r1,[r14+-304]
!   _temp_1369 = _temp_1368 + 4
	load	[r14+-304],r1
	add	r1,4,r1
	store	r1,[r14+-300]
!   Data Move: _temp_1365 = *_temp_1369  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r1],r1
	store	r1,[r14+-316]
!   _temp_1364 = _temp_1365 - 1		(int)
	load	[r14+-316],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-320]
!   if virtPage <= _temp_1364 then goto _Label_1362		(int)
	load	[r14+-444],r1
	load	[r14+-320],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1362
	jmp	_Label_1359
_Label_1362:
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_1371 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_1371) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1373 = _temp_1371 + 32
	load	[r14+-296],r1
	add	r1,32,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1370  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
!   _temp_1374 = _temp_1370 XOR 0		(bool)
	loadb	[r14+-17],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-16]
!   if _temp_1374 then goto _Label_1361 else goto _Label_1359
	loadb	[r14+-16],r1
	cmp	r1,0
	be	_Label_1359
	jmp	_Label_1361
_Label_1361:
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1377 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: _temp_1376 = *_temp_1377  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_1376) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1378 = _temp_1376 + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1375  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
!   _temp_1379 = _temp_1375 XOR 0		(bool)
	loadb	[r14+-15],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-14]
!   if _temp_1379 then goto _Label_1360 else goto _Label_1359
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_1359
	jmp	_Label_1360
_Label_1359:
! THEN...
	mov	2115,r13		! source line 2115
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1360:
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-464],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1382 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-264]
!   Data Move: _temp_1381 = *_temp_1382  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_1381) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1383 = _temp_1381 + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
!   destAddr = _temp_1380 + offset		(int)
	load	[r14+-272],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-472],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: c = *destAddr  (sizeInBytes=1)
	load	[r14+-472],r1
	loadb	[r1],r1
	storeb	r1,[r14+-23]
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   _temp_1386 = c XOR 10		(bool)
	loadb	[r14+-23],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1386 then goto _Label_1385 else goto _Label_1384
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1384
	jmp	_Label_1385
_Label_1384:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_1387 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1385:
! SEND STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   _temp_1388 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=c  sizeInBytes=1
	loadb	[r14+-23],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-460],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1354:
!   i = i + 1
	load	[r14+-476],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
	jmp	_Label_1352
! END FOR
_Label_1355:
! RETURN STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-460],r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1389
_Label_1316:
! ELSE...
	mov	2129,r13		! source line 2129
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1390 = *_temp_1391  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _temp_1390 + 124
	load	[r14+-248],r1
	add	r1,124,r1
	store	r1,[r14+-240]
!   Move address of _temp_1392 [fileDesc ] into _temp_1393
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-236]
!   Data Move: openFile = *_temp_1393  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-464],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-464],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1394 = openFile + 16
	load	[r14+-480],r1
	add	r1,16,r1
	store	r1,[r14+-232]
!   Data Move: nextPosInFile = *_temp_1394  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = openFile + 20
	load	[r14+-480],r1
	add	r1,20,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1395 = *_temp_1396  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1395) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = _temp_1395 + 24
	load	[r14+-228],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: fileSize = *_temp_1397  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-468]
! WHILE STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0WH",r10
_Label_1398:
!	jmp	_Label_1399
_Label_1399:
	mov	2137,r13		! source line 2137
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! IF STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0IF",r10
!   _temp_1403 = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1403 <= fileSize then goto _Label_1402		(int)
	load	[r14+-216],r1
	load	[r14+-468],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1402
!	jmp	_Label_1401
_Label_1401:
! THEN...
	mov	2140,r13		! source line 2140
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-468],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! END IF...
_Label_1402:
! IF STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0IF",r10
!   _temp_1406 = copiedSoFar + chunkSize		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_1406 <= sizeInBytes then goto _Label_1405		(int)
	load	[r14+-212],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1405
!	jmp	_Label_1404
_Label_1404:
! THEN...
	mov	2143,r13		! source line 2143
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-460],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! END IF...
_Label_1405:
! IF STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1408		(int)
	load	[r14+-452],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1408
!	jmp	_Label_1407
_Label_1407:
! THEN...
	mov	2146,r13		! source line 2146
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0BR",r10
	jmp	_Label_1400
! END IF...
_Label_1408:
! IF STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1413		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1413
	jmp	_Label_1409
_Label_1413:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1416 = *_temp_1417  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1416) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = _temp_1416 + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-192]
!   _temp_1419 = _temp_1418 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1415 = *_temp_1419  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_1414 = _temp_1415 - 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if virtPage <= _temp_1414 then goto _Label_1412		(int)
	load	[r14+-444],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1412
	jmp	_Label_1409
_Label_1412:
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1421 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1421) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1423 = _temp_1421 + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1420  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1420 then goto _Label_1411 else goto _Label_1409
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1409
	jmp	_Label_1411
_Label_1411:
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1426 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1425 = *_temp_1426  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1425) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1427 = _temp_1425 + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1424  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1424 then goto _Label_1410 else goto _Label_1409
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1409
	jmp	_Label_1410
_Label_1409:
! THEN...
	mov	2150,r13		! source line 2150
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1410:
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! IF STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1429		(int)
	load	[r14+-460],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1429
!	jmp	_Label_1428
_Label_1428:
! THEN...
	mov	2158,r13		! source line 2158
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0BR",r10
	jmp	_Label_1400
! END IF...
_Label_1429:
! END WHILE...
	jmp	_Label_1398
_Label_1400:
! ASSIGNMENT STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1431 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1430 = *_temp_1431  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1430) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1432 = _temp_1430 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_1432 [fileDesc ] into _temp_1433
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: openFile = *_temp_1433  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-480]
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-464],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-464],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-448]
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1434 = openFile + 16
	load	[r14+-480],r1
	add	r1,16,r1
	store	r1,[r14+-144]
!   Data Move: nextPosInFile = *_temp_1434  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = openFile + 20
	load	[r14+-480],r1
	add	r1,20,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1435 = *_temp_1436  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1435) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1437 = _temp_1435 + 24
	load	[r14+-140],r1
	add	r1,24,r1
	store	r1,[r14+-132]
!   Data Move: fileSize = *_temp_1437  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-468]
! WHILE STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0WH",r10
_Label_1438:
!	jmp	_Label_1439
_Label_1439:
	mov	2171,r13		! source line 2171
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-448],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! IF STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0IF",r10
!   _temp_1443 = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1443 <= fileSize then goto _Label_1442		(int)
	load	[r14+-128],r1
	load	[r14+-468],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1442
!	jmp	_Label_1441
_Label_1441:
! THEN...
	mov	2174,r13		! source line 2174
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-468],r1
	load	[r14+-456],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! END IF...
_Label_1442:
! IF STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0IF",r10
!   _temp_1446 = copiedSoFar + chunkSize		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1446 <= sizeInBytes then goto _Label_1445		(int)
	load	[r14+-124],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1445
!	jmp	_Label_1444
_Label_1444:
! THEN...
	mov	2177,r13		! source line 2177
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-460],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-452]
! END IF...
_Label_1445:
! IF STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1448		(int)
	load	[r14+-452],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1448
!	jmp	_Label_1447
_Label_1447:
! THEN...
	mov	2180,r13		! source line 2180
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0BR",r10
	jmp	_Label_1440
! END IF...
_Label_1448:
! IF STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1453		(int)
	load	[r14+-444],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1453
	jmp	_Label_1449
_Label_1453:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1456 = *_temp_1457  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1456) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1458 = _temp_1456 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   _temp_1459 = _temp_1458 + 4
	load	[r14+-104],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1455 = *_temp_1459  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_1454 = _temp_1455 - 1		(int)
	load	[r14+-116],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if virtPage <= _temp_1454 then goto _Label_1452		(int)
	load	[r14+-444],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1452
	jmp	_Label_1449
_Label_1452:
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1462 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1461 = *_temp_1462  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1461) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1463 = _temp_1461 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1460  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1460 then goto _Label_1451 else goto _Label_1449
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1449
	jmp	_Label_1451
_Label_1451:
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1466 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1465 = *_temp_1466  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1465) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1467 = _temp_1465 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1464  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1464 then goto _Label_1450 else goto _Label_1449
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1449
	jmp	_Label_1450
_Label_1449:
! THEN...
	mov	2183,r13		! source line 2183
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1450:
! SEND STATEMENT...
	mov	2185,r13		! source line 2185
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
	store	r1,[r14+-68]
!   Data Move: _temp_1468 = *_temp_1469  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1468) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1470 = _temp_1468 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1471 = *_temp_1472  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1471) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1473 = _temp_1471 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
	mov	2187,r13		! source line 2187
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1476 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1475 = *_temp_1476  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1475) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1477 = _temp_1475 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1474  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   destAddr = _temp_1474 + offset		(int)
	load	[r14+-48],r1
	load	[r14+-448],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_1478 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=read  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-22]
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-456],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-456]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-460],r1
	load	[r14+-452],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-444],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-448]
! IF STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1480		(int)
	load	[r14+-460],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1480
!	jmp	_Label_1479
_Label_1479:
! THEN...
	mov	2194,r13		! source line 2194
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0BR",r10
	jmp	_Label_1440
! END IF...
_Label_1480:
! END WHILE...
	jmp	_Label_1438
_Label_1440:
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-480],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1481 = openFile + 16
	load	[r14+-480],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1481 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-456],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-460],r1
	store	r1,[r14+8]
	add	r15,500,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1389:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1482
	.word	12		! total size of parameters
	.word	496		! frame size = 496
	.word	_Label_1483
	.word	8
	.word	4
	.word	_Label_1484
	.word	12
	.word	4
	.word	_Label_1485
	.word	16
	.word	4
	.word	_Label_1486
	.word	-28
	.word	4
	.word	_Label_1487
	.word	-32
	.word	4
	.word	_Label_1488
	.word	-36
	.word	4
	.word	_Label_1489
	.word	-40
	.word	4
	.word	_Label_1490
	.word	-44
	.word	4
	.word	_Label_1491
	.word	-48
	.word	4
	.word	_Label_1492
	.word	-52
	.word	4
	.word	_Label_1493
	.word	-56
	.word	4
	.word	_Label_1494
	.word	-60
	.word	4
	.word	_Label_1495
	.word	-64
	.word	4
	.word	_Label_1496
	.word	-68
	.word	4
	.word	_Label_1497
	.word	-72
	.word	4
	.word	_Label_1498
	.word	-76
	.word	4
	.word	_Label_1499
	.word	-80
	.word	4
	.word	_Label_1500
	.word	-84
	.word	4
	.word	_Label_1501
	.word	-9
	.word	1
	.word	_Label_1502
	.word	-88
	.word	4
	.word	_Label_1503
	.word	-92
	.word	4
	.word	_Label_1504
	.word	-96
	.word	4
	.word	_Label_1505
	.word	-10
	.word	1
	.word	_Label_1506
	.word	-100
	.word	4
	.word	_Label_1507
	.word	-104
	.word	4
	.word	_Label_1508
	.word	-108
	.word	4
	.word	_Label_1509
	.word	-112
	.word	4
	.word	_Label_1510
	.word	-116
	.word	4
	.word	_Label_1511
	.word	-120
	.word	4
	.word	_Label_1512
	.word	-124
	.word	4
	.word	_Label_1513
	.word	-128
	.word	4
	.word	_Label_1514
	.word	-132
	.word	4
	.word	_Label_1515
	.word	-136
	.word	4
	.word	_Label_1516
	.word	-140
	.word	4
	.word	_Label_1517
	.word	-144
	.word	4
	.word	_Label_1518
	.word	-148
	.word	4
	.word	_Label_1519
	.word	-152
	.word	4
	.word	_Label_1520
	.word	-156
	.word	4
	.word	_Label_1521
	.word	-160
	.word	4
	.word	_Label_1522
	.word	-164
	.word	4
	.word	_Label_1523
	.word	-168
	.word	4
	.word	_Label_1524
	.word	-172
	.word	4
	.word	_Label_1525
	.word	-11
	.word	1
	.word	_Label_1526
	.word	-176
	.word	4
	.word	_Label_1527
	.word	-180
	.word	4
	.word	_Label_1528
	.word	-184
	.word	4
	.word	_Label_1529
	.word	-12
	.word	1
	.word	_Label_1530
	.word	-188
	.word	4
	.word	_Label_1531
	.word	-192
	.word	4
	.word	_Label_1532
	.word	-196
	.word	4
	.word	_Label_1533
	.word	-200
	.word	4
	.word	_Label_1534
	.word	-204
	.word	4
	.word	_Label_1535
	.word	-208
	.word	4
	.word	_Label_1536
	.word	-212
	.word	4
	.word	_Label_1537
	.word	-216
	.word	4
	.word	_Label_1538
	.word	-220
	.word	4
	.word	_Label_1539
	.word	-224
	.word	4
	.word	_Label_1540
	.word	-228
	.word	4
	.word	_Label_1541
	.word	-232
	.word	4
	.word	_Label_1542
	.word	-236
	.word	4
	.word	_Label_1543
	.word	-240
	.word	4
	.word	_Label_1544
	.word	-244
	.word	4
	.word	_Label_1545
	.word	-248
	.word	4
	.word	_Label_1546
	.word	-252
	.word	4
	.word	_Label_1547
	.word	-256
	.word	4
	.word	_Label_1548
	.word	-13
	.word	1
	.word	_Label_1549
	.word	-260
	.word	4
	.word	_Label_1550
	.word	-264
	.word	4
	.word	_Label_1551
	.word	-268
	.word	4
	.word	_Label_1552
	.word	-272
	.word	4
	.word	_Label_1553
	.word	-14
	.word	1
	.word	_Label_1554
	.word	-276
	.word	4
	.word	_Label_1555
	.word	-280
	.word	4
	.word	_Label_1556
	.word	-284
	.word	4
	.word	_Label_1557
	.word	-15
	.word	1
	.word	_Label_1558
	.word	-16
	.word	1
	.word	_Label_1559
	.word	-288
	.word	4
	.word	_Label_1560
	.word	-292
	.word	4
	.word	_Label_1561
	.word	-296
	.word	4
	.word	_Label_1562
	.word	-17
	.word	1
	.word	_Label_1563
	.word	-300
	.word	4
	.word	_Label_1564
	.word	-304
	.word	4
	.word	_Label_1565
	.word	-308
	.word	4
	.word	_Label_1566
	.word	-312
	.word	4
	.word	_Label_1567
	.word	-316
	.word	4
	.word	_Label_1568
	.word	-320
	.word	4
	.word	_Label_1569
	.word	-324
	.word	4
	.word	_Label_1570
	.word	-328
	.word	4
	.word	_Label_1571
	.word	-332
	.word	4
	.word	_Label_1572
	.word	-18
	.word	1
	.word	_Label_1573
	.word	-336
	.word	4
	.word	_Label_1574
	.word	-340
	.word	4
	.word	_Label_1575
	.word	-344
	.word	4
	.word	_Label_1576
	.word	-19
	.word	1
	.word	_Label_1577
	.word	-20
	.word	1
	.word	_Label_1578
	.word	-348
	.word	4
	.word	_Label_1579
	.word	-352
	.word	4
	.word	_Label_1580
	.word	-356
	.word	4
	.word	_Label_1581
	.word	-21
	.word	1
	.word	_Label_1582
	.word	-360
	.word	4
	.word	_Label_1583
	.word	-364
	.word	4
	.word	_Label_1584
	.word	-368
	.word	4
	.word	_Label_1585
	.word	-372
	.word	4
	.word	_Label_1586
	.word	-376
	.word	4
	.word	_Label_1587
	.word	-380
	.word	4
	.word	_Label_1588
	.word	-384
	.word	4
	.word	_Label_1589
	.word	-388
	.word	4
	.word	_Label_1590
	.word	-392
	.word	4
	.word	_Label_1591
	.word	-396
	.word	4
	.word	_Label_1592
	.word	-400
	.word	4
	.word	_Label_1593
	.word	-404
	.word	4
	.word	_Label_1594
	.word	-408
	.word	4
	.word	_Label_1595
	.word	-412
	.word	4
	.word	_Label_1596
	.word	-416
	.word	4
	.word	_Label_1597
	.word	-420
	.word	4
	.word	_Label_1598
	.word	-424
	.word	4
	.word	_Label_1599
	.word	-428
	.word	4
	.word	_Label_1600
	.word	-432
	.word	4
	.word	_Label_1601
	.word	-436
	.word	4
	.word	_Label_1602
	.word	-440
	.word	4
	.word	_Label_1603
	.word	-444
	.word	4
	.word	_Label_1604
	.word	-448
	.word	4
	.word	_Label_1605
	.word	-452
	.word	4
	.word	_Label_1606
	.word	-456
	.word	4
	.word	_Label_1607
	.word	-460
	.word	4
	.word	_Label_1608
	.word	-464
	.word	4
	.word	_Label_1609
	.word	-468
	.word	4
	.word	_Label_1610
	.word	-472
	.word	4
	.word	_Label_1611
	.word	-476
	.word	4
	.word	_Label_1612
	.word	-480
	.word	4
	.word	_Label_1613
	.word	-22
	.word	1
	.word	_Label_1614
	.word	-23
	.word	1
	.word	_Label_1615
	.word	-484
	.word	4
	.word	0
_Label_1482:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1483:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1484:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1485:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1501:
	.byte	'C'
	.ascii	"_temp_1464\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1505:
	.byte	'C'
	.ascii	"_temp_1460\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1525:
	.byte	'C'
	.ascii	"_temp_1424\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1529:
	.byte	'C'
	.ascii	"_temp_1420\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1548:
	.byte	'C'
	.ascii	"_temp_1386\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1553:
	.byte	'C'
	.ascii	"_temp_1379\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1557:
	.byte	'C'
	.ascii	"_temp_1375\0"
	.align
_Label_1558:
	.byte	'C'
	.ascii	"_temp_1374\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1562:
	.byte	'C'
	.ascii	"_temp_1370\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1572:
	.byte	'C'
	.ascii	"_temp_1351\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1576:
	.byte	'C'
	.ascii	"_temp_1347\0"
	.align
_Label_1577:
	.byte	'C'
	.ascii	"_temp_1346\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1581:
	.byte	'C'
	.ascii	"_temp_1342\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1604:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1608:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1609:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1610:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1611:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1612:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1613:
	.byte	'B'
	.ascii	"read\0"
	.align
_Label_1614:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1615:
	.byte	'P'
	.ascii	"tempBuffer\0"
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
_Label_4352:
	push	r0
	sub	r1,1,r1
	bne	_Label_4352
	mov	2205,r13		! source line 2205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_1616 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1617 = _temp_1616 + 4
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
	mov	2209,r13		! source line 2209
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1623		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1623
	jmp	_Label_1618
_Label_1623:
!   if fileDesc < 10 then goto _Label_1622		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1622
	jmp	_Label_1618
_Label_1622:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1626 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1625 = *_temp_1626  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1625) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1627 = _temp_1625 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1627 [fileDesc ] into _temp_1628
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
!   Data Move: _temp_1624 = *_temp_1628  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1624) then goto _Label_1618
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1618
!	jmp	_Label_1621
_Label_1621:
!   if newCurrentPos >= -1 then goto _Label_1620		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1620
	jmp	_Label_1618
_Label_1620:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1632 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1632) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1634 = _temp_1632 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1634 [fileDesc ] into _temp_1635
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
!   Data Move: _temp_1631 = *_temp_1635  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1631) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1636 = _temp_1631 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1630 = *_temp_1636  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1630) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1637 = _temp_1630 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1629 = *_temp_1637  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1629 then goto _Label_1619		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1619
!	jmp	_Label_1618
_Label_1618:
! THEN...
	mov	2210,r13		! source line 2210
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_1638 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1639 = _temp_1638 + 4
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
	mov	2211,r13		! source line 2211
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1619:
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1641 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1640 = *_temp_1641  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1640) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1642 = _temp_1640 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1642 [fileDesc ] into _temp_1643
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
!   Data Move: openFile = *_temp_1643  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1645		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1645
!	jmp	_Label_1644
_Label_1644:
! THEN...
	mov	2215,r13		! source line 2215
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1646 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1649 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1648 = *_temp_1649  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1648) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1650 = _temp_1648 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1647 = *_temp_1650  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1646 = _temp_1647  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_1651 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1652 = _temp_1651 + 4
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
	mov	2217,r13		! source line 2217
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1654 = *_temp_1655  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1654) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1656 = _temp_1654 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1653 = *_temp_1656  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1653  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1645:
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1657 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1657 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0SE",r10
!   _temp_1658 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1659 = _temp_1658 + 4
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
	mov	2221,r13		! source line 2221
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
	.word	_Label_1660
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1661
	.word	8
	.word	4
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
	.word	_Label_1669
	.word	-36
	.word	4
	.word	_Label_1670
	.word	-40
	.word	4
	.word	_Label_1671
	.word	-44
	.word	4
	.word	_Label_1672
	.word	-48
	.word	4
	.word	_Label_1673
	.word	-52
	.word	4
	.word	_Label_1674
	.word	-56
	.word	4
	.word	_Label_1675
	.word	-60
	.word	4
	.word	_Label_1676
	.word	-64
	.word	4
	.word	_Label_1677
	.word	-68
	.word	4
	.word	_Label_1678
	.word	-72
	.word	4
	.word	_Label_1679
	.word	-76
	.word	4
	.word	_Label_1680
	.word	-80
	.word	4
	.word	_Label_1681
	.word	-84
	.word	4
	.word	_Label_1682
	.word	-88
	.word	4
	.word	_Label_1683
	.word	-92
	.word	4
	.word	_Label_1684
	.word	-96
	.word	4
	.word	_Label_1685
	.word	-100
	.word	4
	.word	_Label_1686
	.word	-104
	.word	4
	.word	_Label_1687
	.word	-108
	.word	4
	.word	_Label_1688
	.word	-112
	.word	4
	.word	_Label_1689
	.word	-116
	.word	4
	.word	_Label_1690
	.word	-120
	.word	4
	.word	_Label_1691
	.word	-124
	.word	4
	.word	_Label_1692
	.word	-128
	.word	4
	.word	_Label_1693
	.word	-132
	.word	4
	.word	_Label_1694
	.word	-136
	.word	4
	.word	_Label_1695
	.word	-140
	.word	4
	.word	_Label_1696
	.word	-144
	.word	4
	.word	_Label_1697
	.word	-148
	.word	4
	.word	_Label_1698
	.word	-152
	.word	4
	.word	_Label_1699
	.word	-156
	.word	4
	.word	0
_Label_1660:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"newCurrentPos\0"
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
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1699:
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
	mov	28,r1
_Label_4353:
	push	r0
	sub	r1,1,r1
	bne	_Label_4353
	mov	2226,r13		! source line 2226
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1704 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_1704) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1706 = _temp_1704 + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-96]
!   Move address of _temp_1706 [fileDesc ] into _temp_1707
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: _temp_1703 = *_temp_1707  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1703) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1708 = _temp_1703 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1702 = *_temp_1708  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1702 != 2 then goto _Label_1701		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1701
!	jmp	_Label_1700
_Label_1700:
! THEN...
	mov	2228,r13		! source line 2228
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1710 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1709 = *_temp_1710  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1709) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1711 = _temp_1709 + 124
	load	[r14+-84],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_1711 [fileDesc ] into _temp_1712
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: *_temp_1712 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-72],r2
	store	r1,[r2]
	jmp	_Label_1713
_Label_1701:
! ELSE...
	mov	2230,r13		! source line 2230
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1717		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1717
	jmp	_Label_1714
_Label_1717:
!   if fileDesc < 10 then goto _Label_1716		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1716
	jmp	_Label_1714
_Label_1716:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1720 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1719 = *_temp_1720  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1719) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1721 = _temp_1719 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1721 [fileDesc ] into _temp_1722
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
!   Data Move: _temp_1718 = *_temp_1722  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1718) then goto _Label_1714
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1714
	jmp	_Label_1715
_Label_1714:
	jmp	_Label_1723
_Label_1715:
! ELSE...
	mov	2232,r13		! source line 2232
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1726 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1725 = *_temp_1726  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1725) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1727 = _temp_1725 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1727 [fileDesc ] into _temp_1728
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
!   Data Move: _temp_1724 = *_temp_1728  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1729 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1724  sizeInBytes=4
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
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1731 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1730 = *_temp_1731  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1732 = _temp_1730 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1732 [fileDesc ] into _temp_1733
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
!   Data Move: *_temp_1733 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1723:
! END IF...
_Label_1713:
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1734
	.word	4		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1735
	.word	8
	.word	4
	.word	_Label_1736
	.word	-12
	.word	4
	.word	_Label_1737
	.word	-16
	.word	4
	.word	_Label_1738
	.word	-20
	.word	4
	.word	_Label_1739
	.word	-24
	.word	4
	.word	_Label_1740
	.word	-28
	.word	4
	.word	_Label_1741
	.word	-32
	.word	4
	.word	_Label_1742
	.word	-36
	.word	4
	.word	_Label_1743
	.word	-40
	.word	4
	.word	_Label_1744
	.word	-44
	.word	4
	.word	_Label_1745
	.word	-48
	.word	4
	.word	_Label_1746
	.word	-52
	.word	4
	.word	_Label_1747
	.word	-56
	.word	4
	.word	_Label_1748
	.word	-60
	.word	4
	.word	_Label_1749
	.word	-64
	.word	4
	.word	_Label_1750
	.word	-68
	.word	4
	.word	_Label_1751
	.word	-72
	.word	4
	.word	_Label_1752
	.word	-76
	.word	4
	.word	_Label_1753
	.word	-80
	.word	4
	.word	_Label_1754
	.word	-84
	.word	4
	.word	_Label_1755
	.word	-88
	.word	4
	.word	_Label_1756
	.word	-92
	.word	4
	.word	_Label_1757
	.word	-96
	.word	4
	.word	_Label_1758
	.word	-100
	.word	4
	.word	_Label_1759
	.word	-104
	.word	4
	.word	_Label_1760
	.word	-108
	.word	4
	.word	_Label_1761
	.word	-112
	.word	4
	.word	0
_Label_1734:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1735:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_189_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4354:
	push	r0
	sub	r1,1,r1
	bne	_Label_4354
	mov	2826,r13		! source line 2826
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1762 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1762  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0AS",r10
!   _temp_1763 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1763) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1765 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1765) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1764 = *_temp_1765  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1763 = _temp_1764  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0AS",r10
!   _temp_1766 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1766) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1768 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1768) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1767 = *_temp_1768  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1766 = _temp_1767  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
!   _temp_1769 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1769) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1771 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1771) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1770 = *_temp_1771  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1769 = _temp_1770  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1772
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1773
	.word	8
	.word	4
	.word	_Label_1774
	.word	12
	.word	4
	.word	_Label_1775
	.word	-16
	.word	4
	.word	_Label_1776
	.word	-9
	.word	1
	.word	_Label_1777
	.word	-20
	.word	4
	.word	_Label_1778
	.word	-24
	.word	4
	.word	_Label_1779
	.word	-10
	.word	1
	.word	_Label_1780
	.word	-28
	.word	4
	.word	_Label_1781
	.word	-32
	.word	4
	.word	_Label_1782
	.word	-11
	.word	1
	.word	_Label_1783
	.word	-36
	.word	4
	.word	_Label_1784
	.word	-12
	.word	1
	.word	_Label_1785
	.word	-40
	.word	4
	.word	_Label_1786
	.word	-44
	.word	4
	.word	0
_Label_1772:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1773:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1774:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1776:
	.byte	'C'
	.ascii	"_temp_1770\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1779:
	.byte	'C'
	.ascii	"_temp_1767\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1782:
	.byte	'C'
	.ascii	"_temp_1764\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1784:
	.byte	'C'
	.ascii	"_temp_1762\0"
	.align
_Label_1785:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1786:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_188_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_printFCB,r1
	push	r1
	mov	3,r1
_Label_4355:
	push	r0
	sub	r1,1,r1
	bne	_Label_4355
	mov	2836,r13		! source line 2836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1788 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1787 = *_temp_1788  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1787  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2838,r13		! source line 2838
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_printFCB:
	.word	_sourceFileName
	.word	_Label_1789
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1790
	.word	8
	.word	4
	.word	_Label_1791
	.word	-12
	.word	4
	.word	_Label_1792
	.word	-16
	.word	4
	.word	0
_Label_1789:
	.ascii	"printFCB\0"
	.align
_Label_1790:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_187_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_printOpen,r1
	push	r1
	mov	4,r1
_Label_4356:
	push	r0
	sub	r1,1,r1
	bne	_Label_4356
	mov	2841,r13		! source line 2841
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1793 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1794 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2843,r13		! source line 2843
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1795 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1795  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2845,r13		! source line 2845
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
	mov	2845,r13		! source line 2845
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_printOpen:
	.word	_sourceFileName
	.word	_Label_1796
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1797
	.word	8
	.word	4
	.word	_Label_1798
	.word	-12
	.word	4
	.word	_Label_1799
	.word	-16
	.word	4
	.word	_Label_1800
	.word	-20
	.word	4
	.word	0
_Label_1796:
	.ascii	"printOpen\0"
	.align
_Label_1797:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_186_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4357:
	push	r0
	sub	r1,1,r1
	bne	_Label_4357
	mov	3194,r13		! source line 3194
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0SE",r10
!   _temp_1801 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1802
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1803
	.word	8
	.word	4
	.word	_Label_1804
	.word	-12
	.word	4
	.word	0
_Label_1802:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1805
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1805:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1806
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1806:
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
_Label_4358:
	push	r0
	sub	r1,1,r1
	bne	_Label_4358
	mov	262,r13		! source line 262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1808		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1808
!	jmp	_Label_1807
_Label_1807:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1809 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
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
_Label_1808:
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
	.word	_Label_1811
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1813
	.word	12
	.word	4
	.word	_Label_1814
	.word	-12
	.word	4
	.word	_Label_1815
	.word	-16
	.word	4
	.word	0
_Label_1811:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1812:
	.ascii	"Pself\0"
	.align
_Label_1813:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1809\0"
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
_Label_4359:
	push	r0
	sub	r1,1,r1
	bne	_Label_4359
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
!   if count != 2147483647 then goto _Label_1817		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1817
!	jmp	_Label_1816
_Label_1816:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1818 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
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
_Label_1817:
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
!   if count > 0 then goto _Label_1820		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1820
!	jmp	_Label_1819
_Label_1819:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_1821 = &waitingThreads
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
!   _temp_1822 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1822 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0SE",r10
!   _temp_1823 = &_P_Kernel_readyList
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
_Label_1820:
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
	.word	_Label_1824
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1826
	.word	-12
	.word	4
	.word	_Label_1827
	.word	-16
	.word	4
	.word	_Label_1828
	.word	-20
	.word	4
	.word	_Label_1829
	.word	-24
	.word	4
	.word	_Label_1830
	.word	-28
	.word	4
	.word	_Label_1831
	.word	-32
	.word	4
	.word	0
_Label_1824:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1825:
	.ascii	"Pself\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1830:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1831:
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
_Label_4360:
	push	r0
	sub	r1,1,r1
	bne	_Label_4360
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
!   if count != -2147483648 then goto _Label_1833		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1833
!	jmp	_Label_1832
_Label_1832:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1834 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1834  sizeInBytes=4
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
_Label_1833:
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
!   if count >= 0 then goto _Label_1836		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1836
!	jmp	_Label_1835
_Label_1835:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   _temp_1837 = &waitingThreads
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
_Label_1836:
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
	.word	_Label_1838
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1840
	.word	-12
	.word	4
	.word	_Label_1841
	.word	-16
	.word	4
	.word	_Label_1842
	.word	-20
	.word	4
	.word	0
_Label_1838:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1839:
	.ascii	"Pself\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1843
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1843:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1844
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1844:
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
_Label_4361:
	push	r0
	sub	r1,1,r1
	bne	_Label_4361
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
	.word	_Label_1846
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1848
	.word	-12
	.word	4
	.word	0
_Label_1846:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1847:
	.ascii	"Pself\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1845\0"
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
_Label_4362:
	push	r0
	sub	r1,1,r1
	bne	_Label_4362
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1850		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1850
!	jmp	_Label_1849
_Label_1849:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1851 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
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
_Label_1850:
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
!   if heldBy == 0 then goto _Label_1855		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1855
!   _temp_1854 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1856
_Label_1855:
!   _temp_1854 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1856:
!   if _temp_1854 then goto _Label_1853 else goto _Label_1852
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1852
	jmp	_Label_1853
_Label_1852:
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
	jmp	_Label_1857
_Label_1853:
! ELSE...
	mov	342,r13		! source line 342
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_1858 = &waitingThreads
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
_Label_1857:
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
	.word	_Label_1859
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1861
	.word	-16
	.word	4
	.word	_Label_1862
	.word	-9
	.word	1
	.word	_Label_1863
	.word	-20
	.word	4
	.word	_Label_1864
	.word	-24
	.word	4
	.word	0
_Label_1859:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1860:
	.ascii	"Pself\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1862:
	.byte	'C'
	.ascii	"_temp_1854\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1864:
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
_Label_4363:
	push	r0
	sub	r1,1,r1
	bne	_Label_4363
	mov	350,r13		! source line 350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1866		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1866
!	jmp	_Label_1865
_Label_1865:
! THEN...
	mov	355,r13		! source line 355
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1867 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
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
_Label_1866:
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
!   _temp_1868 = &waitingThreads
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
!   if t == 0 then goto _Label_1870		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1870
!	jmp	_Label_1869
_Label_1869:
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
!   _temp_1871 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1871 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
!   _temp_1872 = &_P_Kernel_readyList
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
	jmp	_Label_1873
_Label_1870:
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
_Label_1873:
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
	.word	_Label_1874
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1876
	.word	-12
	.word	4
	.word	_Label_1877
	.word	-16
	.word	4
	.word	_Label_1878
	.word	-20
	.word	4
	.word	_Label_1879
	.word	-24
	.word	4
	.word	_Label_1880
	.word	-28
	.word	4
	.word	_Label_1881
	.word	-32
	.word	4
	.word	0
_Label_1874:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1875:
	.ascii	"Pself\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1881:
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
_Label_4364:
	push	r0
	sub	r1,1,r1
	bne	_Label_4364
	mov	371,r13		! source line 371
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1884		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1884
!	jmp	_Label_1883
_Label_1883:
!   _temp_1882 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1885
_Label_1884:
!   _temp_1882 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1885:
!   ReturnResult: _temp_1882  (sizeInBytes=1)
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
	.word	_Label_1886
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1888
	.word	-9
	.word	1
	.word	0
_Label_1886:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1887:
	.ascii	"Pself\0"
	.align
_Label_1888:
	.byte	'C'
	.ascii	"_temp_1882\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1889
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1889:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1890
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1890:
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
_Label_4365:
	push	r0
	sub	r1,1,r1
	bne	_Label_4365
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
	.word	_Label_1892
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1894
	.word	-12
	.word	4
	.word	0
_Label_1892:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1893:
	.ascii	"Pself\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1891\0"
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
_Label_4366:
	push	r0
	sub	r1,1,r1
	bne	_Label_4366
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
!   Retrieve Result: targetName=_temp_1897  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1897 then goto _Label_1896 else goto _Label_1895
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1895
	jmp	_Label_1896
_Label_1895:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1898 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
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
_Label_1896:
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
!   _temp_1899 = &waitingThreads
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
	.word	_Label_1900
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	12
	.word	4
	.word	_Label_1903
	.word	-16
	.word	4
	.word	_Label_1904
	.word	-20
	.word	4
	.word	_Label_1905
	.word	-9
	.word	1
	.word	_Label_1906
	.word	-24
	.word	4
	.word	0
_Label_1900:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1905:
	.byte	'C'
	.ascii	"_temp_1897\0"
	.align
_Label_1906:
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
_Label_4367:
	push	r0
	sub	r1,1,r1
	bne	_Label_4367
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
!   Retrieve Result: targetName=_temp_1909  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1909 then goto _Label_1908 else goto _Label_1907
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1907
	jmp	_Label_1908
_Label_1907:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1910 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1910  sizeInBytes=4
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
_Label_1908:
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
!   _temp_1911 = &waitingThreads
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
!   if t == 0 then goto _Label_1913		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1913
!	jmp	_Label_1912
_Label_1912:
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
!   _temp_1914 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1914 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_1915 = &_P_Kernel_readyList
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
_Label_1913:
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
	.word	_Label_1916
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1917
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1918
	.word	12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-9
	.word	1
	.word	_Label_1924
	.word	-32
	.word	4
	.word	_Label_1925
	.word	-36
	.word	4
	.word	0
_Label_1916:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1917:
	.ascii	"Pself\0"
	.align
_Label_1918:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1923:
	.byte	'C'
	.ascii	"_temp_1909\0"
	.align
_Label_1924:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1925:
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
_Label_4368:
	push	r0
	sub	r1,1,r1
	bne	_Label_4368
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
!   Retrieve Result: targetName=_temp_1928  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1928 then goto _Label_1927 else goto _Label_1926
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1926
	jmp	_Label_1927
_Label_1926:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1929 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
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
_Label_1927:
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
_Label_1930:
!	jmp	_Label_1931
_Label_1931:
	mov	460,r13		! source line 460
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_1933 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1934
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1934
	jmp	_Label_1935
_Label_1934:
! THEN...
	mov	463,r13		! source line 463
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0BR",r10
	jmp	_Label_1932
! END IF...
_Label_1935:
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1936 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1936 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
!   _temp_1937 = &_P_Kernel_readyList
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
	jmp	_Label_1930
_Label_1932:
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
	.word	_Label_1938
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1940
	.word	12
	.word	4
	.word	_Label_1941
	.word	-16
	.word	4
	.word	_Label_1942
	.word	-20
	.word	4
	.word	_Label_1943
	.word	-24
	.word	4
	.word	_Label_1944
	.word	-28
	.word	4
	.word	_Label_1945
	.word	-9
	.word	1
	.word	_Label_1946
	.word	-32
	.word	4
	.word	_Label_1947
	.word	-36
	.word	4
	.word	0
_Label_1938:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1939:
	.ascii	"Pself\0"
	.align
_Label_1940:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1945:
	.byte	'C'
	.ascii	"_temp_1928\0"
	.align
_Label_1946:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1947:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1948
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
_Label_1948:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1949
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1949:
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
_Label_4369:
	push	r0
	sub	r1,1,r1
	bne	_Label_4369
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
!   _temp_1950 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1950) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1950 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   _temp_1951 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1951 [0 ] into _temp_1952
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
!   Data Move: *_temp_1952 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   _temp_1953 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1953 [999 ] into _temp_1954
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
!   Data Move: *_temp_1954 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   _temp_1955 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1955 [999 ] into _temp_1956
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
!   stackTop = _temp_1956		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_1957 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1959 = &_temp_1958
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1959 = _temp_1959 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1961:
!   Data Move: *_temp_1959 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1959 = _temp_1959 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1960 = _temp_1960 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1960) then goto _Label_1961
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1961
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1962 = &_temp_1958
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4370
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4370:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1957 = *_temp_1962  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4371:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4371
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
!   _temp_1963 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1965 = &_temp_1964
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1965 = _temp_1965 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1967:
!   Data Move: *_temp_1965 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1965 = _temp_1965 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1966 = _temp_1966 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1966) then goto _Label_1967
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1967
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1968 = &_temp_1964
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4372
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4372:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1963 = *_temp_1968  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4373:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4373
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
	.word	_Label_1969
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1971
	.word	12
	.word	4
	.word	_Label_1972
	.word	-12
	.word	4
	.word	_Label_1973
	.word	-16
	.word	4
	.word	_Label_1974
	.word	-20
	.word	4
	.word	_Label_1975
	.word	-84
	.word	64
	.word	_Label_1976
	.word	-88
	.word	4
	.word	_Label_1977
	.word	-92
	.word	4
	.word	_Label_1978
	.word	-96
	.word	4
	.word	_Label_1979
	.word	-100
	.word	4
	.word	_Label_1980
	.word	-156
	.word	56
	.word	_Label_1981
	.word	-160
	.word	4
	.word	_Label_1982
	.word	-164
	.word	4
	.word	_Label_1983
	.word	-168
	.word	4
	.word	_Label_1984
	.word	-172
	.word	4
	.word	_Label_1985
	.word	-176
	.word	4
	.word	_Label_1986
	.word	-180
	.word	4
	.word	_Label_1987
	.word	-184
	.word	4
	.word	_Label_1988
	.word	-188
	.word	4
	.word	0
_Label_1969:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1970:
	.ascii	"Pself\0"
	.align
_Label_1971:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1950\0"
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
_Label_4374:
	push	r0
	sub	r1,1,r1
	bne	_Label_4374
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
!   _temp_1989 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1989  (sizeInBytes=4)
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
!   _temp_1991 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1990  sizeInBytes=4
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
	.word	_Label_1992
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1994
	.word	12
	.word	4
	.word	_Label_1995
	.word	16
	.word	4
	.word	_Label_1996
	.word	-12
	.word	4
	.word	_Label_1997
	.word	-16
	.word	4
	.word	_Label_1998
	.word	-20
	.word	4
	.word	_Label_1999
	.word	-24
	.word	4
	.word	_Label_2000
	.word	-28
	.word	4
	.word	0
_Label_1992:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1993:
	.ascii	"Pself\0"
	.align
_Label_1994:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2000:
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
_Label_4375:
	push	r0
	sub	r1,1,r1
	bne	_Label_4375
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2003 == _P_Kernel_currentThread then goto _Label_2002		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2002
!	jmp	_Label_2001
_Label_2001:
! THEN...
	mov	539,r13		! source line 539
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2004 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
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
_Label_2002:
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
!   _temp_2005 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2007		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2007
!	jmp	_Label_2006
_Label_2006:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2009		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2009
!	jmp	_Label_2008
_Label_2008:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2010 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
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
_Label_2009:
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
!   _temp_2012 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2011  sizeInBytes=4
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
_Label_2007:
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
	.word	_Label_2013
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2014
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2015
	.word	-12
	.word	4
	.word	_Label_2016
	.word	-16
	.word	4
	.word	_Label_2017
	.word	-20
	.word	4
	.word	_Label_2018
	.word	-24
	.word	4
	.word	_Label_2019
	.word	-28
	.word	4
	.word	_Label_2020
	.word	-32
	.word	4
	.word	_Label_2021
	.word	-36
	.word	4
	.word	_Label_2022
	.word	-40
	.word	4
	.word	_Label_2023
	.word	-44
	.word	4
	.word	0
_Label_2013:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2014:
	.ascii	"Pself\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2021:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2022:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2023:
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
_Label_4376:
	push	r0
	sub	r1,1,r1
	bne	_Label_4376
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2025		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2025
!	jmp	_Label_2024
_Label_2024:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2026 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
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
_Label_2025:
! IF STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2029 == _P_Kernel_currentThread then goto _Label_2028		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2028
!	jmp	_Label_2027
_Label_2027:
! THEN...
	mov	579,r13		! source line 579
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2030 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
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
_Label_2028:
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
!   _temp_2031 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2032
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2032
	jmp	_Label_2033
_Label_2032:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2034 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
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
_Label_2033:
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
	.word	_Label_2035
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2036
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2037
	.word	-12
	.word	4
	.word	_Label_2038
	.word	-16
	.word	4
	.word	_Label_2039
	.word	-20
	.word	4
	.word	_Label_2040
	.word	-24
	.word	4
	.word	_Label_2041
	.word	-28
	.word	4
	.word	_Label_2042
	.word	-32
	.word	4
	.word	0
_Label_2035:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2036:
	.ascii	"Pself\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2042:
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
_Label_4377:
	push	r0
	sub	r1,1,r1
	bne	_Label_4377
	mov	594,r13		! source line 594
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0IF",r10
!   _temp_2046 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2046 [0 ] into _temp_2047
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
!   Data Move: _temp_2045 = *_temp_2047  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2045 == 606348324 then goto _Label_2044		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2044
!	jmp	_Label_2043
_Label_2043:
! THEN...
	mov	601,r13		! source line 601
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2048 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
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
	jmp	_Label_2049
_Label_2044:
! ELSE...
	mov	602,r13		! source line 602
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   _temp_2053 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2053 [999 ] into _temp_2054
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
!   Data Move: _temp_2052 = *_temp_2054  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2052 == 606348324 then goto _Label_2051		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2051
!	jmp	_Label_2050
_Label_2050:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2055 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
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
_Label_2051:
! END IF...
_Label_2049:
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
	.word	_Label_2056
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2058
	.word	-12
	.word	4
	.word	_Label_2059
	.word	-16
	.word	4
	.word	_Label_2060
	.word	-20
	.word	4
	.word	_Label_2061
	.word	-24
	.word	4
	.word	_Label_2062
	.word	-28
	.word	4
	.word	_Label_2063
	.word	-32
	.word	4
	.word	_Label_2064
	.word	-36
	.word	4
	.word	_Label_2065
	.word	-40
	.word	4
	.word	0
_Label_2056:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2057:
	.ascii	"Pself\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2045\0"
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
_Label_4378:
	push	r0
	sub	r1,1,r1
	bne	_Label_4378
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
!   _temp_2066 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
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
!   _temp_2067 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2068  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2069 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2069  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	620,r13		! source line 620
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2070 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
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
!   _temp_2075 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2076 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2075  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2071:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2076 then goto _Label_2074		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2074
_Label_2072:
	mov	622,r13		! source line 622
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2077 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2078 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2079 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2081 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2081 [i ] into _temp_2082
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
!   Data Move: _temp_2080 = *_temp_2082  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2083 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2083  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2085 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2085 [i ] into _temp_2086
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
!   Data Move: _temp_2084 = *_temp_2086  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2084  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2087 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2073:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2071
! END FOR
_Label_2074:
! CALL STATEMENT...
!   _temp_2088 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-116]
!   _temp_2089 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2088  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2089  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2090 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-108]
!   _temp_2092 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2092 [0 ] into _temp_2093
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
!   _temp_2091 = _temp_2093		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2090  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2091  sizeInBytes=4
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
	be	_Label_2096
	cmp	r1,2
	be	_Label_2097
	cmp	r1,3
	be	_Label_2098
	cmp	r1,4
	be	_Label_2099
	cmp	r1,5
	be	_Label_2100
	jmp	_Label_2094
! CASE 1...
_Label_2096:
! CALL STATEMENT...
!   _temp_2101 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2101  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0BR",r10
	jmp	_Label_2095
! CASE 2...
_Label_2097:
! CALL STATEMENT...
!   _temp_2102 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0BR",r10
	jmp	_Label_2095
! CASE 3...
_Label_2098:
! CALL STATEMENT...
!   _temp_2103 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0BR",r10
	jmp	_Label_2095
! CASE 4...
_Label_2099:
! CALL STATEMENT...
!   _temp_2104 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2104  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0BR",r10
	jmp	_Label_2095
! CASE 5...
_Label_2100:
! CALL STATEMENT...
!   _temp_2105 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2105  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	648,r13		! source line 648
	mov	"\0\0BR",r10
	jmp	_Label_2095
! DEFAULT CASE...
_Label_2094:
! CALL STATEMENT...
!   _temp_2106 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2106  sizeInBytes=4
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
_Label_2095:
! CALL STATEMENT...
!   _temp_2107 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
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
!   _temp_2108 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2108  sizeInBytes=4
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
!   _temp_2113 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2114 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2113  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2109:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2114 then goto _Label_2112		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2112
_Label_2110:
	mov	656,r13		! source line 656
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2115 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	657,r13		! source line 657
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2116 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2117 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2119 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2119 [i ] into _temp_2120
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
!   Data Move: _temp_2118 = *_temp_2120  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2121 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2121  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2123 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2123 [i ] into _temp_2124
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
!   Data Move: _temp_2122 = *_temp_2124  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2125 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2125  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2111:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2109
! END FOR
_Label_2112:
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
	.word	_Label_2126
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2127
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2128
	.word	-12
	.word	4
	.word	_Label_2129
	.word	-16
	.word	4
	.word	_Label_2130
	.word	-20
	.word	4
	.word	_Label_2131
	.word	-24
	.word	4
	.word	_Label_2132
	.word	-28
	.word	4
	.word	_Label_2133
	.word	-32
	.word	4
	.word	_Label_2134
	.word	-36
	.word	4
	.word	_Label_2135
	.word	-40
	.word	4
	.word	_Label_2136
	.word	-44
	.word	4
	.word	_Label_2137
	.word	-48
	.word	4
	.word	_Label_2138
	.word	-52
	.word	4
	.word	_Label_2139
	.word	-56
	.word	4
	.word	_Label_2140
	.word	-60
	.word	4
	.word	_Label_2141
	.word	-64
	.word	4
	.word	_Label_2142
	.word	-68
	.word	4
	.word	_Label_2143
	.word	-72
	.word	4
	.word	_Label_2144
	.word	-76
	.word	4
	.word	_Label_2145
	.word	-80
	.word	4
	.word	_Label_2146
	.word	-84
	.word	4
	.word	_Label_2147
	.word	-88
	.word	4
	.word	_Label_2148
	.word	-92
	.word	4
	.word	_Label_2149
	.word	-96
	.word	4
	.word	_Label_2150
	.word	-100
	.word	4
	.word	_Label_2151
	.word	-104
	.word	4
	.word	_Label_2152
	.word	-108
	.word	4
	.word	_Label_2153
	.word	-112
	.word	4
	.word	_Label_2154
	.word	-116
	.word	4
	.word	_Label_2155
	.word	-120
	.word	4
	.word	_Label_2156
	.word	-124
	.word	4
	.word	_Label_2157
	.word	-128
	.word	4
	.word	_Label_2158
	.word	-132
	.word	4
	.word	_Label_2159
	.word	-136
	.word	4
	.word	_Label_2160
	.word	-140
	.word	4
	.word	_Label_2161
	.word	-144
	.word	4
	.word	_Label_2162
	.word	-148
	.word	4
	.word	_Label_2163
	.word	-152
	.word	4
	.word	_Label_2164
	.word	-156
	.word	4
	.word	_Label_2165
	.word	-160
	.word	4
	.word	_Label_2166
	.word	-164
	.word	4
	.word	_Label_2167
	.word	-168
	.word	4
	.word	_Label_2168
	.word	-172
	.word	4
	.word	_Label_2169
	.word	-176
	.word	4
	.word	_Label_2170
	.word	-180
	.word	4
	.word	_Label_2171
	.word	-184
	.word	4
	.word	_Label_2172
	.word	-188
	.word	4
	.word	_Label_2173
	.word	-192
	.word	4
	.word	_Label_2174
	.word	-196
	.word	4
	.word	0
_Label_2126:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2127:
	.ascii	"Pself\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2173:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2174:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2175
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2175:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2176
	.word	_sourceFileName
	.word	192		! line number
	.word	45860		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2176:
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
_Label_4379:
	push	r0
	sub	r1,1,r1
	bne	_Label_4379
	mov	720,r13		! source line 720
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2177 = _StringConst_80
	set	_StringConst_80,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
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
!   _temp_2178 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50068,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2180 = &_temp_2179
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2180 = _temp_2180 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2182 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4380:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4380
!   _temp_2182 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	11,r1
	store	r1,[r14+-4252]
_Label_2184:
!   Data Move: *_temp_2180 = _temp_2182  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4381:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4381
!   _temp_2180 = _temp_2180 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2181 = _temp_2181 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2181) then goto _Label_2184
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2184
!   Initialize the array size...
	mov	11,r1
	set	-50064,r2
	store	r1,[r14+r2]
!   _temp_2185 = &_temp_2179
	set	-50064,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 11
	set	-50068,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_4382
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4382:
!   make sure array has size 11
	load	[r14+-80],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2178 = *_temp_2185  (sizeInBytes=45808)
	load	[r14+-80],r5
	set	-50068,r4
	load	[r14+r4],r4
	mov	11452,r3
_Label_4383:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4383
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
!   _temp_2188 = &tmLock
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
!   _temp_2190 = &threadFreed
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
!   _temp_2195 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2196 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2195  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-50076,r2
	store	r1,[r14+r2]
_Label_2191:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2196 then goto _Label_2194		
	set	-50076,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2194
_Label_2192:
	mov	734,r13		! source line 734
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0SE",r10
!   _temp_2197 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-48]
!   _temp_2198 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2198 [i ] into _temp_2199
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
!   Prepare Argument: offset=12  value=_temp_2197  sizeInBytes=4
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
!   _temp_2200 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2200 [i ] into _temp_2201
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
!   _temp_2202 = _temp_2201 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2202 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0SE",r10
!   _temp_2204 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2204 [i ] into _temp_2205
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
!   _temp_2203 = _temp_2205		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2206 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2203  sizeInBytes=4
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
_Label_2193:
!   i = i + 1
	set	-50076,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50076,r2
	store	r1,[r14+r2]
	jmp	_Label_2191
! END FOR
_Label_2194:
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
	.word	_Label_2207
	.word	4		! total size of parameters
	.word	50076		! frame size = 50076
	.word	_Label_2208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2209
	.word	-12
	.word	4
	.word	_Label_2210
	.word	-16
	.word	4
	.word	_Label_2211
	.word	-20
	.word	4
	.word	_Label_2212
	.word	-24
	.word	4
	.word	_Label_2213
	.word	-28
	.word	4
	.word	_Label_2214
	.word	-32
	.word	4
	.word	_Label_2215
	.word	-36
	.word	4
	.word	_Label_2216
	.word	-40
	.word	4
	.word	_Label_2217
	.word	-44
	.word	4
	.word	_Label_2218
	.word	-48
	.word	4
	.word	_Label_2219
	.word	-52
	.word	4
	.word	_Label_2220
	.word	-56
	.word	4
	.word	_Label_2221
	.word	-60
	.word	4
	.word	_Label_2222
	.word	-64
	.word	4
	.word	_Label_2223
	.word	-68
	.word	4
	.word	_Label_2224
	.word	-72
	.word	4
	.word	_Label_2225
	.word	-76
	.word	4
	.word	_Label_2226
	.word	-80
	.word	4
	.word	_Label_2227
	.word	-84
	.word	4
	.word	_Label_2228
	.word	-4248
	.word	4164
	.word	_Label_2229
	.word	-4252
	.word	4
	.word	_Label_2230
	.word	-4256
	.word	4
	.word	_Label_2231
	.word	-50064
	.word	45808
	.word	_Label_2232
	.word	-50068
	.word	4
	.word	_Label_2233
	.word	-50072
	.word	4
	.word	_Label_2234
	.word	-50076
	.word	4
	.word	0
_Label_2207:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2208:
	.ascii	"Pself\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2234:
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
_Label_4384:
	push	r0
	sub	r1,1,r1
	bne	_Label_4384
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
!   _temp_2235 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2235  sizeInBytes=4
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
!   _temp_2240 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2241 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2240  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2236:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2241 then goto _Label_2239		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2239
_Label_2237:
	mov	754,r13		! source line 754
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2242 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2242  sizeInBytes=4
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
!   _temp_2243 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2243  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2245 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2245 [i ] into _temp_2246
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
!   _temp_2244 = _temp_2246		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2244  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CA",r10
	call	_function_193_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2238:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2236
! END FOR
_Label_2239:
! CALL STATEMENT...
!   _temp_2247 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2247  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0SE",r10
!   _temp_2248 = _function_192_PrintObjectAddr
	set	_function_192_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2249 = &freeList
	set	45812,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2248  sizeInBytes=4
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
	.word	_Label_2250
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2251
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2252
	.word	-12
	.word	4
	.word	_Label_2253
	.word	-16
	.word	4
	.word	_Label_2254
	.word	-20
	.word	4
	.word	_Label_2255
	.word	-24
	.word	4
	.word	_Label_2256
	.word	-28
	.word	4
	.word	_Label_2257
	.word	-32
	.word	4
	.word	_Label_2258
	.word	-36
	.word	4
	.word	_Label_2259
	.word	-40
	.word	4
	.word	_Label_2260
	.word	-44
	.word	4
	.word	_Label_2261
	.word	-48
	.word	4
	.word	_Label_2262
	.word	-52
	.word	4
	.word	_Label_2263
	.word	-56
	.word	4
	.word	_Label_2264
	.word	-60
	.word	4
	.word	0
_Label_2250:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2251:
	.ascii	"Pself\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2263:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2264:
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
_Label_4385:
	push	r0
	sub	r1,1,r1
	bne	_Label_4385
	mov	768,r13		! source line 768
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_2265 = &tmLock
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
_Label_2266:
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_2269 = &freeList
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
!   if result==true then goto _Label_2267 else goto _Label_2268
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2268
	jmp	_Label_2267
_Label_2267:
	mov	776,r13		! source line 776
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_2270 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2271 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2270  sizeInBytes=4
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
	jmp	_Label_2266
_Label_2268:
! ASSIGNMENT STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0AS",r10
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_2272 = &freeList
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
!   _temp_2273 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2273 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0SE",r10
!   _temp_2274 = &tmLock
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
	.word	_Label_2275
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2276
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2277
	.word	-12
	.word	4
	.word	_Label_2278
	.word	-16
	.word	4
	.word	_Label_2279
	.word	-20
	.word	4
	.word	_Label_2280
	.word	-24
	.word	4
	.word	_Label_2281
	.word	-28
	.word	4
	.word	_Label_2282
	.word	-32
	.word	4
	.word	_Label_2283
	.word	-36
	.word	4
	.word	_Label_2284
	.word	-40
	.word	4
	.word	0
_Label_2275:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2276:
	.ascii	"Pself\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2284:
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
_Label_4386:
	push	r0
	sub	r1,1,r1
	bne	_Label_4386
	mov	788,r13		! source line 788
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2285 = &tmLock
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
!   _temp_2286 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2286 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0SE",r10
!   _temp_2287 = &freeList
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
!   _temp_2288 = &tmLock
	set	45824,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2289 = &threadFreed
	set	45844,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2288  sizeInBytes=4
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
!   _temp_2290 = &tmLock
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
	.word	_Label_2291
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2292
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2293
	.word	12
	.word	4
	.word	_Label_2294
	.word	-12
	.word	4
	.word	_Label_2295
	.word	-16
	.word	4
	.word	_Label_2296
	.word	-20
	.word	4
	.word	_Label_2297
	.word	-24
	.word	4
	.word	_Label_2298
	.word	-28
	.word	4
	.word	_Label_2299
	.word	-32
	.word	4
	.word	0
_Label_2291:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2292:
	.ascii	"Pself\0"
	.align
_Label_2293:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2300
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2300:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2301
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2301:
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
_Label_4387:
	push	r0
	sub	r1,1,r1
	bne	_Label_4387
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
_Label_4388:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4388
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_2303 = &addrSpace
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
!   _temp_2304 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2306 = &_temp_2305
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2306 = _temp_2306 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2308:
!   Data Move: *_temp_2306 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2306 = _temp_2306 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2307 = _temp_2307 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2307) then goto _Label_2308
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2308
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2309 = &_temp_2305
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4389
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4389:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2304 = *_temp_2309  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4390:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4390
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
	.word	_Label_2310
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2311
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-64
	.word	44
	.word	_Label_2316
	.word	-68
	.word	4
	.word	_Label_2317
	.word	-72
	.word	4
	.word	_Label_2318
	.word	-76
	.word	4
	.word	0
_Label_2310:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2311:
	.ascii	"Pself\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2309\0"
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
_Label_4391:
	push	r0
	sub	r1,1,r1
	bne	_Label_4391
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2319) then goto _runtimeErrorNullPointer
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
!   _temp_2320 = &addrSpace
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
!   _temp_2321 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2321  sizeInBytes=4
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
	call	_function_193_ThreadPrintShort
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
	.word	_Label_2322
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2324
	.word	-12
	.word	4
	.word	_Label_2325
	.word	-16
	.word	4
	.word	_Label_2326
	.word	-20
	.word	4
	.word	0
_Label_2322:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2323:
	.ascii	"Pself\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2319\0"
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
_Label_4392:
	push	r0
	sub	r1,1,r1
	bne	_Label_4392
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2327 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2329 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2329  sizeInBytes=4
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
!   _temp_2330 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2332		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2332
!	jmp	_Label_2331
_Label_2331:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2333 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2334
_Label_2332:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2336		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2336
!	jmp	_Label_2335
_Label_2335:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2337 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2338
_Label_2336:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2340		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2340
!	jmp	_Label_2339
_Label_2339:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2341 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2342
_Label_2340:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2343 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2343  sizeInBytes=4
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
_Label_2342:
! END IF...
_Label_2338:
! END IF...
_Label_2334:
! CALL STATEMENT...
!   _temp_2344 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2344  sizeInBytes=4
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
!   _temp_2345 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
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
	.word	_Label_2346
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2348
	.word	-12
	.word	4
	.word	_Label_2349
	.word	-16
	.word	4
	.word	_Label_2350
	.word	-20
	.word	4
	.word	_Label_2351
	.word	-24
	.word	4
	.word	_Label_2352
	.word	-28
	.word	4
	.word	_Label_2353
	.word	-32
	.word	4
	.word	_Label_2354
	.word	-36
	.word	4
	.word	_Label_2355
	.word	-40
	.word	4
	.word	_Label_2356
	.word	-44
	.word	4
	.word	_Label_2357
	.word	-48
	.word	4
	.word	0
_Label_2346:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2347:
	.ascii	"Pself\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2358
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
_Label_2358:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2359
	.word	_sourceFileName
	.word	233		! line number
	.word	1924		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2359:
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
_Label_4393:
	push	r0
	sub	r1,1,r1
	bne	_Label_4393
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_2360 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-2120]
!   NEW ARRAY Constructor...
!   _temp_2362 = &_temp_2361
	add	r14,-2116,r1
	store	r1,[r14+-264]
!   _temp_2362 = _temp_2362 + 4
	load	[r14+-264],r1
	add	r1,4,r1
	store	r1,[r14+-264]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2364 = zeros  (sizeInBytes=168)
	add	r14,-256,r4
	mov	42,r3
_Label_4394:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4394
!   _temp_2364 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-256]
	mov	11,r1
	store	r1,[r14+-260]
_Label_2366:
!   Data Move: *_temp_2362 = _temp_2364  (sizeInBytes=168)
	add	r14,-256,r5
	load	[r14+-264],r4
	mov	42,r3
_Label_4395:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4395
!   _temp_2362 = _temp_2362 + 168
	load	[r14+-264],r1
	add	r1,168,r1
	store	r1,[r14+-264]
!   _temp_2363 = _temp_2363 + -1
	load	[r14+-260],r1
	add	r1,-1,r1
	store	r1,[r14+-260]
!   if intNotZero (_temp_2363) then goto _Label_2366
	load	[r14+-260],r1
	cmp	r1,r0
	bne	_Label_2366
!   Initialize the array size...
	mov	11,r1
	store	r1,[r14+-2116]
!   _temp_2367 = &_temp_2361
	add	r14,-2116,r1
	store	r1,[r14+-84]
!   make sure array has size 11
	load	[r14+-2120],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,0
	be	_Label_4396
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4396:
!   make sure array has size 11
	load	[r14+-84],r1
	load	[r1],r1
	set	11, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2360 = *_temp_2367  (sizeInBytes=1852)
	load	[r14+-84],r5
	load	[r14+-2120],r4
	mov	463,r3
_Label_4397:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4397
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
!   _temp_2369 = &processManagerLock
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
!   _temp_2371 = &aProcessBecameFree
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
!   _temp_2374 = &aProcessDied
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
!   _temp_2379 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2380 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2379  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-2124]
_Label_2375:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2380 then goto _Label_2378		
	load	[r14+-2124],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2378
_Label_2376:
	mov	894,r13		! source line 894
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_2381 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2381 [i ] into _temp_2382
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
!   _temp_2384 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_2384 [i ] into _temp_2385
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
!   _temp_2383 = _temp_2385		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2386 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2383  sizeInBytes=4
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
!   _temp_2387 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2387 [i ] into _temp_2388
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
!   _temp_2389 = _temp_2388 + 20
	load	[r14+-16],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_2389 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-12],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_2377:
!   i = i + 1
	load	[r14+-2124],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-2124]
	jmp	_Label_2375
! END FOR
_Label_2378:
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
	.word	_Label_2390
	.word	4		! total size of parameters
	.word	2124		! frame size = 2124
	.word	_Label_2391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2392
	.word	-12
	.word	4
	.word	_Label_2393
	.word	-16
	.word	4
	.word	_Label_2394
	.word	-20
	.word	4
	.word	_Label_2395
	.word	-24
	.word	4
	.word	_Label_2396
	.word	-28
	.word	4
	.word	_Label_2397
	.word	-32
	.word	4
	.word	_Label_2398
	.word	-36
	.word	4
	.word	_Label_2399
	.word	-40
	.word	4
	.word	_Label_2400
	.word	-44
	.word	4
	.word	_Label_2401
	.word	-48
	.word	4
	.word	_Label_2402
	.word	-52
	.word	4
	.word	_Label_2403
	.word	-56
	.word	4
	.word	_Label_2404
	.word	-60
	.word	4
	.word	_Label_2405
	.word	-64
	.word	4
	.word	_Label_2406
	.word	-68
	.word	4
	.word	_Label_2407
	.word	-72
	.word	4
	.word	_Label_2408
	.word	-76
	.word	4
	.word	_Label_2409
	.word	-80
	.word	4
	.word	_Label_2410
	.word	-84
	.word	4
	.word	_Label_2411
	.word	-88
	.word	4
	.word	_Label_2412
	.word	-256
	.word	168
	.word	_Label_2413
	.word	-260
	.word	4
	.word	_Label_2414
	.word	-264
	.word	4
	.word	_Label_2415
	.word	-2116
	.word	1852
	.word	_Label_2416
	.word	-2120
	.word	4
	.word	_Label_2417
	.word	-2124
	.word	4
	.word	0
_Label_2390:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2391:
	.ascii	"Pself\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2385\0"
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
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2417:
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
_Label_4398:
	push	r0
	sub	r1,1,r1
	bne	_Label_4398
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
!   _temp_2418 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
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
!   _temp_2423 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2424 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2423  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2419:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2424 then goto _Label_2422		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2422
_Label_2420:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2425 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2425  sizeInBytes=4
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
!   _temp_2426 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2426  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_2427 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2427 [i ] into _temp_2428
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
_Label_2421:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2419
! END FOR
_Label_2422:
! CALL STATEMENT...
!   _temp_2429 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2429  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_2430 = _function_192_PrintObjectAddr
	set	_function_192_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2431 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2430  sizeInBytes=4
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
	.word	_Label_2432
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2434
	.word	-12
	.word	4
	.word	_Label_2435
	.word	-16
	.word	4
	.word	_Label_2436
	.word	-20
	.word	4
	.word	_Label_2437
	.word	-24
	.word	4
	.word	_Label_2438
	.word	-28
	.word	4
	.word	_Label_2439
	.word	-32
	.word	4
	.word	_Label_2440
	.word	-36
	.word	4
	.word	_Label_2441
	.word	-40
	.word	4
	.word	_Label_2442
	.word	-44
	.word	4
	.word	_Label_2443
	.word	-48
	.word	4
	.word	_Label_2444
	.word	-52
	.word	4
	.word	_Label_2445
	.word	-56
	.word	4
	.word	0
_Label_2432:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2433:
	.ascii	"Pself\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2444:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2445:
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
_Label_4399:
	push	r0
	sub	r1,1,r1
	bne	_Label_4399
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
!   _temp_2446 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2446  sizeInBytes=4
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
!   _temp_2451 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2452 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2451  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2447:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2452 then goto _Label_2450		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2450
_Label_2448:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2453 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2453  sizeInBytes=4
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
!   _temp_2454 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2454 [i ] into _temp_2455
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
_Label_2449:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2447
! END FOR
_Label_2450:
! CALL STATEMENT...
!   _temp_2456 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2456  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_2457 = _function_192_PrintObjectAddr
	set	_function_192_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2458 = &freeList
	load	[r14+8],r1
	add	r1,1892,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2457  sizeInBytes=4
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
	.word	_Label_2459
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2460
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2461
	.word	-12
	.word	4
	.word	_Label_2462
	.word	-16
	.word	4
	.word	_Label_2463
	.word	-20
	.word	4
	.word	_Label_2464
	.word	-24
	.word	4
	.word	_Label_2465
	.word	-28
	.word	4
	.word	_Label_2466
	.word	-32
	.word	4
	.word	_Label_2467
	.word	-36
	.word	4
	.word	_Label_2468
	.word	-40
	.word	4
	.word	_Label_2469
	.word	-44
	.word	4
	.word	_Label_2470
	.word	-48
	.word	4
	.word	_Label_2471
	.word	-52
	.word	4
	.word	0
_Label_2459:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2460:
	.ascii	"Pself\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2470:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2471:
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
_Label_4400:
	push	r0
	sub	r1,1,r1
	bne	_Label_4400
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0SE",r10
!   _temp_2472 = &processManagerLock
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
_Label_2473:
	mov	958,r13		! source line 958
	mov	"\0\0SE",r10
!   _temp_2476 = &freeList
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
!   if result==true then goto _Label_2474 else goto _Label_2475
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2475
	jmp	_Label_2474
_Label_2474:
	mov	958,r13		! source line 958
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_2477 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-32]
!   _temp_2478 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2477  sizeInBytes=4
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
	jmp	_Label_2473
_Label_2475:
! ASSIGNMENT STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0AS",r10
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_2479 = &freeList
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
!   _temp_2480 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2480 = 1  (sizeInBytes=4)
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
!   _temp_2481 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2481 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1920],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_2482 = &processManagerLock
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
	.word	_Label_2483
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2485
	.word	-12
	.word	4
	.word	_Label_2486
	.word	-16
	.word	4
	.word	_Label_2487
	.word	-20
	.word	4
	.word	_Label_2488
	.word	-24
	.word	4
	.word	_Label_2489
	.word	-28
	.word	4
	.word	_Label_2490
	.word	-32
	.word	4
	.word	_Label_2491
	.word	-36
	.word	4
	.word	_Label_2492
	.word	-40
	.word	4
	.word	_Label_2493
	.word	-44
	.word	4
	.word	0
_Label_2483:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2484:
	.ascii	"Pself\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2493:
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
_Label_4401:
	push	r0
	sub	r1,1,r1
	bne	_Label_4401
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_2494 = &processManagerLock
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
!   _temp_2495 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2495 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_2496 = &freeList
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
!   _temp_2497 = &processManagerLock
	load	[r14+8],r1
	add	r1,1856,r1
	store	r1,[r14+-20]
!   _temp_2498 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1876,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2497  sizeInBytes=4
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
!   _temp_2499 = &processManagerLock
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
	.word	_Label_2500
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2502
	.word	12
	.word	4
	.word	_Label_2503
	.word	-12
	.word	4
	.word	_Label_2504
	.word	-16
	.word	4
	.word	_Label_2505
	.word	-20
	.word	4
	.word	_Label_2506
	.word	-24
	.word	4
	.word	_Label_2507
	.word	-28
	.word	4
	.word	_Label_2508
	.word	-32
	.word	4
	.word	0
_Label_2500:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2501:
	.ascii	"Pself\0"
	.align
_Label_2502:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2494\0"
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
_Label_4402:
	push	r0
	sub	r1,1,r1
	bne	_Label_4402
	mov	986,r13		! source line 986
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_2509 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-244]
!   _temp_2510 = _temp_2509 + 1856
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
!   _temp_2515 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-236]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2516 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-232]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2515  (sizeInBytes=4)
	load	[r14+-236],r1
	store	r1,[r14+-248]
_Label_2511:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2516 then goto _Label_2514		
	load	[r14+-248],r1
	load	[r14+-232],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2514
_Label_2512:
	mov	992,r13		! source line 992
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0IF",r10
!   _temp_2520 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-224]
!   _temp_2521 = _temp_2520 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Move address of _temp_2521 [i ] into _temp_2522
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
!   _temp_2523 = _temp_2522 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_2519 = *_temp_2523  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2525 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-204]
!   Data Move: _temp_2524 = *_temp_2525  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   if _temp_2519 != _temp_2524 then goto _Label_2518		(int)
	load	[r14+-228],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bne	_Label_2518
!	jmp	_Label_2517
_Label_2517:
! THEN...
	mov	995,r13		! source line 995
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   _temp_2526 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-200]
!   _temp_2527 = _temp_2526 + 4
	load	[r14+-200],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Move address of _temp_2527 [i ] into _temp_2528
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
!   parent = _temp_2528		(4 bytes)
	load	[r14+-192],r1
	store	r1,[r14+-252]
! END IF...
_Label_2518:
! IF STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0IF",r10
!   _temp_2533 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-184]
!   _temp_2534 = _temp_2533 + 4
	load	[r14+-184],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_2534 [i ] into _temp_2535
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
!   _temp_2536 = _temp_2535 + 20
	load	[r14+-176],r1
	add	r1,20,r1
	store	r1,[r14+-172]
!   Data Move: _temp_2532 = *_temp_2536  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if _temp_2532 != 2 then goto _Label_2530		(int)
	load	[r14+-188],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2530
!	jmp	_Label_2531
_Label_2531:
!   _temp_2538 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   _temp_2539 = _temp_2538 + 4
	load	[r14+-164],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_2539 [i ] into _temp_2540
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
!   _temp_2541 = _temp_2540 + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-152]
!   Data Move: _temp_2537 = *_temp_2541  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2543 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Data Move: _temp_2542 = *_temp_2543  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   if _temp_2537 != _temp_2542 then goto _Label_2530		(int)
	load	[r14+-168],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bne	_Label_2530
!	jmp	_Label_2529
_Label_2529:
! THEN...
	mov	999,r13		! source line 999
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0AS",r10
!   _temp_2544 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2545 = _temp_2544 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2545 [i ] into _temp_2546
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
!   _temp_2547 = _temp_2546 + 20
	load	[r14+-132],r1
	add	r1,20,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_2547 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-128],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_2549 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-120]
!   _temp_2550 = _temp_2549 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Move address of _temp_2550 [i ] into _temp_2551
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
!   _temp_2548 = _temp_2551		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_2552 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-108]
!   _temp_2553 = _temp_2552 + 1892
	load	[r14+-108],r1
	add	r1,1892,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_2548  sizeInBytes=4
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
!   _temp_2555 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   _temp_2556 = _temp_2555 + 1856
	load	[r14+-96],r1
	add	r1,1856,r1
	store	r1,[r14+-92]
!   _temp_2554 = _temp_2556		(4 bytes)
	load	[r14+-92],r1
	store	r1,[r14+-100]
!   _temp_2557 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2558 = _temp_2557 + 1876
	load	[r14+-88],r1
	add	r1,1876,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_2554  sizeInBytes=4
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
_Label_2530:
!   Increment the FOR-LOOP index variable and jump back
_Label_2513:
!   i = i + 1
	load	[r14+-248],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
	jmp	_Label_2511
! END FOR
_Label_2514:
! IF STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0IF",r10
!   if intIsZero (parent) then goto _Label_2560
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_2560
!	jmp	_Label_2561
_Label_2561:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2563 = parent + 20
	load	[r14+-252],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2562 = *_temp_2563  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2562 != 1 then goto _Label_2560		(int)
	load	[r14+-80],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2560
!	jmp	_Label_2559
_Label_2559:
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
!   _temp_2564 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_2564 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-72],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2566 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2567 = _temp_2566 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2565 = _temp_2567		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2568 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2569 = _temp_2568 + 1904
	load	[r14+-56],r1
	add	r1,1904,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2565  sizeInBytes=4
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
	jmp	_Label_2570
_Label_2560:
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
!   _temp_2571 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2571 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_2572 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2573 = _temp_2572 + 1892
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
!   _temp_2575 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2576 = _temp_2575 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2574 = _temp_2576		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2577 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2578 = _temp_2577 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2574  sizeInBytes=4
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
_Label_2570:
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2579 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2580 = _temp_2579 + 1856
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
	.word	_Label_2581
	.word	8		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_2582
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2583
	.word	12
	.word	4
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
	.word	_Label_2624
	.word	-172
	.word	4
	.word	_Label_2625
	.word	-176
	.word	4
	.word	_Label_2626
	.word	-180
	.word	4
	.word	_Label_2627
	.word	-184
	.word	4
	.word	_Label_2628
	.word	-188
	.word	4
	.word	_Label_2629
	.word	-192
	.word	4
	.word	_Label_2630
	.word	-196
	.word	4
	.word	_Label_2631
	.word	-200
	.word	4
	.word	_Label_2632
	.word	-204
	.word	4
	.word	_Label_2633
	.word	-208
	.word	4
	.word	_Label_2634
	.word	-212
	.word	4
	.word	_Label_2635
	.word	-216
	.word	4
	.word	_Label_2636
	.word	-220
	.word	4
	.word	_Label_2637
	.word	-224
	.word	4
	.word	_Label_2638
	.word	-228
	.word	4
	.word	_Label_2639
	.word	-232
	.word	4
	.word	_Label_2640
	.word	-236
	.word	4
	.word	_Label_2641
	.word	-240
	.word	4
	.word	_Label_2642
	.word	-244
	.word	4
	.word	_Label_2643
	.word	-248
	.word	4
	.word	_Label_2644
	.word	-252
	.word	4
	.word	0
_Label_2581:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2582:
	.ascii	"Pself\0"
	.align
_Label_2583:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2580\0"
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
	.ascii	"_temp_2577\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2643:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2644:
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
_Label_4403:
	push	r0
	sub	r1,1,r1
	bne	_Label_4403
	mov	1019,r13		! source line 1019
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_2645 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-84]
!   _temp_2646 = _temp_2645 + 1856
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
_Label_2647:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2651 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2650 = *_temp_2651  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if _temp_2650 == 2 then goto _Label_2649		(int)
	load	[r14+-76],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2649
!	jmp	_Label_2648
_Label_2648:
	mov	1023,r13		! source line 1023
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0SE",r10
!   _temp_2653 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2654 = _temp_2653 + 1856
	load	[r14+-64],r1
	add	r1,1856,r1
	store	r1,[r14+-60]
!   _temp_2652 = _temp_2654		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   _temp_2655 = &aProcessDied
	load	[r14+8],r1
	add	r1,1904,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2652  sizeInBytes=4
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
	jmp	_Label_2647
_Label_2649:
! ASSIGNMENT STATEMENT...
	mov	1027,r13		! source line 1027
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: exitStatus = *_temp_2656  (sizeInBytes=4)
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
!   _temp_2657 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2657 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_2658 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2659 = _temp_2658 + 1892
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
!   _temp_2661 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2662 = _temp_2661 + 1856
	load	[r14+-32],r1
	add	r1,1856,r1
	store	r1,[r14+-28]
!   _temp_2660 = _temp_2662		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2663 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2664 = _temp_2663 + 1876
	load	[r14+-24],r1
	add	r1,1876,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2660  sizeInBytes=4
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
!   _temp_2665 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2666 = _temp_2665 + 1856
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
	.word	_Label_2667
	.word	8		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_2668
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2669
	.word	12
	.word	4
	.word	_Label_2670
	.word	-12
	.word	4
	.word	_Label_2671
	.word	-16
	.word	4
	.word	_Label_2672
	.word	-20
	.word	4
	.word	_Label_2673
	.word	-24
	.word	4
	.word	_Label_2674
	.word	-28
	.word	4
	.word	_Label_2675
	.word	-32
	.word	4
	.word	_Label_2676
	.word	-36
	.word	4
	.word	_Label_2677
	.word	-40
	.word	4
	.word	_Label_2678
	.word	-44
	.word	4
	.word	_Label_2679
	.word	-48
	.word	4
	.word	_Label_2680
	.word	-52
	.word	4
	.word	_Label_2681
	.word	-56
	.word	4
	.word	_Label_2682
	.word	-60
	.word	4
	.word	_Label_2683
	.word	-64
	.word	4
	.word	_Label_2684
	.word	-68
	.word	4
	.word	_Label_2685
	.word	-72
	.word	4
	.word	_Label_2686
	.word	-76
	.word	4
	.word	_Label_2687
	.word	-80
	.word	4
	.word	_Label_2688
	.word	-84
	.word	4
	.word	_Label_2689
	.word	-88
	.word	4
	.word	0
_Label_2667:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2668:
	.ascii	"Pself\0"
	.align
_Label_2669:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2690
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2690:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2691
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2691:
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
_Label_4404:
	push	r0
	sub	r1,1,r1
	bne	_Label_4404
	mov	1088,r13		! source line 1088
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2692 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2692  sizeInBytes=4
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
!   _temp_2694 = &framesInUse
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
!   _temp_2696 = &frameManagerLock
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
!   _temp_2698 = &newFramesAvailable
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
!   _temp_2703 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2704 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2703  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2699:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2704 then goto _Label_2702		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2702
_Label_2700:
	mov	1107,r13		! source line 1107
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2707 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2707) then goto _Label_2706
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2706
!	jmp	_Label_2705
_Label_2705:
! THEN...
	mov	1111,r13		! source line 1111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2708 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
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
_Label_2706:
!   Increment the FOR-LOOP index variable and jump back
_Label_2701:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2699
! END FOR
_Label_2702:
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
	.word	_Label_2709
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2710
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2711
	.word	-12
	.word	4
	.word	_Label_2712
	.word	-16
	.word	4
	.word	_Label_2713
	.word	-20
	.word	4
	.word	_Label_2714
	.word	-24
	.word	4
	.word	_Label_2715
	.word	-28
	.word	4
	.word	_Label_2716
	.word	-32
	.word	4
	.word	_Label_2717
	.word	-36
	.word	4
	.word	_Label_2718
	.word	-40
	.word	4
	.word	_Label_2719
	.word	-44
	.word	4
	.word	_Label_2720
	.word	-48
	.word	4
	.word	_Label_2721
	.word	-52
	.word	4
	.word	_Label_2722
	.word	-56
	.word	4
	.word	0
_Label_2709:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2710:
	.ascii	"Pself\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2722:
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
_Label_4405:
	push	r0
	sub	r1,1,r1
	bne	_Label_4405
	mov	1118,r13		! source line 1118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_2723 = &frameManagerLock
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
!   _temp_2724 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2724  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2725 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2725  sizeInBytes=4
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
!   _temp_2726 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2726  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_2727 = &framesInUse
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
!   _temp_2728 = &frameManagerLock
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
	.word	_Label_2729
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2731
	.word	-12
	.word	4
	.word	_Label_2732
	.word	-16
	.word	4
	.word	_Label_2733
	.word	-20
	.word	4
	.word	_Label_2734
	.word	-24
	.word	4
	.word	_Label_2735
	.word	-28
	.word	4
	.word	_Label_2736
	.word	-32
	.word	4
	.word	0
_Label_2729:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2730:
	.ascii	"Pself\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2723\0"
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
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
	mov	1132,r13		! source line 1132
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_2737 = &frameManagerLock
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
_Label_2738:
!   if numberFreeFrames >= 1 then goto _Label_2740		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2740
!	jmp	_Label_2739
_Label_2739:
	mov	1143,r13		! source line 1143
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_2741 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2742 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2741  sizeInBytes=4
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
	jmp	_Label_2738
_Label_2740:
! ASSIGNMENT STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0AS",r10
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_2743 = &framesInUse
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
!   _temp_2744 = &frameManagerLock
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
!   _temp_2745 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2745		(int)
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
	.word	_Label_2746
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2747
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2754
	.word	-36
	.word	4
	.word	_Label_2755
	.word	-40
	.word	4
	.word	0
_Label_2746:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2747:
	.ascii	"Pself\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2754:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2755:
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
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	1162,r13		! source line 1162
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_2756 = &frameManagerLock
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
_Label_2757:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2759		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2759
!	jmp	_Label_2758
_Label_2758:
	mov	1166,r13		! source line 1166
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_2760 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2761 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2760  sizeInBytes=4
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
	jmp	_Label_2757
_Label_2759:
! FOR STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2766 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2767 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2766  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2762:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2767 then goto _Label_2765		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2765
_Label_2763:
	mov	1169,r13		! source line 1169
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
!   _temp_2768 = &framesInUse
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
!   _temp_2769 = f * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2769		(int)
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
_Label_2764:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2762
! END FOR
_Label_2765:
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
!   _temp_2770 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2770 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_2771 = &frameManagerLock
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
	.word	_Label_2772
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2774
	.word	12
	.word	4
	.word	_Label_2775
	.word	16
	.word	4
	.word	_Label_2776
	.word	-12
	.word	4
	.word	_Label_2777
	.word	-16
	.word	4
	.word	_Label_2778
	.word	-20
	.word	4
	.word	_Label_2779
	.word	-24
	.word	4
	.word	_Label_2780
	.word	-28
	.word	4
	.word	_Label_2781
	.word	-32
	.word	4
	.word	_Label_2782
	.word	-36
	.word	4
	.word	_Label_2783
	.word	-40
	.word	4
	.word	_Label_2784
	.word	-44
	.word	4
	.word	_Label_2785
	.word	-48
	.word	4
	.word	_Label_2786
	.word	-52
	.word	4
	.word	_Label_2787
	.word	-56
	.word	4
	.word	0
_Label_2772:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2773:
	.ascii	"Pself\0"
	.align
_Label_2774:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2775:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2787:
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
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
	mov	1181,r13		! source line 1181
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_2788 = &frameManagerLock
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
!   _temp_2793 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2796 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2795 = *_temp_2796  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2794 = _temp_2795 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2793  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2789:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2794 then goto _Label_2792		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2792
_Label_2790:
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
!   _temp_2797 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2797 div 8192		(int)
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
!   _temp_2798 = &framesInUse
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
_Label_2791:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2789
! END FOR
_Label_2792:
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2800 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2799 = *_temp_2800  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2799		(int)
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
!   _temp_2801 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2802 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2801  sizeInBytes=4
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
!   _temp_2803 = &frameManagerLock
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
	.word	_Label_2804
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2806
	.word	12
	.word	4
	.word	_Label_2807
	.word	-12
	.word	4
	.word	_Label_2808
	.word	-16
	.word	4
	.word	_Label_2809
	.word	-20
	.word	4
	.word	_Label_2810
	.word	-24
	.word	4
	.word	_Label_2811
	.word	-28
	.word	4
	.word	_Label_2812
	.word	-32
	.word	4
	.word	_Label_2813
	.word	-36
	.word	4
	.word	_Label_2814
	.word	-40
	.word	4
	.word	_Label_2815
	.word	-44
	.word	4
	.word	_Label_2816
	.word	-48
	.word	4
	.word	_Label_2817
	.word	-52
	.word	4
	.word	_Label_2818
	.word	-56
	.word	4
	.word	_Label_2819
	.word	-60
	.word	4
	.word	_Label_2820
	.word	-64
	.word	4
	.word	_Label_2821
	.word	-68
	.word	4
	.word	0
_Label_2804:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2805:
	.ascii	"Pself\0"
	.align
_Label_2806:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2819:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2820:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2821:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2822
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
_Label_2822:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2823
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2823:
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
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
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
!   _temp_2824 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2826 = &_temp_2825
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2826 = _temp_2826 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2828:
!   Data Move: *_temp_2826 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2826 = _temp_2826 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2827 = _temp_2827 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2827) then goto _Label_2828
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2828
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2829 = &_temp_2825
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4410
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4410:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2824 = *_temp_2829  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4411:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4411
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
	.word	_Label_2830
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2832
	.word	-12
	.word	4
	.word	_Label_2833
	.word	-16
	.word	4
	.word	_Label_2834
	.word	-20
	.word	4
	.word	_Label_2835
	.word	-104
	.word	84
	.word	_Label_2836
	.word	-108
	.word	4
	.word	0
_Label_2830:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2831:
	.ascii	"Pself\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2824\0"
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
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2837 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2837  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2838 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
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
!   _temp_2843 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2844 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2843  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2839:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2844 then goto _Label_2842		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2842
_Label_2840:
	mov	1220,r13		! source line 1220
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2847 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2847 [i ] into _temp_2848
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
!   _temp_2846 = _temp_2848		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2846  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2849 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2851 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2851 [i ] into _temp_2852
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
!   Data Move: _temp_2850 = *_temp_2852  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2850  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2853 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2854 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2854  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2855 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2855  sizeInBytes=4
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
!   if intIsZero (_temp_2857) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2856  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2858 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2858  sizeInBytes=4
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
!   if intIsZero (_temp_2862) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2861  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2861) then goto _Label_2860
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2860
!	jmp	_Label_2859
_Label_2859:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2864) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2863  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2865
_Label_2860:
! ELSE...
	mov	1233,r13		! source line 1233
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2866 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2866  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2865:
! CALL STATEMENT...
!   _temp_2867 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2867  sizeInBytes=4
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
!   if intIsZero (_temp_2870) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2868 else goto _Label_2869
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2869
	jmp	_Label_2868
_Label_2868:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2871 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2871  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2872
_Label_2869:
! ELSE...
	mov	1239,r13		! source line 1239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2873 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2873  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2872:
! CALL STATEMENT...
!   _temp_2874 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2874  sizeInBytes=4
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
!   if intIsZero (_temp_2877) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2875 else goto _Label_2876
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2876
	jmp	_Label_2875
_Label_2875:
! THEN...
	mov	1243,r13		! source line 1243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2878 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2878  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2879
_Label_2876:
! ELSE...
	mov	1245,r13		! source line 1245
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2880 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2880  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2879:
! CALL STATEMENT...
!   _temp_2881 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
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
!   if intIsZero (_temp_2884) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2882 else goto _Label_2883
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2883
	jmp	_Label_2882
_Label_2882:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2885 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2885  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2886
_Label_2883:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2887 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2887  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2886:
! CALL STATEMENT...
!   _temp_2888 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2888  sizeInBytes=4
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
!   if intIsZero (_temp_2891) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2889 else goto _Label_2890
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2890
	jmp	_Label_2889
_Label_2889:
! THEN...
	mov	1255,r13		! source line 1255
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2892 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2892  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2893
_Label_2890:
! ELSE...
	mov	1257,r13		! source line 1257
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2894 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2894  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2893:
! CALL STATEMENT...
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2841:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2839
! END FOR
_Label_2842:
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
	.word	_Label_2895
	.word	4		! total size of parameters
	.word	168		! frame size = 168
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
	.word	_Label_2902
	.word	-32
	.word	4
	.word	_Label_2903
	.word	-36
	.word	4
	.word	_Label_2904
	.word	-40
	.word	4
	.word	_Label_2905
	.word	-44
	.word	4
	.word	_Label_2906
	.word	-48
	.word	4
	.word	_Label_2907
	.word	-52
	.word	4
	.word	_Label_2908
	.word	-56
	.word	4
	.word	_Label_2909
	.word	-60
	.word	4
	.word	_Label_2910
	.word	-64
	.word	4
	.word	_Label_2911
	.word	-68
	.word	4
	.word	_Label_2912
	.word	-72
	.word	4
	.word	_Label_2913
	.word	-76
	.word	4
	.word	_Label_2914
	.word	-80
	.word	4
	.word	_Label_2915
	.word	-84
	.word	4
	.word	_Label_2916
	.word	-88
	.word	4
	.word	_Label_2917
	.word	-92
	.word	4
	.word	_Label_2918
	.word	-96
	.word	4
	.word	_Label_2919
	.word	-100
	.word	4
	.word	_Label_2920
	.word	-104
	.word	4
	.word	_Label_2921
	.word	-108
	.word	4
	.word	_Label_2922
	.word	-112
	.word	4
	.word	_Label_2923
	.word	-116
	.word	4
	.word	_Label_2924
	.word	-120
	.word	4
	.word	_Label_2925
	.word	-124
	.word	4
	.word	_Label_2926
	.word	-128
	.word	4
	.word	_Label_2927
	.word	-132
	.word	4
	.word	_Label_2928
	.word	-136
	.word	4
	.word	_Label_2929
	.word	-140
	.word	4
	.word	_Label_2930
	.word	-144
	.word	4
	.word	_Label_2931
	.word	-148
	.word	4
	.word	_Label_2932
	.word	-152
	.word	4
	.word	_Label_2933
	.word	-156
	.word	4
	.word	_Label_2934
	.word	-160
	.word	4
	.word	_Label_2935
	.word	-164
	.word	4
	.word	_Label_2936
	.word	-168
	.word	4
	.word	0
_Label_2895:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2892\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2936:
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
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
	mov	1265,r13		! source line 1265
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0RE",r10
!   _temp_2939 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2939 [entry ] into _temp_2940
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
!   Data Move: _temp_2938 = *_temp_2940  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2937 = _temp_2938 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2937  (sizeInBytes=4)
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
	.word	_Label_2941
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2943
	.word	12
	.word	4
	.word	_Label_2944
	.word	-12
	.word	4
	.word	_Label_2945
	.word	-16
	.word	4
	.word	_Label_2946
	.word	-20
	.word	4
	.word	_Label_2947
	.word	-24
	.word	4
	.word	0
_Label_2941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2942:
	.ascii	"Pself\0"
	.align
_Label_2943:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2937\0"
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
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
!   _temp_2950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2950 [entry ] into _temp_2951
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
!   Data Move: _temp_2949 = *_temp_2951  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2948 = _temp_2949 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2948  (sizeInBytes=4)
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
	.word	_Label_2952
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2953
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2954
	.word	12
	.word	4
	.word	_Label_2955
	.word	-12
	.word	4
	.word	_Label_2956
	.word	-16
	.word	4
	.word	_Label_2957
	.word	-20
	.word	4
	.word	_Label_2958
	.word	-24
	.word	4
	.word	0
_Label_2952:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2953:
	.ascii	"Pself\0"
	.align
_Label_2954:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2948\0"
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
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
	mov	1284,r13		! source line 1284
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2959 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2959 [entry ] into _temp_2960
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
!   _temp_2964 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2964 [entry ] into _temp_2965
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
!   Data Move: _temp_2963 = *_temp_2965  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2962 = _temp_2963 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2961 = _temp_2962 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2960 = _temp_2961  (sizeInBytes=4)
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
	.word	_Label_2966
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2967
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2968
	.word	12
	.word	4
	.word	_Label_2969
	.word	16
	.word	4
	.word	_Label_2970
	.word	-12
	.word	4
	.word	_Label_2971
	.word	-16
	.word	4
	.word	_Label_2972
	.word	-20
	.word	4
	.word	_Label_2973
	.word	-24
	.word	4
	.word	_Label_2974
	.word	-28
	.word	4
	.word	_Label_2975
	.word	-32
	.word	4
	.word	_Label_2976
	.word	-36
	.word	4
	.word	0
_Label_2966:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2967:
	.ascii	"Pself\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2969:
	.byte	'I'
	.ascii	"frameAddr\0"
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
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2959\0"
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0RE",r10
!   _temp_2980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2980 [entry ] into _temp_2981
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
!   Data Move: _temp_2979 = *_temp_2981  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2978 = _temp_2979 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2978) then goto _Label_2982
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2982
!   _temp_2977 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2983
_Label_2982:
!   _temp_2977 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2983:
!   ReturnResult: _temp_2977  (sizeInBytes=1)
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
	.word	_Label_2984
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2986
	.word	12
	.word	4
	.word	_Label_2987
	.word	-16
	.word	4
	.word	_Label_2988
	.word	-20
	.word	4
	.word	_Label_2989
	.word	-24
	.word	4
	.word	_Label_2990
	.word	-28
	.word	4
	.word	_Label_2991
	.word	-9
	.word	1
	.word	0
_Label_2984:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2985:
	.ascii	"Pself\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2991:
	.byte	'C'
	.ascii	"_temp_2977\0"
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
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
	mov	1303,r13		! source line 1303
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0RE",r10
!   _temp_2995 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2995 [entry ] into _temp_2996
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
!   Data Move: _temp_2994 = *_temp_2996  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2993 = _temp_2994 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2993) then goto _Label_2997
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2997
!   _temp_2992 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2998
_Label_2997:
!   _temp_2992 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2998:
!   ReturnResult: _temp_2992  (sizeInBytes=1)
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
	.word	_Label_2999
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3001
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2999:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3000:
	.ascii	"Pself\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3006:
	.byte	'C'
	.ascii	"_temp_2992\0"
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
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
	mov	1312,r13		! source line 1312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0RE",r10
!   _temp_3010 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3010 [entry ] into _temp_3011
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
!   Data Move: _temp_3009 = *_temp_3011  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3008 = _temp_3009 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3008) then goto _Label_3012
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3012
!   _temp_3007 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3013
_Label_3012:
!   _temp_3007 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3013:
!   ReturnResult: _temp_3007  (sizeInBytes=1)
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
	.word	_Label_3014
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3016
	.word	12
	.word	4
	.word	_Label_3017
	.word	-16
	.word	4
	.word	_Label_3018
	.word	-20
	.word	4
	.word	_Label_3019
	.word	-24
	.word	4
	.word	_Label_3020
	.word	-28
	.word	4
	.word	_Label_3021
	.word	-9
	.word	1
	.word	0
_Label_3014:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3015:
	.ascii	"Pself\0"
	.align
_Label_3016:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3021:
	.byte	'C'
	.ascii	"_temp_3007\0"
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
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_3025 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3025 [entry ] into _temp_3026
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
!   Data Move: _temp_3024 = *_temp_3026  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3023 = _temp_3024 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3023) then goto _Label_3027
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3027
!   _temp_3022 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3028
_Label_3027:
!   _temp_3022 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3028:
!   ReturnResult: _temp_3022  (sizeInBytes=1)
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
	.word	_Label_3029
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3031
	.word	12
	.word	4
	.word	_Label_3032
	.word	-16
	.word	4
	.word	_Label_3033
	.word	-20
	.word	4
	.word	_Label_3034
	.word	-24
	.word	4
	.word	_Label_3035
	.word	-28
	.word	4
	.word	_Label_3036
	.word	-9
	.word	1
	.word	0
_Label_3029:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3030:
	.ascii	"Pself\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3025\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3036:
	.byte	'C'
	.ascii	"_temp_3022\0"
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_3037 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3037 [entry ] into _temp_3038
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
!   _temp_3041 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3041 [entry ] into _temp_3042
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
!   Data Move: _temp_3040 = *_temp_3042  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3039 = _temp_3040 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3038 = _temp_3039  (sizeInBytes=4)
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
	.word	_Label_3043
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3045
	.word	12
	.word	4
	.word	_Label_3046
	.word	-12
	.word	4
	.word	_Label_3047
	.word	-16
	.word	4
	.word	_Label_3048
	.word	-20
	.word	4
	.word	_Label_3049
	.word	-24
	.word	4
	.word	_Label_3050
	.word	-28
	.word	4
	.word	_Label_3051
	.word	-32
	.word	4
	.word	0
_Label_3043:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3044:
	.ascii	"Pself\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3037\0"
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
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0AS",r10
!   _temp_3052 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3052 [entry ] into _temp_3053
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
!   _temp_3056 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3056 [entry ] into _temp_3057
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
!   Data Move: _temp_3055 = *_temp_3057  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3054 = _temp_3055 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3053 = _temp_3054  (sizeInBytes=4)
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
	.word	_Label_3058
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3060
	.word	12
	.word	4
	.word	_Label_3061
	.word	-12
	.word	4
	.word	_Label_3062
	.word	-16
	.word	4
	.word	_Label_3063
	.word	-20
	.word	4
	.word	_Label_3064
	.word	-24
	.word	4
	.word	_Label_3065
	.word	-28
	.word	4
	.word	_Label_3066
	.word	-32
	.word	4
	.word	0
_Label_3058:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3059:
	.ascii	"Pself\0"
	.align
_Label_3060:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3052\0"
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
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0AS",r10
!   _temp_3067 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3067 [entry ] into _temp_3068
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
!   _temp_3071 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3071 [entry ] into _temp_3072
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
!   Data Move: _temp_3070 = *_temp_3072  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3069 = _temp_3070 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3068 = _temp_3069  (sizeInBytes=4)
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
	.word	_Label_3073
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3075
	.word	12
	.word	4
	.word	_Label_3076
	.word	-12
	.word	4
	.word	_Label_3077
	.word	-16
	.word	4
	.word	_Label_3078
	.word	-20
	.word	4
	.word	_Label_3079
	.word	-24
	.word	4
	.word	_Label_3080
	.word	-28
	.word	4
	.word	_Label_3081
	.word	-32
	.word	4
	.word	0
_Label_3073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3074:
	.ascii	"Pself\0"
	.align
_Label_3075:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3081:
	.byte	'?'
	.ascii	"_temp_3067\0"
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
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_3082 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3082 [entry ] into _temp_3083
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
!   _temp_3086 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3086 [entry ] into _temp_3087
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
!   Data Move: _temp_3085 = *_temp_3087  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3084 = _temp_3085 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3083 = _temp_3084  (sizeInBytes=4)
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
	.word	_Label_3088
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3090
	.word	12
	.word	4
	.word	_Label_3091
	.word	-12
	.word	4
	.word	_Label_3092
	.word	-16
	.word	4
	.word	_Label_3093
	.word	-20
	.word	4
	.word	_Label_3094
	.word	-24
	.word	4
	.word	_Label_3095
	.word	-28
	.word	4
	.word	_Label_3096
	.word	-32
	.word	4
	.word	0
_Label_3088:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3089:
	.ascii	"Pself\0"
	.align
_Label_3090:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3082\0"
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
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_3097 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3097 [entry ] into _temp_3098
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
!   _temp_3101 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3101 [entry ] into _temp_3102
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
!   Data Move: _temp_3100 = *_temp_3102  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3099 = _temp_3100 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3098 = _temp_3099  (sizeInBytes=4)
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
	.word	_Label_3103
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3104
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3105
	.word	12
	.word	4
	.word	_Label_3106
	.word	-12
	.word	4
	.word	_Label_3107
	.word	-16
	.word	4
	.word	_Label_3108
	.word	-20
	.word	4
	.word	_Label_3109
	.word	-24
	.word	4
	.word	_Label_3110
	.word	-28
	.word	4
	.word	_Label_3111
	.word	-32
	.word	4
	.word	0
_Label_3103:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3104:
	.ascii	"Pself\0"
	.align
_Label_3105:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3097\0"
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
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_3112 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3112 [entry ] into _temp_3113
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
!   _temp_3116 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3116 [entry ] into _temp_3117
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
!   Data Move: _temp_3115 = *_temp_3117  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3114 = _temp_3115 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3113 = _temp_3114  (sizeInBytes=4)
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
	.word	_Label_3118
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3120
	.word	12
	.word	4
	.word	_Label_3121
	.word	-12
	.word	4
	.word	_Label_3122
	.word	-16
	.word	4
	.word	_Label_3123
	.word	-20
	.word	4
	.word	_Label_3124
	.word	-24
	.word	4
	.word	_Label_3125
	.word	-28
	.word	4
	.word	_Label_3126
	.word	-32
	.word	4
	.word	0
_Label_3118:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3119:
	.ascii	"Pself\0"
	.align
_Label_3120:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3112\0"
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
_Label_4426:
	push	r0
	sub	r1,1,r1
	bne	_Label_4426
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_3127 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3127 [entry ] into _temp_3128
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
!   _temp_3131 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3131 [entry ] into _temp_3132
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
!   Data Move: _temp_3130 = *_temp_3132  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3129 = _temp_3130 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3128 = _temp_3129  (sizeInBytes=4)
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
	.word	_Label_3133
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3134
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3135
	.word	12
	.word	4
	.word	_Label_3136
	.word	-12
	.word	4
	.word	_Label_3137
	.word	-16
	.word	4
	.word	_Label_3138
	.word	-20
	.word	4
	.word	_Label_3139
	.word	-24
	.word	4
	.word	_Label_3140
	.word	-28
	.word	4
	.word	_Label_3141
	.word	-32
	.word	4
	.word	0
_Label_3133:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3134:
	.ascii	"Pself\0"
	.align
_Label_3135:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3127\0"
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
_Label_4427:
	push	r0
	sub	r1,1,r1
	bne	_Label_4427
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_3142 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3142 [entry ] into _temp_3143
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
!   _temp_3146 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3146 [entry ] into _temp_3147
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
!   Data Move: _temp_3145 = *_temp_3147  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3144 = _temp_3145 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3143 = _temp_3144  (sizeInBytes=4)
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
	.word	_Label_3148
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3150
	.word	12
	.word	4
	.word	_Label_3151
	.word	-12
	.word	4
	.word	_Label_3152
	.word	-16
	.word	4
	.word	_Label_3153
	.word	-20
	.word	4
	.word	_Label_3154
	.word	-24
	.word	4
	.word	_Label_3155
	.word	-28
	.word	4
	.word	_Label_3156
	.word	-32
	.word	4
	.word	0
_Label_3148:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3149:
	.ascii	"Pself\0"
	.align
_Label_3150:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3142\0"
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
_Label_4428:
	push	r0
	sub	r1,1,r1
	bne	_Label_4428
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3158 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3158 [0 ] into _temp_3159
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
!   _temp_3157 = _temp_3159		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3160 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3160  sizeInBytes=4
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
	.word	_Label_3161
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	-12
	.word	4
	.word	_Label_3164
	.word	-16
	.word	4
	.word	_Label_3165
	.word	-20
	.word	4
	.word	_Label_3166
	.word	-24
	.word	4
	.word	0
_Label_3161:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3157\0"
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
_Label_4429:
	push	r0
	sub	r1,1,r1
	bne	_Label_4429
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3167
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3167
	jmp	_Label_3168
_Label_3167:
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
	jmp	_Label_3169
_Label_3168:
! ELSE...
	mov	1430,r13		! source line 1430
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3171		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3171
!	jmp	_Label_3170
_Label_3170:
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
_Label_3171:
! END IF...
_Label_3169:
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
_Label_3172:
!	jmp	_Label_3173
_Label_3173:
	mov	1437,r13		! source line 1437
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3176		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3176
!	jmp	_Label_3175
_Label_3175:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3177 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3177  sizeInBytes=4
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
_Label_3176:
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3181) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3180  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3180 then goto _Label_3179 else goto _Label_3178
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3178
	jmp	_Label_3179
_Label_3178:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3182 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3182  sizeInBytes=4
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
_Label_3179:
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
	mov	1446,r13		! source line 1446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3184) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3183  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3183 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0WH",r10
_Label_3185:
!   if offset >= 8192 then goto _Label_3187		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3187
!	jmp	_Label_3186
_Label_3186:
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
!   Data Move: _temp_3188 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3188  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3190		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3190
!	jmp	_Label_3189
_Label_3189:
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
_Label_3190:
! END WHILE...
	jmp	_Label_3185
_Label_3187:
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
	jmp	_Label_3172
_Label_3174:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3191
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3193
	.word	12
	.word	4
	.word	_Label_3194
	.word	16
	.word	4
	.word	_Label_3195
	.word	20
	.word	4
	.word	_Label_3196
	.word	-9
	.word	1
	.word	_Label_3197
	.word	-16
	.word	4
	.word	_Label_3198
	.word	-20
	.word	4
	.word	_Label_3199
	.word	-24
	.word	4
	.word	_Label_3200
	.word	-28
	.word	4
	.word	_Label_3201
	.word	-10
	.word	1
	.word	_Label_3202
	.word	-32
	.word	4
	.word	_Label_3203
	.word	-36
	.word	4
	.word	_Label_3204
	.word	-40
	.word	4
	.word	_Label_3205
	.word	-44
	.word	4
	.word	_Label_3206
	.word	-48
	.word	4
	.word	0
_Label_3191:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3192:
	.ascii	"Pself\0"
	.align
_Label_3193:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3194:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3195:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3196:
	.byte	'C'
	.ascii	"_temp_3188\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3201:
	.byte	'C'
	.ascii	"_temp_3180\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3203:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3204:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3205:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3206:
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
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3207
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3207
	jmp	_Label_3208
_Label_3207:
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
	jmp	_Label_3209
_Label_3208:
! ELSE...
	mov	1480,r13		! source line 1480
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3211		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3211
!	jmp	_Label_3210
_Label_3210:
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
_Label_3211:
! END IF...
_Label_3209:
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
_Label_3212:
!	jmp	_Label_3213
_Label_3213:
	mov	1485,r13		! source line 1485
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3218		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3218
	jmp	_Label_3215
_Label_3218:
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3220) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3219  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3219 then goto _Label_3217 else goto _Label_3215
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3215
	jmp	_Label_3217
_Label_3217:
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3222) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3221  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3221 then goto _Label_3216 else goto _Label_3215
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3215
	jmp	_Label_3216
_Label_3215:
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
_Label_3216:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3224) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3223  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3223 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0WH",r10
_Label_3225:
!   if offset >= 8192 then goto _Label_3227		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3227
!	jmp	_Label_3226
_Label_3226:
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
!   Data Move: _temp_3228 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3228  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3230		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3230
!	jmp	_Label_3229
_Label_3229:
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
_Label_3230:
! END WHILE...
	jmp	_Label_3225
_Label_3227:
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
	jmp	_Label_3212
_Label_3214:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3231
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3233
	.word	12
	.word	4
	.word	_Label_3234
	.word	16
	.word	4
	.word	_Label_3235
	.word	20
	.word	4
	.word	_Label_3236
	.word	-9
	.word	1
	.word	_Label_3237
	.word	-16
	.word	4
	.word	_Label_3238
	.word	-20
	.word	4
	.word	_Label_3239
	.word	-24
	.word	4
	.word	_Label_3240
	.word	-10
	.word	1
	.word	_Label_3241
	.word	-28
	.word	4
	.word	_Label_3242
	.word	-11
	.word	1
	.word	_Label_3243
	.word	-32
	.word	4
	.word	_Label_3244
	.word	-36
	.word	4
	.word	_Label_3245
	.word	-40
	.word	4
	.word	_Label_3246
	.word	-44
	.word	4
	.word	0
_Label_3231:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3232:
	.ascii	"Pself\0"
	.align
_Label_3233:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3234:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3235:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3236:
	.byte	'C'
	.ascii	"_temp_3228\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3240:
	.byte	'C'
	.ascii	"_temp_3221\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3242:
	.byte	'C'
	.ascii	"_temp_3219\0"
	.align
_Label_3243:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3244:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3245:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3246:
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
_Label_4431:
	push	r0
	sub	r1,1,r1
	bne	_Label_4431
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0IF",r10
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
!   _temp_3250 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3251) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3250  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3249  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3249 >= 4 then goto _Label_3248		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3248
!	jmp	_Label_3247
_Label_3247:
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
_Label_3248:
! IF STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3253		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3253
!	jmp	_Label_3252
_Label_3252:
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
_Label_3253:
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
!   _temp_3256 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3255 = _temp_3256 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3257 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3258) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3255  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3257  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3254  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3254  (sizeInBytes=4)
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
	.word	_Label_3259
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3260
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3261
	.word	12
	.word	4
	.word	_Label_3262
	.word	16
	.word	4
	.word	_Label_3263
	.word	20
	.word	4
	.word	_Label_3264
	.word	-12
	.word	4
	.word	_Label_3265
	.word	-16
	.word	4
	.word	_Label_3266
	.word	-20
	.word	4
	.word	_Label_3267
	.word	-24
	.word	4
	.word	_Label_3268
	.word	-28
	.word	4
	.word	_Label_3269
	.word	-32
	.word	4
	.word	_Label_3270
	.word	-36
	.word	4
	.word	_Label_3271
	.word	-40
	.word	4
	.word	_Label_3272
	.word	-44
	.word	4
	.word	0
_Label_3259:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3260:
	.ascii	"Pself\0"
	.align
_Label_3261:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3262:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3263:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3255\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3249\0"
	.align
_Label_3272:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3273
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3273:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3274
	.word	_sourceFileName
	.word	308		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3274:
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
_Label_4432:
	push	r0
	sub	r1,1,r1
	bne	_Label_4432
	mov	2262,r13		! source line 2262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3275 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3275  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2263,r13		! source line 2263
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
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
	mov	2271,r13		! source line 2271
	mov	"\0\0SE",r10
!   _temp_3277 = &semUsedInSynchMethods
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
	mov	2272,r13		! source line 2272
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
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_3279 = &diskBusy
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
	mov	2273,r13		! source line 2273
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
	.word	_Label_3280
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3282
	.word	-12
	.word	4
	.word	_Label_3283
	.word	-16
	.word	4
	.word	_Label_3284
	.word	-20
	.word	4
	.word	_Label_3285
	.word	-24
	.word	4
	.word	_Label_3286
	.word	-28
	.word	4
	.word	0
_Label_3280:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3281:
	.ascii	"Pself\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3275\0"
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
_Label_4433:
	push	r0
	sub	r1,1,r1
	bne	_Label_4433
	mov	2278,r13		! source line 2278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_3287 = &diskBusy
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
	mov	2292,r13		! source line 2292
	mov	"\0\0WH",r10
_Label_3288:
!	jmp	_Label_3289
_Label_3289:
	mov	2292,r13		! source line 2292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   _temp_3291 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3292) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3291  sizeInBytes=4
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
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_3293 = &semUsedInSynchMethods
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
	mov	2299,r13		! source line 2299
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3302 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3296
	cmp	r1,2
	be	_Label_3297
	cmp	r1,3
	be	_Label_3298
	cmp	r1,4
	be	_Label_3299
	cmp	r1,5
	be	_Label_3300
	cmp	r1,6
	be	_Label_3301
	jmp	_Label_3294
! CASE 1...
_Label_3296:
! SEND STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_3303 = &diskBusy
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
	mov	2302,r13		! source line 2302
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3297:
! CALL STATEMENT...
!   _temp_3304 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3304  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2304,r13		! source line 2304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3298:
! CALL STATEMENT...
!   _temp_3305 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3305  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2306,r13		! source line 2306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3299:
! CALL STATEMENT...
!   _temp_3306 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3306  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2308,r13		! source line 2308
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3300:
! BREAK STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0BR",r10
	jmp	_Label_3295
! CASE 6...
_Label_3301:
! CALL STATEMENT...
!   _temp_3307 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3307  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2314,r13		! source line 2314
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3294:
! CALL STATEMENT...
!   _temp_3308 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3308  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2316,r13		! source line 2316
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3295:
! END WHILE...
	jmp	_Label_3288
_Label_3290:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3309
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3310
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3311
	.word	12
	.word	4
	.word	_Label_3312
	.word	16
	.word	4
	.word	_Label_3313
	.word	20
	.word	4
	.word	_Label_3314
	.word	-12
	.word	4
	.word	_Label_3315
	.word	-16
	.word	4
	.word	_Label_3316
	.word	-20
	.word	4
	.word	_Label_3317
	.word	-24
	.word	4
	.word	_Label_3318
	.word	-28
	.word	4
	.word	_Label_3319
	.word	-32
	.word	4
	.word	_Label_3320
	.word	-36
	.word	4
	.word	_Label_3321
	.word	-40
	.word	4
	.word	_Label_3322
	.word	-44
	.word	4
	.word	_Label_3323
	.word	-48
	.word	4
	.word	_Label_3324
	.word	-52
	.word	4
	.word	0
_Label_3309:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3310:
	.ascii	"Pself\0"
	.align
_Label_3311:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3312:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3287\0"
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
	mov	2325,r13		! source line 2325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
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
	mov	2344,r13		! source line 2344
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
	mov	2345,r13		! source line 2345
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
	mov	2346,r13		! source line 2346
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
	mov	2346,r13		! source line 2346
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
	.word	_Label_3325
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3327
	.word	12
	.word	4
	.word	_Label_3328
	.word	16
	.word	4
	.word	_Label_3329
	.word	20
	.word	4
	.word	_Label_3330
	.word	24
	.word	4
	.word	0
_Label_3325:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3326:
	.ascii	"Pself\0"
	.align
_Label_3327:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3328:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3329:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3330:
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
_Label_4434:
	push	r0
	sub	r1,1,r1
	bne	_Label_4434
	mov	2351,r13		! source line 2351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0SE",r10
!   _temp_3331 = &diskBusy
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
	mov	2364,r13		! source line 2364
	mov	"\0\0WH",r10
_Label_3332:
!	jmp	_Label_3333
_Label_3333:
	mov	2364,r13		! source line 2364
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_3335 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3336) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3335  sizeInBytes=4
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
	mov	2367,r13		! source line 2367
	mov	"\0\0SE",r10
!   _temp_3337 = &semUsedInSynchMethods
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
	mov	2370,r13		! source line 2370
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3346 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3340
	cmp	r1,2
	be	_Label_3341
	cmp	r1,3
	be	_Label_3342
	cmp	r1,4
	be	_Label_3343
	cmp	r1,5
	be	_Label_3344
	cmp	r1,6
	be	_Label_3345
	jmp	_Label_3338
! CASE 1...
_Label_3340:
! SEND STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0SE",r10
!   _temp_3347 = &diskBusy
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
	mov	2373,r13		! source line 2373
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3341:
! CALL STATEMENT...
!   _temp_3348 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3348  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2375,r13		! source line 2375
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3342:
! CALL STATEMENT...
!   _temp_3349 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3349  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2377,r13		! source line 2377
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3343:
! CALL STATEMENT...
!   _temp_3350 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3350  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2379,r13		! source line 2379
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3344:
! BREAK STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0BR",r10
	jmp	_Label_3339
! CASE 6...
_Label_3345:
! CALL STATEMENT...
!   _temp_3351 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3351  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2385,r13		! source line 2385
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3338:
! CALL STATEMENT...
!   _temp_3352 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3352  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2387,r13		! source line 2387
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3339:
! END WHILE...
	jmp	_Label_3332
_Label_3334:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3353
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3354
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3355
	.word	12
	.word	4
	.word	_Label_3356
	.word	16
	.word	4
	.word	_Label_3357
	.word	20
	.word	4
	.word	_Label_3358
	.word	-12
	.word	4
	.word	_Label_3359
	.word	-16
	.word	4
	.word	_Label_3360
	.word	-20
	.word	4
	.word	_Label_3361
	.word	-24
	.word	4
	.word	_Label_3362
	.word	-28
	.word	4
	.word	_Label_3363
	.word	-32
	.word	4
	.word	_Label_3364
	.word	-36
	.word	4
	.word	_Label_3365
	.word	-40
	.word	4
	.word	_Label_3366
	.word	-44
	.word	4
	.word	_Label_3367
	.word	-48
	.word	4
	.word	_Label_3368
	.word	-52
	.word	4
	.word	0
_Label_3353:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3354:
	.ascii	"Pself\0"
	.align
_Label_3355:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3356:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3357:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3331\0"
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
	mov	2396,r13		! source line 2396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
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
	mov	2414,r13		! source line 2414
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
	mov	2415,r13		! source line 2415
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
	mov	2416,r13		! source line 2416
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
	mov	2416,r13		! source line 2416
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
	.word	_Label_3369
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3370
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3371
	.word	12
	.word	4
	.word	_Label_3372
	.word	16
	.word	4
	.word	_Label_3373
	.word	20
	.word	4
	.word	_Label_3374
	.word	24
	.word	4
	.word	0
_Label_3369:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3370:
	.ascii	"Pself\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3372:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3373:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3374:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3375
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
_Label_3375:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3376
	.word	_sourceFileName
	.word	331		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3376:
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
	mov	2427,r13		! source line 2427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3377 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3377  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2434,r13		! source line 2434
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
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
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   _temp_3379 = &fileManagerLock
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
	mov	2439,r13		! source line 2439
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
	mov	2440,r13		! source line 2440
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
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_3382 = &anFCBBecameFree
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
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   _temp_3383 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3385 = &_temp_3384
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3385 = _temp_3385 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3387 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4436:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4436
!   _temp_3387 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3389:
!   Data Move: *_temp_3385 = _temp_3387  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4437:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4437
!   _temp_3385 = _temp_3385 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3386 = _temp_3386 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3386) then goto _Label_3389
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3389
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3390 = &_temp_3384
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4438
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4438:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3383 = *_temp_3390  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4439:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4439
! FOR STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3395 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3396 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3395  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3391:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3396 then goto _Label_3394		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3394
_Label_3392:
	mov	2444,r13		! source line 2444
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   _temp_3397 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3397 [i ] into _temp_3398
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
!   _temp_3399 = _temp_3398 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3399 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_3400 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3400 [i ] into _temp_3401
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
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_3403 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3403 [i ] into _temp_3404
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
!   _temp_3402 = _temp_3404		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3405 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3402  sizeInBytes=4
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
_Label_3393:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3391
! END FOR
_Label_3394:
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
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
	mov	2452,r13		! source line 2452
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
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_3408 = &anOpenFileBecameFree
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
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   _temp_3409 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3411 = &_temp_3410
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3411 = _temp_3411 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3413 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4440:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4440
!   _temp_3413 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3415:
!   Data Move: *_temp_3411 = _temp_3413  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4441:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4441
!   _temp_3411 = _temp_3411 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3412 = _temp_3412 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3412) then goto _Label_3415
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3415
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3416 = &_temp_3410
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4442
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4442:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3409 = *_temp_3416  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4443:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4443
! FOR STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3421 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3422 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3421  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3417:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3422 then goto _Label_3420		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3420
_Label_3418:
	mov	2456,r13		! source line 2456
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   _temp_3423 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3423 [i ] into _temp_3424
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
!   _temp_3425 = _temp_3424 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3425 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_3427 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3427 [i ] into _temp_3428
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
!   _temp_3426 = _temp_3428		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3429 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3426  sizeInBytes=4
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
_Label_3419:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3417
! END FOR
_Label_3420:
! ASSIGNMENT STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4444:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4444
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   _temp_3431 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3432 = _temp_3431 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3432 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_3433 = &_P_Kernel_frameManager
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
	mov	2469,r13		! source line 2469
	mov	"\0\0SE",r10
!   _temp_3434 = &_P_Kernel_diskDriver
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
	mov	2469,r13		! source line 2469
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
	.word	_Label_3435
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3437
	.word	-12
	.word	4
	.word	_Label_3438
	.word	-16
	.word	4
	.word	_Label_3439
	.word	-20
	.word	4
	.word	_Label_3440
	.word	-24
	.word	4
	.word	_Label_3441
	.word	-28
	.word	4
	.word	_Label_3442
	.word	-32
	.word	4
	.word	_Label_3443
	.word	-36
	.word	4
	.word	_Label_3444
	.word	-40
	.word	4
	.word	_Label_3445
	.word	-44
	.word	4
	.word	_Label_3446
	.word	-48
	.word	4
	.word	_Label_3447
	.word	-52
	.word	4
	.word	_Label_3448
	.word	-56
	.word	4
	.word	_Label_3449
	.word	-60
	.word	4
	.word	_Label_3450
	.word	-64
	.word	4
	.word	_Label_3451
	.word	-68
	.word	4
	.word	_Label_3452
	.word	-72
	.word	4
	.word	_Label_3453
	.word	-100
	.word	28
	.word	_Label_3454
	.word	-104
	.word	4
	.word	_Label_3455
	.word	-108
	.word	4
	.word	_Label_3456
	.word	-392
	.word	284
	.word	_Label_3457
	.word	-396
	.word	4
	.word	_Label_3458
	.word	-400
	.word	4
	.word	_Label_3459
	.word	-404
	.word	4
	.word	_Label_3460
	.word	-408
	.word	4
	.word	_Label_3461
	.word	-412
	.word	4
	.word	_Label_3462
	.word	-416
	.word	4
	.word	_Label_3463
	.word	-420
	.word	4
	.word	_Label_3464
	.word	-424
	.word	4
	.word	_Label_3465
	.word	-428
	.word	4
	.word	_Label_3466
	.word	-432
	.word	4
	.word	_Label_3467
	.word	-436
	.word	4
	.word	_Label_3468
	.word	-440
	.word	4
	.word	_Label_3469
	.word	-444
	.word	4
	.word	_Label_3470
	.word	-448
	.word	4
	.word	_Label_3471
	.word	-452
	.word	4
	.word	_Label_3472
	.word	-456
	.word	4
	.word	_Label_3473
	.word	-460
	.word	4
	.word	_Label_3474
	.word	-500
	.word	40
	.word	_Label_3475
	.word	-504
	.word	4
	.word	_Label_3476
	.word	-508
	.word	4
	.word	_Label_3477
	.word	-912
	.word	404
	.word	_Label_3478
	.word	-916
	.word	4
	.word	_Label_3479
	.word	-920
	.word	4
	.word	_Label_3480
	.word	-924
	.word	4
	.word	_Label_3481
	.word	-928
	.word	4
	.word	_Label_3482
	.word	-932
	.word	4
	.word	_Label_3483
	.word	-936
	.word	4
	.word	_Label_3484
	.word	-940
	.word	4
	.word	_Label_3485
	.word	-944
	.word	4
	.word	0
_Label_3435:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3436:
	.ascii	"Pself\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3434\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3432\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3446:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3447:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3457:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3458:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3459:
	.byte	'?'
	.ascii	"_temp_3407\0"
	.align
_Label_3460:
	.byte	'?'
	.ascii	"_temp_3406\0"
	.align
_Label_3461:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3462:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3463:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3469:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3470:
	.byte	'?'
	.ascii	"_temp_3396\0"
	.align
_Label_3471:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3472:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3385\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3377\0"
	.align
_Label_3485:
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
_Label_4445:
	push	r0
	sub	r1,1,r1
	bne	_Label_4445
	mov	2476,r13		! source line 2476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_3486 = &fileManagerLock
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
!   _temp_3487 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3487  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2479,r13		! source line 2479
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3492 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3493 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3492  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3488:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3493 then goto _Label_3491		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3491
_Label_3489:
	mov	2480,r13		! source line 2480
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3494 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3494  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2481,r13		! source line 2481
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2482,r13		! source line 2482
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3495 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3495  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2483,r13		! source line 2483
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_3496 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3496 [i ] into _temp_3497
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
_Label_3490:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3488
! END FOR
_Label_3491:
! CALL STATEMENT...
!   _temp_3498 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3498  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2486,r13		! source line 2486
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_3499 = _function_188_printFCB
	set	_function_188_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3500 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3499  sizeInBytes=4
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
	mov	2488,r13		! source line 2488
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3501 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3501  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3506 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3507 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3506  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3502:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3507 then goto _Label_3505		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3505
_Label_3503:
	mov	2490,r13		! source line 2490
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3508 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3508  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3509 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3509  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3511 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3511 [i ] into _temp_3512
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
!   _temp_3510 = _temp_3512		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3510  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2494,r13		! source line 2494
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3513 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3513  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_3514 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3514 [i ] into _temp_3515
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
_Label_3504:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3502
! END FOR
_Label_3505:
! CALL STATEMENT...
!   _temp_3516 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3516  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2498,r13		! source line 2498
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0SE",r10
!   _temp_3517 = _function_187_printOpen
	set	_function_187_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3518 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3517  sizeInBytes=4
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
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_3519 = &fileManagerLock
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
	mov	2500,r13		! source line 2500
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
	.word	_Label_3520
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3521
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3522
	.word	-12
	.word	4
	.word	_Label_3523
	.word	-16
	.word	4
	.word	_Label_3524
	.word	-20
	.word	4
	.word	_Label_3525
	.word	-24
	.word	4
	.word	_Label_3526
	.word	-28
	.word	4
	.word	_Label_3527
	.word	-32
	.word	4
	.word	_Label_3528
	.word	-36
	.word	4
	.word	_Label_3529
	.word	-40
	.word	4
	.word	_Label_3530
	.word	-44
	.word	4
	.word	_Label_3531
	.word	-48
	.word	4
	.word	_Label_3532
	.word	-52
	.word	4
	.word	_Label_3533
	.word	-56
	.word	4
	.word	_Label_3534
	.word	-60
	.word	4
	.word	_Label_3535
	.word	-64
	.word	4
	.word	_Label_3536
	.word	-68
	.word	4
	.word	_Label_3537
	.word	-72
	.word	4
	.word	_Label_3538
	.word	-76
	.word	4
	.word	_Label_3539
	.word	-80
	.word	4
	.word	_Label_3540
	.word	-84
	.word	4
	.word	_Label_3541
	.word	-88
	.word	4
	.word	_Label_3542
	.word	-92
	.word	4
	.word	_Label_3543
	.word	-96
	.word	4
	.word	_Label_3544
	.word	-100
	.word	4
	.word	_Label_3545
	.word	-104
	.word	4
	.word	_Label_3546
	.word	-108
	.word	4
	.word	_Label_3547
	.word	-112
	.word	4
	.word	_Label_3548
	.word	-116
	.word	4
	.word	0
_Label_3520:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3521:
	.ascii	"Pself\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3528:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3529:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3530:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3531:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3532:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3533:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3534:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3535:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3536:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3537:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3538:
	.byte	'?'
	.ascii	"_temp_3499\0"
	.align
_Label_3539:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3540:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3495\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3494\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3492\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3487\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3548:
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
_Label_4446:
	push	r0
	sub	r1,1,r1
	bne	_Label_4446
	mov	2505,r13		! source line 2505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
	mov	2521,r13		! source line 2521
	mov	"\0\0SE",r10
!   _temp_3549 = &_P_Kernel_fileManager
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
	mov	2522,r13		! source line 2522
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3550
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3550
	jmp	_Label_3551
_Label_3550:
! THEN...
	mov	2523,r13		! source line 2523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3551:
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_3552 = &fileManagerLock
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
	mov	2528,r13		! source line 2528
	mov	"\0\0WH",r10
_Label_3553:
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_3556 = &openFileFreeList
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
!   if result==true then goto _Label_3554 else goto _Label_3555
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3555
	jmp	_Label_3554
_Label_3554:
	mov	2528,r13		! source line 2528
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
!   _temp_3557 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3558 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3557  sizeInBytes=4
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
	jmp	_Label_3553
_Label_3555:
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_3559 = &openFileFreeList
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
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3560 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3560 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3561 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3561 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3562 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3562 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   _temp_3563 = &fileManagerLock
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
	mov	2541,r13		! source line 2541
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
	.word	_Label_3564
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3566
	.word	12
	.word	4
	.word	_Label_3567
	.word	-12
	.word	4
	.word	_Label_3568
	.word	-16
	.word	4
	.word	_Label_3569
	.word	-20
	.word	4
	.word	_Label_3570
	.word	-24
	.word	4
	.word	_Label_3571
	.word	-28
	.word	4
	.word	_Label_3572
	.word	-32
	.word	4
	.word	_Label_3573
	.word	-36
	.word	4
	.word	_Label_3574
	.word	-40
	.word	4
	.word	_Label_3575
	.word	-44
	.word	4
	.word	_Label_3576
	.word	-48
	.word	4
	.word	_Label_3577
	.word	-52
	.word	4
	.word	_Label_3578
	.word	-56
	.word	4
	.word	0
_Label_3564:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3565:
	.ascii	"Pself\0"
	.align
_Label_3566:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3556\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3577:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3578:
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
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
	mov	2546,r13		! source line 2546
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
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
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3580		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3580
!	jmp	_Label_3579
_Label_3579:
! THEN...
	mov	2577,r13		! source line 2577
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3581 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3581  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2577,r13		! source line 2577
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3580:
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
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
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
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
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0WH",r10
_Label_3582:
!   if numFiles <= 0 then goto _Label_3584		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3584
!	jmp	_Label_3583
_Label_3583:
	mov	2587,r13		! source line 2587
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3585 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3585  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CA",r10
	call	_function_189_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3586 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3586  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2590,r13		! source line 2590
	mov	"\0\0CA",r10
	call	_function_189_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3587 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3587  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CA",r10
	call	_function_189_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3591 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3591 then goto _Label_3589		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3589
!	jmp	_Label_3590
_Label_3590:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3593
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
!   _temp_3592 = _temp_3593		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3592  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2595,r13		! source line 2595
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3588 else goto _Label_3589
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3589
	jmp	_Label_3588
_Label_3588:
! THEN...
	mov	2596,r13		! source line 2596
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0BR",r10
	jmp	_Label_3584
! END IF...
_Label_3589:
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3582
_Label_3584:
! IF STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3595		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3595
!	jmp	_Label_3594
_Label_3594:
! THEN...
	mov	2604,r13		! source line 2604
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3595:
! SEND STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   _temp_3596 = &fileManagerLock
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
	mov	2609,r13		! source line 2609
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3601 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3602 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3601  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3597:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3602 then goto _Label_3600		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3600
_Label_3598:
	mov	2609,r13		! source line 2609
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   _temp_3603 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3603 [i ] into _temp_3604
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
!   fcb = _temp_3604		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3608 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3607 = *_temp_3608  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3607 != start then goto _Label_3606		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3606
!	jmp	_Label_3605
_Label_3605:
! THEN...
	mov	2612,r13		! source line 2612
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3609 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3612 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3611 = *_temp_3612  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3610 = _temp_3611 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3609 = _temp_3610  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   _temp_3613 = &fileManagerLock
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
	mov	2614,r13		! source line 2614
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3606:
!   Increment the FOR-LOOP index variable and jump back
_Label_3599:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3597
! END FOR
_Label_3600:
! WHILE STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0WH",r10
_Label_3614:
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_3617 = &fcbFreeList
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
!   if result==true then goto _Label_3615 else goto _Label_3616
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3616
	jmp	_Label_3615
_Label_3615:
	mov	2619,r13		! source line 2619
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0SE",r10
!   _temp_3618 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3619 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3618  sizeInBytes=4
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
	jmp	_Label_3614
_Label_3616:
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
	mov	2622,r13		! source line 2622
	mov	"\0\0SE",r10
!   _temp_3620 = &fcbFreeList
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
	mov	2625,r13		! source line 2625
	mov	"\0\0SE",r10
!   _temp_3621 = &fileManagerLock
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
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3622 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3622 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3623 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3623 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3624 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3624 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3629 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3628 = *_temp_3629  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3628 < 0 then goto _Label_3627		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3627
	jmp	_Label_3625
_Label_3627:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3630 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3630 ) then goto _Label_3626		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3626
!	jmp	_Label_3625
_Label_3625:
! THEN...
	mov	2632,r13		! source line 2632
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3631 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3631  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2632,r13		! source line 2632
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3626:
! RETURN STATEMENT...
	mov	2634,r13		! source line 2634
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
	.word	_Label_3632
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3634
	.word	12
	.word	4
	.word	_Label_3635
	.word	-12
	.word	4
	.word	_Label_3636
	.word	-16
	.word	4
	.word	_Label_3637
	.word	-20
	.word	4
	.word	_Label_3638
	.word	-24
	.word	4
	.word	_Label_3639
	.word	-28
	.word	4
	.word	_Label_3640
	.word	-32
	.word	4
	.word	_Label_3641
	.word	-36
	.word	4
	.word	_Label_3642
	.word	-40
	.word	4
	.word	_Label_3643
	.word	-44
	.word	4
	.word	_Label_3644
	.word	-48
	.word	4
	.word	_Label_3645
	.word	-52
	.word	4
	.word	_Label_3646
	.word	-56
	.word	4
	.word	_Label_3647
	.word	-60
	.word	4
	.word	_Label_3648
	.word	-64
	.word	4
	.word	_Label_3649
	.word	-68
	.word	4
	.word	_Label_3650
	.word	-72
	.word	4
	.word	_Label_3651
	.word	-76
	.word	4
	.word	_Label_3652
	.word	-80
	.word	4
	.word	_Label_3653
	.word	-84
	.word	4
	.word	_Label_3654
	.word	-88
	.word	4
	.word	_Label_3655
	.word	-92
	.word	4
	.word	_Label_3656
	.word	-96
	.word	4
	.word	_Label_3657
	.word	-100
	.word	4
	.word	_Label_3658
	.word	-104
	.word	4
	.word	_Label_3659
	.word	-108
	.word	4
	.word	_Label_3660
	.word	-112
	.word	4
	.word	_Label_3661
	.word	-116
	.word	4
	.word	_Label_3662
	.word	-120
	.word	4
	.word	_Label_3663
	.word	-124
	.word	4
	.word	_Label_3664
	.word	-128
	.word	4
	.word	_Label_3665
	.word	-132
	.word	4
	.word	_Label_3666
	.word	-136
	.word	4
	.word	_Label_3667
	.word	-140
	.word	4
	.word	_Label_3668
	.word	-144
	.word	4
	.word	_Label_3669
	.word	-148
	.word	4
	.word	_Label_3670
	.word	-152
	.word	4
	.word	_Label_3671
	.word	-156
	.word	4
	.word	_Label_3672
	.word	-160
	.word	4
	.word	0
_Label_3632:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3633:
	.ascii	"Pself\0"
	.align
_Label_3634:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3631\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3623\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3622\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3612\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3611\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3610\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3609\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3608\0"
	.align
_Label_3653:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3654:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3656:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3657:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3658:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3659:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3660:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3661:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3662:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3663:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3664:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3665:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3666:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3667:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3668:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3669:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3670:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3671:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3672:
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
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
	mov	2647,r13		! source line 2647
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
!   _temp_3675 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3675 then goto _Label_3674		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3674
!	jmp	_Label_3673
_Label_3673:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3674:
! SEND STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   _temp_3676 = &fileManagerLock
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
	mov	2653,r13		! source line 2653
	mov	"\0\0SE",r10
!   _temp_3677 = &_P_Kernel_fileManager
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
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3678 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3678  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3679 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3682 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3681 = *_temp_3682  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3680 = _temp_3681 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3679 = _temp_3680  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3686 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3685 = *_temp_3686  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3685 > 0 then goto _Label_3684		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3684
!	jmp	_Label_3683
_Label_3683:
! THEN...
	mov	2657,r13		! source line 2657
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_3687 = &openFileFreeList
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
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3688 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3689 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3688  sizeInBytes=4
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
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3690 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3693 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3692 = *_temp_3693  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3691 = _temp_3692 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3690 = _temp_3691  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3697 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3696 = *_temp_3697  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3696 > 0 then goto _Label_3695		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3695
!	jmp	_Label_3694
_Label_3694:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
!   _temp_3698 = &fcbFreeList
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
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   _temp_3699 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3700 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3699  sizeInBytes=4
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
_Label_3695:
! END IF...
_Label_3684:
! SEND STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0SE",r10
!   _temp_3701 = &fileManagerLock
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
	mov	2665,r13		! source line 2665
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
	.word	_Label_3702
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3704
	.word	12
	.word	4
	.word	_Label_3705
	.word	-12
	.word	4
	.word	_Label_3706
	.word	-16
	.word	4
	.word	_Label_3707
	.word	-20
	.word	4
	.word	_Label_3708
	.word	-24
	.word	4
	.word	_Label_3709
	.word	-28
	.word	4
	.word	_Label_3710
	.word	-32
	.word	4
	.word	_Label_3711
	.word	-36
	.word	4
	.word	_Label_3712
	.word	-40
	.word	4
	.word	_Label_3713
	.word	-44
	.word	4
	.word	_Label_3714
	.word	-48
	.word	4
	.word	_Label_3715
	.word	-52
	.word	4
	.word	_Label_3716
	.word	-56
	.word	4
	.word	_Label_3717
	.word	-60
	.word	4
	.word	_Label_3718
	.word	-64
	.word	4
	.word	_Label_3719
	.word	-68
	.word	4
	.word	_Label_3720
	.word	-72
	.word	4
	.word	_Label_3721
	.word	-76
	.word	4
	.word	_Label_3722
	.word	-80
	.word	4
	.word	_Label_3723
	.word	-84
	.word	4
	.word	_Label_3724
	.word	-88
	.word	4
	.word	_Label_3725
	.word	-92
	.word	4
	.word	_Label_3726
	.word	-96
	.word	4
	.word	_Label_3727
	.word	-100
	.word	4
	.word	_Label_3728
	.word	-104
	.word	4
	.word	0
_Label_3702:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3703:
	.ascii	"Pself\0"
	.align
_Label_3704:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3701\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3698\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3693\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3692\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3691\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3690\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3724:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3725:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3726:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3727:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3728:
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
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
	mov	2670,r13		! source line 2670
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3732 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3731 = *_temp_3732  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3731) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3733 = _temp_3731 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3733 ) then goto _Label_3730		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3730
!	jmp	_Label_3729
_Label_3729:
! THEN...
	mov	2676,r13		! source line 2676
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3738 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3737 = *_temp_3738  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3737) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3739 = _temp_3737 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3736 = *_temp_3739  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3736 >= 0 then goto _Label_3735		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3735
!	jmp	_Label_3734
_Label_3734:
! THEN...
	mov	2677,r13		! source line 2677
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3740 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3740  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2677,r13		! source line 2677
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3735:
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3742 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3741 = *_temp_3742  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3741) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3743 = _temp_3741 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3743 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3747 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3746 = *_temp_3747  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3746) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3748 = _temp_3746 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3745 = *_temp_3748  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3751 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3750 = *_temp_3751  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3750) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3752 = _temp_3750 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3749 = *_temp_3752  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3744 = _temp_3745 + _temp_3749		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3755 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3754 = *_temp_3755  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3754) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3756 = _temp_3754 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3753 = *_temp_3756  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3757 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3744  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3753  sizeInBytes=4
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
_Label_3730:
! RETURN STATEMENT...
	mov	2675,r13		! source line 2675
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
	.word	_Label_3758
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3760
	.word	12
	.word	4
	.word	_Label_3761
	.word	-12
	.word	4
	.word	_Label_3762
	.word	-16
	.word	4
	.word	_Label_3763
	.word	-20
	.word	4
	.word	_Label_3764
	.word	-24
	.word	4
	.word	_Label_3765
	.word	-28
	.word	4
	.word	_Label_3766
	.word	-32
	.word	4
	.word	_Label_3767
	.word	-36
	.word	4
	.word	_Label_3768
	.word	-40
	.word	4
	.word	_Label_3769
	.word	-44
	.word	4
	.word	_Label_3770
	.word	-48
	.word	4
	.word	_Label_3771
	.word	-52
	.word	4
	.word	_Label_3772
	.word	-56
	.word	4
	.word	_Label_3773
	.word	-60
	.word	4
	.word	_Label_3774
	.word	-64
	.word	4
	.word	_Label_3775
	.word	-68
	.word	4
	.word	_Label_3776
	.word	-72
	.word	4
	.word	_Label_3777
	.word	-76
	.word	4
	.word	_Label_3778
	.word	-80
	.word	4
	.word	_Label_3779
	.word	-84
	.word	4
	.word	_Label_3780
	.word	-88
	.word	4
	.word	_Label_3781
	.word	-92
	.word	4
	.word	_Label_3782
	.word	-96
	.word	4
	.word	_Label_3783
	.word	-100
	.word	4
	.word	_Label_3784
	.word	-104
	.word	4
	.word	_Label_3785
	.word	-108
	.word	4
	.word	0
_Label_3758:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3759:
	.ascii	"Pself\0"
	.align
_Label_3760:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3757\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3754\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3753\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3750\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3749\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3771:
	.byte	'?'
	.ascii	"_temp_3747\0"
	.align
_Label_3772:
	.byte	'?'
	.ascii	"_temp_3746\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3775:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3780:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3781:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3782:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3783:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3784:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3785:
	.byte	'?'
	.ascii	"_temp_3731\0"
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
_Label_4450:
	push	r0
	sub	r1,1,r1
	bne	_Label_4450
	mov	2689,r13		! source line 2689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2704,r13		! source line 2704
	mov	"\0\0SE",r10
!   _temp_3786 = &fileManagerLock
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
	mov	2705,r13		! source line 2705
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3792		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3792
!   _temp_3791 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3793
_Label_3792:
!   _temp_3791 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3793:
!   if _temp_3791 then goto _Label_3790 else goto _Label_3787
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3787
	jmp	_Label_3790
_Label_3790:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3796 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3795 = *_temp_3796  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3795 == 0 then goto _Label_3797		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3797
!   _temp_3794 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3798
_Label_3797:
!   _temp_3794 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3798:
!   if _temp_3794 then goto _Label_3789 else goto _Label_3787
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3787
	jmp	_Label_3789
_Label_3789:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3801 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3800 = *_temp_3801  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3800) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3802 = _temp_3800 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3799 = *_temp_3802  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3799 >= 0 then goto _Label_3788		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3788
!	jmp	_Label_3787
_Label_3787:
! THEN...
	mov	2706,r13		! source line 2706
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3803 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3803  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2706,r13		! source line 2706
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3788:
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3804 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3804  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0WH",r10
_Label_3805:
!   if numBytes <= 0 then goto _Label_3807		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3807
!	jmp	_Label_3806
_Label_3806:
	mov	2709,r13		! source line 2709
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2718,r13		! source line 2718
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
	mov	2719,r13		! source line 2719
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
	mov	2723,r13		! source line 2723
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3811 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3810 = *_temp_3811  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3810 == sector then goto _Label_3809		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3809
!	jmp	_Label_3808
_Label_3808:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3812) then goto _runtimeErrorNullPointer
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
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3815 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3814 = *_temp_3815  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3813 = sector + _temp_3814		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3817 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3816 = *_temp_3817  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3818 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3813  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3816  sizeInBytes=4
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
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3819 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3819 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3820 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3820 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3809:
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3822 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3821 = *_temp_3822  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3821 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   _temp_3823 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3823  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2733,r13		! source line 2733
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
	mov	2737,r13		! source line 2737
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3805
_Label_3807:
! SEND STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0SE",r10
!   _temp_3824 = &fileManagerLock
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
	mov	2748,r13		! source line 2748
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
	.word	_Label_3825
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3827
	.word	12
	.word	4
	.word	_Label_3828
	.word	16
	.word	4
	.word	_Label_3829
	.word	20
	.word	4
	.word	_Label_3830
	.word	24
	.word	4
	.word	_Label_3831
	.word	-16
	.word	4
	.word	_Label_3832
	.word	-20
	.word	4
	.word	_Label_3833
	.word	-24
	.word	4
	.word	_Label_3834
	.word	-28
	.word	4
	.word	_Label_3835
	.word	-32
	.word	4
	.word	_Label_3836
	.word	-36
	.word	4
	.word	_Label_3837
	.word	-40
	.word	4
	.word	_Label_3838
	.word	-44
	.word	4
	.word	_Label_3839
	.word	-48
	.word	4
	.word	_Label_3840
	.word	-52
	.word	4
	.word	_Label_3841
	.word	-56
	.word	4
	.word	_Label_3842
	.word	-60
	.word	4
	.word	_Label_3843
	.word	-64
	.word	4
	.word	_Label_3844
	.word	-68
	.word	4
	.word	_Label_3845
	.word	-72
	.word	4
	.word	_Label_3846
	.word	-76
	.word	4
	.word	_Label_3847
	.word	-80
	.word	4
	.word	_Label_3848
	.word	-84
	.word	4
	.word	_Label_3849
	.word	-88
	.word	4
	.word	_Label_3850
	.word	-92
	.word	4
	.word	_Label_3851
	.word	-96
	.word	4
	.word	_Label_3852
	.word	-100
	.word	4
	.word	_Label_3853
	.word	-104
	.word	4
	.word	_Label_3854
	.word	-9
	.word	1
	.word	_Label_3855
	.word	-10
	.word	1
	.word	_Label_3856
	.word	-108
	.word	4
	.word	_Label_3857
	.word	-112
	.word	4
	.word	_Label_3858
	.word	-116
	.word	4
	.word	_Label_3859
	.word	-120
	.word	4
	.word	_Label_3860
	.word	-124
	.word	4
	.word	_Label_3861
	.word	-128
	.word	4
	.word	0
_Label_3825:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3826:
	.ascii	"Pself\0"
	.align
_Label_3827:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3828:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3829:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3830:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3831:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3822\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3821\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3836:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3818\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3817\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3811\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3810\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3801\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3800\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3854:
	.byte	'C'
	.ascii	"_temp_3794\0"
	.align
_Label_3855:
	.byte	'C'
	.ascii	"_temp_3791\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3857:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3858:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3859:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3860:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3861:
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
_Label_4451:
	push	r0
	sub	r1,1,r1
	bne	_Label_4451
	mov	2753,r13		! source line 2753
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
!   _temp_3862 = &fileManagerLock
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
	mov	2770,r13		! source line 2770
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3868		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3868
!   _temp_3867 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3869
_Label_3868:
!   _temp_3867 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3869:
!   if _temp_3867 then goto _Label_3866 else goto _Label_3863
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3863
	jmp	_Label_3866
_Label_3866:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3872 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3871 = *_temp_3872  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3871 == 0 then goto _Label_3873		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3873
!   _temp_3870 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3874
_Label_3873:
!   _temp_3870 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3874:
!   if _temp_3870 then goto _Label_3865 else goto _Label_3863
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3863
	jmp	_Label_3865
_Label_3865:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3877 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3876 = *_temp_3877  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3876) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3878 = _temp_3876 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3875 = *_temp_3878  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3875 >= 0 then goto _Label_3864		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3864
!	jmp	_Label_3863
_Label_3863:
! THEN...
	mov	2771,r13		! source line 2771
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3879 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3879  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2771,r13		! source line 2771
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3864:
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3880 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3880  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0WH",r10
_Label_3881:
!   if numBytes <= 0 then goto _Label_3883		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3883
!	jmp	_Label_3882
_Label_3882:
	mov	2774,r13		! source line 2774
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
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
	mov	2784,r13		! source line 2784
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
	mov	2788,r13		! source line 2788
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3887 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3886 = *_temp_3887  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3886 == sector then goto _Label_3885		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3885
!	jmp	_Label_3884
_Label_3884:
! THEN...
	mov	2790,r13		! source line 2790
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3888) then goto _runtimeErrorNullPointer
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
_Label_3885:
! ASSIGNMENT STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3890 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3889 = *_temp_3890  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3889 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
!   _temp_3891 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3891  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2793,r13		! source line 2793
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3895 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3894 = *_temp_3895  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3894 != sector then goto _Label_3893		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3893
!	jmp	_Label_3892
_Label_3892:
	jmp	_Label_3896
_Label_3893:
! ELSE...
	mov	2796,r13		! source line 2796
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3899
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3899
	jmp	_Label_3898
_Label_3899:
!   if bytesToMove != 8192 then goto _Label_3898		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3898
!	jmp	_Label_3897
_Label_3897:
	jmp	_Label_3900
_Label_3898:
! ELSE...
	mov	2800,r13		! source line 2800
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3903 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3902 = *_temp_3903  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3901 = sector + _temp_3902		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3905 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3904 = *_temp_3905  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3906 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3901  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3904  sizeInBytes=4
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
_Label_3900:
! END IF...
_Label_3896:
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3907 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3907 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3908 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3908 = 1  (sizeInBytes=1)
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
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3881
_Label_3883:
! SEND STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0SE",r10
!   _temp_3909 = &fileManagerLock
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
	mov	2821,r13		! source line 2821
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
	.word	_Label_3910
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3911
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3912
	.word	12
	.word	4
	.word	_Label_3913
	.word	16
	.word	4
	.word	_Label_3914
	.word	20
	.word	4
	.word	_Label_3915
	.word	24
	.word	4
	.word	_Label_3916
	.word	-16
	.word	4
	.word	_Label_3917
	.word	-20
	.word	4
	.word	_Label_3918
	.word	-24
	.word	4
	.word	_Label_3919
	.word	-28
	.word	4
	.word	_Label_3920
	.word	-32
	.word	4
	.word	_Label_3921
	.word	-36
	.word	4
	.word	_Label_3922
	.word	-40
	.word	4
	.word	_Label_3923
	.word	-44
	.word	4
	.word	_Label_3924
	.word	-48
	.word	4
	.word	_Label_3925
	.word	-52
	.word	4
	.word	_Label_3926
	.word	-56
	.word	4
	.word	_Label_3927
	.word	-60
	.word	4
	.word	_Label_3928
	.word	-64
	.word	4
	.word	_Label_3929
	.word	-68
	.word	4
	.word	_Label_3930
	.word	-72
	.word	4
	.word	_Label_3931
	.word	-76
	.word	4
	.word	_Label_3932
	.word	-80
	.word	4
	.word	_Label_3933
	.word	-84
	.word	4
	.word	_Label_3934
	.word	-88
	.word	4
	.word	_Label_3935
	.word	-92
	.word	4
	.word	_Label_3936
	.word	-96
	.word	4
	.word	_Label_3937
	.word	-100
	.word	4
	.word	_Label_3938
	.word	-104
	.word	4
	.word	_Label_3939
	.word	-108
	.word	4
	.word	_Label_3940
	.word	-112
	.word	4
	.word	_Label_3941
	.word	-9
	.word	1
	.word	_Label_3942
	.word	-10
	.word	1
	.word	_Label_3943
	.word	-116
	.word	4
	.word	_Label_3944
	.word	-120
	.word	4
	.word	_Label_3945
	.word	-124
	.word	4
	.word	_Label_3946
	.word	-128
	.word	4
	.word	_Label_3947
	.word	-132
	.word	4
	.word	_Label_3948
	.word	-136
	.word	4
	.word	0
_Label_3910:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3911:
	.ascii	"Pself\0"
	.align
_Label_3912:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3913:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3914:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3915:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3909\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3908\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3907\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3906\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3905\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3904\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3902\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3894\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3887\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3886\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3879\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3878\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3872\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3941:
	.byte	'C'
	.ascii	"_temp_3870\0"
	.align
_Label_3942:
	.byte	'C'
	.ascii	"_temp_3867\0"
	.align
_Label_3943:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3944:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3945:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3946:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3947:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3948:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3949
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3949:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3950
	.word	_sourceFileName
	.word	356		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3950:
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
_Label_4452:
	push	r0
	sub	r1,1,r1
	bne	_Label_4452
	mov	2857,r13		! source line 2857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0AS",r10
	mov	2859,r13		! source line 2859
	mov	"\0\0SE",r10
!   _temp_3951 = &_P_Kernel_frameManager
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
	mov	2860,r13		! source line 2860
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2862,r13		! source line 2862
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
	.word	_Label_3952
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3953
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3954
	.word	-12
	.word	4
	.word	0
_Label_3952:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3953:
	.ascii	"Pself\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3951\0"
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
_Label_4453:
	push	r0
	sub	r1,1,r1
	bne	_Label_4453
	mov	2867,r13		! source line 2867
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3955 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3955  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2868,r13		! source line 2868
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3956 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3956  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2871,r13		! source line 2871
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3957 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3957  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3958 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3958  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3959 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3959  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3960 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3960  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2880,r13		! source line 2880
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
	.word	_Label_3961
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3962
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3963
	.word	-12
	.word	4
	.word	_Label_3964
	.word	-16
	.word	4
	.word	_Label_3965
	.word	-20
	.word	4
	.word	_Label_3966
	.word	-24
	.word	4
	.word	_Label_3967
	.word	-28
	.word	4
	.word	_Label_3968
	.word	-32
	.word	4
	.word	0
_Label_3961:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3962:
	.ascii	"Pself\0"
	.align
_Label_3963:
	.byte	'?'
	.ascii	"_temp_3960\0"
	.align
_Label_3964:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_3965:
	.byte	'?'
	.ascii	"_temp_3958\0"
	.align
_Label_3966:
	.byte	'?'
	.ascii	"_temp_3957\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3955\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3969
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3969:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3970
	.word	_sourceFileName
	.word	373		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3970:
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
	mov	2891,r13		! source line 2891
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3971 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3971  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2892,r13		! source line 2892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2893,r13		! source line 2893
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3972 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3972  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3974		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3974
!	jmp	_Label_3973
_Label_3973:
! THEN...
	mov	2896,r13		! source line 2896
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2896,r13		! source line 2896
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
	jmp	_Label_3975
_Label_3974:
! ELSE...
	mov	2898,r13		! source line 2898
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3976 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3976  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3975:
! RETURN STATEMENT...
	mov	2895,r13		! source line 2895
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
	.word	_Label_3977
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3979
	.word	-12
	.word	4
	.word	_Label_3980
	.word	-16
	.word	4
	.word	_Label_3981
	.word	-20
	.word	4
	.word	0
_Label_3977:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3978:
	.ascii	"Pself\0"
	.align
_Label_3979:
	.byte	'?'
	.ascii	"_temp_3976\0"
	.align
_Label_3980:
	.byte	'?'
	.ascii	"_temp_3972\0"
	.align
_Label_3981:
	.byte	'?'
	.ascii	"_temp_3971\0"
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
	mov	2904,r13		! source line 2904
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_3982 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3983 = _temp_3982 + 4
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
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2916,r13		! source line 2916
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
	mov	2917,r13		! source line 2917
	mov	"\0\0SE",r10
!   _temp_3984 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3985 = _temp_3984 + 4
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
	mov	2918,r13		! source line 2918
	mov	"\0\0RE",r10
	mov	2918,r13		! source line 2918
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3988 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3987  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3986  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3986  (sizeInBytes=1)
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
	.word	_Label_3989
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3991
	.word	12
	.word	4
	.word	_Label_3992
	.word	16
	.word	4
	.word	_Label_3993
	.word	-16
	.word	4
	.word	_Label_3994
	.word	-20
	.word	4
	.word	_Label_3995
	.word	-9
	.word	1
	.word	_Label_3996
	.word	-24
	.word	4
	.word	_Label_3997
	.word	-28
	.word	4
	.word	_Label_3998
	.word	-32
	.word	4
	.word	_Label_3999
	.word	-36
	.word	4
	.word	_Label_4000
	.word	-40
	.word	4
	.word	0
_Label_3989:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3990:
	.ascii	"Pself\0"
	.align
_Label_3991:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3992:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3993:
	.byte	'?'
	.ascii	"_temp_3988\0"
	.align
_Label_3994:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_3995:
	.byte	'C'
	.ascii	"_temp_3986\0"
	.align
_Label_3996:
	.byte	'?'
	.ascii	"_temp_3985\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3984\0"
	.align
_Label_3998:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_3999:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_4000:
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	2923,r13		! source line 2923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0IF",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
!   _temp_4004 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4005) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4004  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4003  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4003 then goto _Label_4002 else goto _Label_4001
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4001
	jmp	_Label_4002
_Label_4001:
! THEN...
	mov	2929,r13		! source line 2929
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4006 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4006  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2929,r13		! source line 2929
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4002:
! RETURN STATEMENT...
	mov	2931,r13		! source line 2931
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
	.word	_Label_4007
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4008
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4009
	.word	-16
	.word	4
	.word	_Label_4010
	.word	-20
	.word	4
	.word	_Label_4011
	.word	-24
	.word	4
	.word	_Label_4012
	.word	-9
	.word	1
	.word	_Label_4013
	.word	-28
	.word	4
	.word	0
_Label_4007:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4008:
	.ascii	"Pself\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_4006\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_4005\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_4004\0"
	.align
_Label_4012:
	.byte	'C'
	.ascii	"_temp_4003\0"
	.align
_Label_4013:
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	2936,r13		! source line 2936
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4017 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4016 = *_temp_4017  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4016) then goto _Label_4015
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4015
!	jmp	_Label_4014
_Label_4014:
! THEN...
	mov	2963,r13		! source line 2963
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4018 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4018  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2963,r13		! source line 2963
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4015:
! IF STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0IF",r10
	mov	2967,r13		! source line 2967
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4022) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4021  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4021 == 1112300152 then goto _Label_4020		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4020
!	jmp	_Label_4019
_Label_4019:
! THEN...
	mov	2968,r13		! source line 2968
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4023 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4023  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2968,r13		! source line 2968
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4020:
! ASSIGNMENT STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0AS",r10
	mov	2973,r13		! source line 2973
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4024) then goto _runtimeErrorNullPointer
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
	mov	2974,r13		! source line 2974
	mov	"\0\0AS",r10
	mov	2974,r13		! source line 2974
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4025) then goto _runtimeErrorNullPointer
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
	mov	2975,r13		! source line 2975
	mov	"\0\0AS",r10
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4026) then goto _runtimeErrorNullPointer
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
	mov	2976,r13		! source line 2976
	mov	"\0\0AS",r10
	mov	2976,r13		! source line 2976
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4027) then goto _runtimeErrorNullPointer
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
	mov	2977,r13		! source line 2977
	mov	"\0\0AS",r10
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4028) then goto _runtimeErrorNullPointer
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
	mov	2978,r13		! source line 2978
	mov	"\0\0AS",r10
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4029) then goto _runtimeErrorNullPointer
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
	mov	2981,r13		! source line 2981
	mov	"\0\0IF",r10
!   _temp_4032 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4032) then goto _Label_4031
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4031
!	jmp	_Label_4030
_Label_4030:
! THEN...
	mov	2982,r13		! source line 2982
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4033 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4033  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4031:
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
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
	mov	2989,r13		! source line 2989
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4035
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4035
!	jmp	_Label_4034
_Label_4034:
! THEN...
	mov	2990,r13		! source line 2990
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4036 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4036  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2990,r13		! source line 2990
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4035:
! IF STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0IF",r10
!   _temp_4039 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4039) then goto _Label_4038
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4038
!	jmp	_Label_4037
_Label_4037:
! THEN...
	mov	2996,r13		! source line 2996
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4040 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4040  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2996,r13		! source line 2996
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4038:
! IF STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   _temp_4043 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4043 then goto _Label_4042		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4042
!	jmp	_Label_4041
_Label_4041:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4044 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4044  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4042:
! ASSIGNMENT STATEMENT...
	mov	3003,r13		! source line 3003
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
	mov	3006,r13		! source line 3006
	mov	"\0\0IF",r10
!   _temp_4047 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4047) then goto _Label_4046
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4046
!	jmp	_Label_4045
_Label_4045:
! THEN...
	mov	3007,r13		! source line 3007
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4048 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4048  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3007,r13		! source line 3007
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3008,r13		! source line 3008
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4046:
! IF STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0IF",r10
!   _temp_4051 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4051 then goto _Label_4050		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4050
!	jmp	_Label_4049
_Label_4049:
! THEN...
	mov	3011,r13		! source line 3011
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4052 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4052  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3011,r13		! source line 3011
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4050:
! ASSIGNMENT STATEMENT...
	mov	3014,r13		! source line 3014
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
	mov	3017,r13		! source line 3017
	mov	"\0\0AS",r10
!   _temp_4055 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4054 = _temp_4055 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4053 = _temp_4054 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4053 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3032,r13		! source line 3032
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4057		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4057
!	jmp	_Label_4056
_Label_4056:
! THEN...
	mov	3033,r13		! source line 3033
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4058 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4058  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3033,r13		! source line 3033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4059 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4059  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3034,r13		! source line 3034
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4060 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4060  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3035,r13		! source line 3035
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4057:
! SEND STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0SE",r10
!   _temp_4061 = &_P_Kernel_frameManager
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
	mov	3044,r13		! source line 3044
	mov	"\0\0IF",r10
	mov	3044,r13		! source line 3044
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4065) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4064  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4064 == 707406378 then goto _Label_4063		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4063
!	jmp	_Label_4062
_Label_4062:
! THEN...
	mov	3045,r13		! source line 3045
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4066 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4066  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3045,r13		! source line 3045
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0SE",r10
!   _temp_4067 = &_P_Kernel_frameManager
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
	mov	3047,r13		! source line 3047
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4063:
! ASSIGNMENT STATEMENT...
	mov	3051,r13		! source line 3051
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
	mov	3052,r13		! source line 3052
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4072 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4073 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4072  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4068:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4073 then goto _Label_4071		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4071
_Label_4069:
	mov	3052,r13		! source line 3052
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3053,r13		! source line 3053
	mov	"\0\0AS",r10
	mov	3053,r13		! source line 3053
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
	mov	3056,r13		! source line 3056
	mov	"\0\0IF",r10
	mov	3056,r13		! source line 3056
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4077) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4076  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4076 then goto _Label_4075 else goto _Label_4074
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4074
	jmp	_Label_4075
_Label_4074:
! THEN...
	mov	3057,r13		! source line 3057
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4078 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4078  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3057,r13		! source line 3057
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0SE",r10
!   _temp_4079 = &_P_Kernel_frameManager
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
	mov	3059,r13		! source line 3059
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4075:
! SEND STATEMENT...
	mov	3061,r13		! source line 3061
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
	mov	3062,r13		! source line 3062
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4070:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4068
! END FOR
_Label_4071:
! IF STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0IF",r10
	mov	3066,r13		! source line 3066
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4083) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4082  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4082 == 707406378 then goto _Label_4081		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4081
!	jmp	_Label_4080
_Label_4080:
! THEN...
	mov	3067,r13		! source line 3067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4084 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4084  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3067,r13		! source line 3067
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0SE",r10
!   _temp_4085 = &_P_Kernel_frameManager
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
	mov	3069,r13		! source line 3069
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4081:
! FOR STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4090 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4091 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4090  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4086:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4091 then goto _Label_4089		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4089
_Label_4087:
	mov	3073,r13		! source line 3073
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0AS",r10
	mov	3074,r13		! source line 3074
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
	mov	3077,r13		! source line 3077
	mov	"\0\0IF",r10
	mov	3077,r13		! source line 3077
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4095) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4094  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4094 then goto _Label_4093 else goto _Label_4092
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4092
	jmp	_Label_4093
_Label_4092:
! THEN...
	mov	3078,r13		! source line 3078
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4096 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4096  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3078,r13		! source line 3078
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0SE",r10
!   _temp_4097 = &_P_Kernel_frameManager
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
	mov	3080,r13		! source line 3080
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4093:
! ASSIGNMENT STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4088:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4086
! END FOR
_Label_4089:
! IF STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0IF",r10
	mov	3086,r13		! source line 3086
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4101) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4100  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4100 == 707406378 then goto _Label_4099		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4099
!	jmp	_Label_4098
_Label_4098:
! THEN...
	mov	3087,r13		! source line 3087
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4102 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4102  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3087,r13		! source line 3087
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3088,r13		! source line 3088
	mov	"\0\0SE",r10
!   _temp_4103 = &_P_Kernel_frameManager
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
	mov	3089,r13		! source line 3089
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4099:
! ASSIGNMENT STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0AS",r10
	mov	3093,r13		! source line 3093
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
	mov	3097,r13		! source line 3097
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3100,r13		! source line 3100
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
	.word	_Label_4104
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4105
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4106
	.word	12
	.word	4
	.word	_Label_4107
	.word	-16
	.word	4
	.word	_Label_4108
	.word	-20
	.word	4
	.word	_Label_4109
	.word	-24
	.word	4
	.word	_Label_4110
	.word	-28
	.word	4
	.word	_Label_4111
	.word	-32
	.word	4
	.word	_Label_4112
	.word	-36
	.word	4
	.word	_Label_4113
	.word	-40
	.word	4
	.word	_Label_4114
	.word	-9
	.word	1
	.word	_Label_4115
	.word	-44
	.word	4
	.word	_Label_4116
	.word	-48
	.word	4
	.word	_Label_4117
	.word	-52
	.word	4
	.word	_Label_4118
	.word	-56
	.word	4
	.word	_Label_4119
	.word	-60
	.word	4
	.word	_Label_4120
	.word	-64
	.word	4
	.word	_Label_4121
	.word	-68
	.word	4
	.word	_Label_4122
	.word	-72
	.word	4
	.word	_Label_4123
	.word	-76
	.word	4
	.word	_Label_4124
	.word	-10
	.word	1
	.word	_Label_4125
	.word	-80
	.word	4
	.word	_Label_4126
	.word	-84
	.word	4
	.word	_Label_4127
	.word	-88
	.word	4
	.word	_Label_4128
	.word	-92
	.word	4
	.word	_Label_4129
	.word	-96
	.word	4
	.word	_Label_4130
	.word	-100
	.word	4
	.word	_Label_4131
	.word	-104
	.word	4
	.word	_Label_4132
	.word	-108
	.word	4
	.word	_Label_4133
	.word	-112
	.word	4
	.word	_Label_4134
	.word	-116
	.word	4
	.word	_Label_4135
	.word	-120
	.word	4
	.word	_Label_4136
	.word	-124
	.word	4
	.word	_Label_4137
	.word	-128
	.word	4
	.word	_Label_4138
	.word	-132
	.word	4
	.word	_Label_4139
	.word	-136
	.word	4
	.word	_Label_4140
	.word	-140
	.word	4
	.word	_Label_4141
	.word	-144
	.word	4
	.word	_Label_4142
	.word	-148
	.word	4
	.word	_Label_4143
	.word	-152
	.word	4
	.word	_Label_4144
	.word	-156
	.word	4
	.word	_Label_4145
	.word	-160
	.word	4
	.word	_Label_4146
	.word	-164
	.word	4
	.word	_Label_4147
	.word	-168
	.word	4
	.word	_Label_4148
	.word	-172
	.word	4
	.word	_Label_4149
	.word	-176
	.word	4
	.word	_Label_4150
	.word	-180
	.word	4
	.word	_Label_4151
	.word	-184
	.word	4
	.word	_Label_4152
	.word	-188
	.word	4
	.word	_Label_4153
	.word	-192
	.word	4
	.word	_Label_4154
	.word	-196
	.word	4
	.word	_Label_4155
	.word	-200
	.word	4
	.word	_Label_4156
	.word	-204
	.word	4
	.word	_Label_4157
	.word	-208
	.word	4
	.word	_Label_4158
	.word	-212
	.word	4
	.word	_Label_4159
	.word	-216
	.word	4
	.word	_Label_4160
	.word	-220
	.word	4
	.word	_Label_4161
	.word	-224
	.word	4
	.word	_Label_4162
	.word	-228
	.word	4
	.word	_Label_4163
	.word	-232
	.word	4
	.word	_Label_4164
	.word	-236
	.word	4
	.word	_Label_4165
	.word	-240
	.word	4
	.word	_Label_4166
	.word	-244
	.word	4
	.word	_Label_4167
	.word	-248
	.word	4
	.word	_Label_4168
	.word	-252
	.word	4
	.word	_Label_4169
	.word	-256
	.word	4
	.word	_Label_4170
	.word	-260
	.word	4
	.word	_Label_4171
	.word	-264
	.word	4
	.word	_Label_4172
	.word	-268
	.word	4
	.word	0
_Label_4104:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4105:
	.ascii	"Pself\0"
	.align
_Label_4106:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4107:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4108:
	.byte	'?'
	.ascii	"_temp_4102\0"
	.align
_Label_4109:
	.byte	'?'
	.ascii	"_temp_4101\0"
	.align
_Label_4110:
	.byte	'?'
	.ascii	"_temp_4100\0"
	.align
_Label_4111:
	.byte	'?'
	.ascii	"_temp_4097\0"
	.align
_Label_4112:
	.byte	'?'
	.ascii	"_temp_4096\0"
	.align
_Label_4113:
	.byte	'?'
	.ascii	"_temp_4095\0"
	.align
_Label_4114:
	.byte	'C'
	.ascii	"_temp_4094\0"
	.align
_Label_4115:
	.byte	'?'
	.ascii	"_temp_4091\0"
	.align
_Label_4116:
	.byte	'?'
	.ascii	"_temp_4090\0"
	.align
_Label_4117:
	.byte	'?'
	.ascii	"_temp_4085\0"
	.align
_Label_4118:
	.byte	'?'
	.ascii	"_temp_4084\0"
	.align
_Label_4119:
	.byte	'?'
	.ascii	"_temp_4083\0"
	.align
_Label_4120:
	.byte	'?'
	.ascii	"_temp_4082\0"
	.align
_Label_4121:
	.byte	'?'
	.ascii	"_temp_4079\0"
	.align
_Label_4122:
	.byte	'?'
	.ascii	"_temp_4078\0"
	.align
_Label_4123:
	.byte	'?'
	.ascii	"_temp_4077\0"
	.align
_Label_4124:
	.byte	'C'
	.ascii	"_temp_4076\0"
	.align
_Label_4125:
	.byte	'?'
	.ascii	"_temp_4073\0"
	.align
_Label_4126:
	.byte	'?'
	.ascii	"_temp_4072\0"
	.align
_Label_4127:
	.byte	'?'
	.ascii	"_temp_4067\0"
	.align
_Label_4128:
	.byte	'?'
	.ascii	"_temp_4066\0"
	.align
_Label_4129:
	.byte	'?'
	.ascii	"_temp_4065\0"
	.align
_Label_4130:
	.byte	'?'
	.ascii	"_temp_4064\0"
	.align
_Label_4131:
	.byte	'?'
	.ascii	"_temp_4061\0"
	.align
_Label_4132:
	.byte	'?'
	.ascii	"_temp_4060\0"
	.align
_Label_4133:
	.byte	'?'
	.ascii	"_temp_4059\0"
	.align
_Label_4134:
	.byte	'?'
	.ascii	"_temp_4058\0"
	.align
_Label_4135:
	.byte	'?'
	.ascii	"_temp_4055\0"
	.align
_Label_4136:
	.byte	'?'
	.ascii	"_temp_4054\0"
	.align
_Label_4137:
	.byte	'?'
	.ascii	"_temp_4053\0"
	.align
_Label_4138:
	.byte	'?'
	.ascii	"_temp_4052\0"
	.align
_Label_4139:
	.byte	'?'
	.ascii	"_temp_4051\0"
	.align
_Label_4140:
	.byte	'?'
	.ascii	"_temp_4048\0"
	.align
_Label_4141:
	.byte	'?'
	.ascii	"_temp_4047\0"
	.align
_Label_4142:
	.byte	'?'
	.ascii	"_temp_4044\0"
	.align
_Label_4143:
	.byte	'?'
	.ascii	"_temp_4043\0"
	.align
_Label_4144:
	.byte	'?'
	.ascii	"_temp_4040\0"
	.align
_Label_4145:
	.byte	'?'
	.ascii	"_temp_4039\0"
	.align
_Label_4146:
	.byte	'?'
	.ascii	"_temp_4036\0"
	.align
_Label_4147:
	.byte	'?'
	.ascii	"_temp_4033\0"
	.align
_Label_4148:
	.byte	'?'
	.ascii	"_temp_4032\0"
	.align
_Label_4149:
	.byte	'?'
	.ascii	"_temp_4029\0"
	.align
_Label_4150:
	.byte	'?'
	.ascii	"_temp_4028\0"
	.align
_Label_4151:
	.byte	'?'
	.ascii	"_temp_4027\0"
	.align
_Label_4152:
	.byte	'?'
	.ascii	"_temp_4026\0"
	.align
_Label_4153:
	.byte	'?'
	.ascii	"_temp_4025\0"
	.align
_Label_4154:
	.byte	'?'
	.ascii	"_temp_4024\0"
	.align
_Label_4155:
	.byte	'?'
	.ascii	"_temp_4023\0"
	.align
_Label_4156:
	.byte	'?'
	.ascii	"_temp_4022\0"
	.align
_Label_4157:
	.byte	'?'
	.ascii	"_temp_4021\0"
	.align
_Label_4158:
	.byte	'?'
	.ascii	"_temp_4018\0"
	.align
_Label_4159:
	.byte	'?'
	.ascii	"_temp_4017\0"
	.align
_Label_4160:
	.byte	'?'
	.ascii	"_temp_4016\0"
	.align
_Label_4161:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4162:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4163:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4164:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4165:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4166:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4167:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4168:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4169:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4170:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4171:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4172:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4173
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4173:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4174
	.word	_sourceFileName
	.word	396		! line number
	.word	148		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4174:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	31,r1
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
	mov	3107,r13		! source line 3107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4175 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_4175  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	3108,r13		! source line 3108
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3110,r13		! source line 3110
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0SE",r10
!   _temp_4177 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-112]
!   Send message Init
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0AS",r10
!   _temp_4178 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_4180 = &_temp_4179
	add	r14,-104,r1
	store	r1,[r14+-88]
!   _temp_4180 = _temp_4180 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Next value...
	mov	10,r1
	store	r1,[r14+-84]
_Label_4182:
!   Data Move: *_temp_4180 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-88],r2
	storeb	r1,[r2]
!   _temp_4180 = _temp_4180 + 1
	load	[r14+-88],r1
	add	r1,1,r1
	store	r1,[r14+-88]
!   _temp_4181 = _temp_4181 + -1
	load	[r14+-84],r1
	add	r1,-1,r1
	store	r1,[r14+-84]
!   if intNotZero (_temp_4181) then goto _Label_4182
	load	[r14+-84],r1
	cmp	r1,r0
	bne	_Label_4182
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-104]
!   _temp_4183 = &_temp_4179
	add	r14,-104,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	load	[r14+-108],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4459
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4459:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4178 = *_temp_4183  (sizeInBytes=16)
	load	[r14+-80],r5
	load	[r14+-108],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3116,r13		! source line 3116
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3117,r13		! source line 3117
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! ASSIGNMENT STATEMENT...
	mov	3118,r13		! source line 3118
	mov	"\0\0AS",r10
!   _temp_4185 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-72]
!   NEW ARRAY Constructor...
!   _temp_4187 = &_temp_4186
	add	r14,-68,r1
	store	r1,[r14+-52]
!   _temp_4187 = _temp_4187 + 4
	load	[r14+-52],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Next value...
	mov	10,r1
	store	r1,[r14+-48]
_Label_4189:
!   Data Move: *_temp_4187 = 97  (sizeInBytes=1)
	mov	97,r1
	load	[r14+-52],r2
	storeb	r1,[r2]
!   _temp_4187 = _temp_4187 + 1
	load	[r14+-52],r1
	add	r1,1,r1
	store	r1,[r14+-52]
!   _temp_4188 = _temp_4188 + -1
	load	[r14+-48],r1
	add	r1,-1,r1
	store	r1,[r14+-48]
!   if intNotZero (_temp_4188) then goto _Label_4189
	load	[r14+-48],r1
	cmp	r1,r0
	bne	_Label_4189
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-68]
!   _temp_4190 = &_temp_4186
	add	r14,-68,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	load	[r14+-72],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4460
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4460:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4185 = *_temp_4190  (sizeInBytes=16)
	load	[r14+-44],r5
	load	[r14+-72],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3119,r13		! source line 3119
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0SE",r10
!   _temp_4192 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0SE",r10
!   _temp_4194 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0AS",r10
	mov	3126,r13		! source line 3126
	mov	"\0\0SE",r10
!   _temp_4195 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=serialHandlerThread  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0SE",r10
!   _temp_4196 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   if intIsZero (serialHandlerThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4196  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+8],r1
	load	[r1+144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0AS",r10
!   if intIsZero (serialHandlerThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4197 = serialHandlerThread + 76
	load	[r14+8],r1
	load	[r1+144],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_4197 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3129,r13		! source line 3129
	mov	"\0\0SE",r10
!   _temp_4198 = _function_186_SerialHandlerFunction
	set	_function_186_SerialHandlerFunction,r1
	store	r1,[r14+-12]
!   if intIsZero (serialHandlerThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4198  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+8],r1
	load	[r1+144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0RE",r10
	add	r15,128,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_4199
	.word	4		! total size of parameters
	.word	124		! frame size = 124
	.word	_Label_4200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4201
	.word	-12
	.word	4
	.word	_Label_4202
	.word	-16
	.word	4
	.word	_Label_4203
	.word	-20
	.word	4
	.word	_Label_4204
	.word	-24
	.word	4
	.word	_Label_4205
	.word	-28
	.word	4
	.word	_Label_4206
	.word	-32
	.word	4
	.word	_Label_4207
	.word	-36
	.word	4
	.word	_Label_4208
	.word	-40
	.word	4
	.word	_Label_4209
	.word	-44
	.word	4
	.word	_Label_4210
	.word	-48
	.word	4
	.word	_Label_4211
	.word	-52
	.word	4
	.word	_Label_4212
	.word	-68
	.word	16
	.word	_Label_4213
	.word	-72
	.word	4
	.word	_Label_4214
	.word	-76
	.word	4
	.word	_Label_4215
	.word	-80
	.word	4
	.word	_Label_4216
	.word	-84
	.word	4
	.word	_Label_4217
	.word	-88
	.word	4
	.word	_Label_4218
	.word	-104
	.word	16
	.word	_Label_4219
	.word	-108
	.word	4
	.word	_Label_4220
	.word	-112
	.word	4
	.word	_Label_4221
	.word	-116
	.word	4
	.word	_Label_4222
	.word	-120
	.word	4
	.word	0
_Label_4199:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4200:
	.ascii	"Pself\0"
	.align
_Label_4201:
	.byte	'?'
	.ascii	"_temp_4198\0"
	.align
_Label_4202:
	.byte	'?'
	.ascii	"_temp_4197\0"
	.align
_Label_4203:
	.byte	'?'
	.ascii	"_temp_4196\0"
	.align
_Label_4204:
	.byte	'?'
	.ascii	"_temp_4195\0"
	.align
_Label_4205:
	.byte	'?'
	.ascii	"_temp_4194\0"
	.align
_Label_4206:
	.byte	'?'
	.ascii	"_temp_4193\0"
	.align
_Label_4207:
	.byte	'?'
	.ascii	"_temp_4192\0"
	.align
_Label_4208:
	.byte	'?'
	.ascii	"_temp_4191\0"
	.align
_Label_4209:
	.byte	'?'
	.ascii	"_temp_4190\0"
	.align
_Label_4210:
	.byte	'?'
	.ascii	"_temp_4188\0"
	.align
_Label_4211:
	.byte	'?'
	.ascii	"_temp_4187\0"
	.align
_Label_4212:
	.byte	'?'
	.ascii	"_temp_4186\0"
	.align
_Label_4213:
	.byte	'?'
	.ascii	"_temp_4185\0"
	.align
_Label_4214:
	.byte	'?'
	.ascii	"_temp_4184\0"
	.align
_Label_4215:
	.byte	'?'
	.ascii	"_temp_4183\0"
	.align
_Label_4216:
	.byte	'?'
	.ascii	"_temp_4181\0"
	.align
_Label_4217:
	.byte	'?'
	.ascii	"_temp_4180\0"
	.align
_Label_4218:
	.byte	'?'
	.ascii	"_temp_4179\0"
	.align
_Label_4219:
	.byte	'?'
	.ascii	"_temp_4178\0"
	.align
_Label_4220:
	.byte	'?'
	.ascii	"_temp_4177\0"
	.align
_Label_4221:
	.byte	'?'
	.ascii	"_temp_4176\0"
	.align
_Label_4222:
	.byte	'?'
	.ascii	"_temp_4175\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	7,r1
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
	mov	3133,r13		! source line 3133
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0SE",r10
!   _temp_4223 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-32]
!   Send message Down
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0SE",r10
!   _temp_4224 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Send message Lock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3136,r13		! source line 3136
	mov	"\0\0AS",r10
!   _temp_4225 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Move address of _temp_4225 [putBufferNextIn ] into _temp_4226
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_4226 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0SE",r10
!   _temp_4227 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
!   _temp_4228 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_4229
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4231
	.word	12
	.word	1
	.word	_Label_4232
	.word	-12
	.word	4
	.word	_Label_4233
	.word	-16
	.word	4
	.word	_Label_4234
	.word	-20
	.word	4
	.word	_Label_4235
	.word	-24
	.word	4
	.word	_Label_4236
	.word	-28
	.word	4
	.word	_Label_4237
	.word	-32
	.word	4
	.word	0
_Label_4229:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4230:
	.ascii	"Pself\0"
	.align
_Label_4231:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4232:
	.byte	'?'
	.ascii	"_temp_4228\0"
	.align
_Label_4233:
	.byte	'?'
	.ascii	"_temp_4227\0"
	.align
_Label_4234:
	.byte	'?'
	.ascii	"_temp_4226\0"
	.align
_Label_4235:
	.byte	'?'
	.ascii	"_temp_4225\0"
	.align
_Label_4236:
	.byte	'?'
	.ascii	"_temp_4224\0"
	.align
_Label_4237:
	.byte	'?'
	.ascii	"_temp_4223\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	10,r1
_Label_4462:
	push	r0
	sub	r1,1,r1
	bne	_Label_4462
	mov	3142,r13		! source line 3142
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0SE",r10
!   _temp_4238 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3146,r13		! source line 3146
	mov	"\0\0WH",r10
_Label_4239:
!   if intIsZero (getBufferSize) then goto _Label_4240
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4240
	jmp	_Label_4241
_Label_4240:
	mov	3146,r13		! source line 3146
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3147,r13		! source line 3147
	mov	"\0\0SE",r10
!   _temp_4242 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4243 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4242  sizeInBytes=4
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
	jmp	_Label_4239
_Label_4241:
! ASSIGNMENT STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0AS",r10
!   _temp_4244 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4244 [getBufferNextOut ] into _temp_4245
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: c = *_temp_4245  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3151,r13		! source line 3151
	mov	"\0\0AS",r10
!   _temp_4246 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4246 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! SEND STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0SE",r10
!   _temp_4247 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3153,r13		! source line 3153
	mov	"\0\0RE",r10
!   ReturnResult: c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_4248
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4249
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4250
	.word	-16
	.word	4
	.word	_Label_4251
	.word	-20
	.word	4
	.word	_Label_4252
	.word	-24
	.word	4
	.word	_Label_4253
	.word	-28
	.word	4
	.word	_Label_4254
	.word	-32
	.word	4
	.word	_Label_4255
	.word	-36
	.word	4
	.word	_Label_4256
	.word	-40
	.word	4
	.word	_Label_4257
	.word	-9
	.word	1
	.word	0
_Label_4248:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4249:
	.ascii	"Pself\0"
	.align
_Label_4250:
	.byte	'?'
	.ascii	"_temp_4247\0"
	.align
_Label_4251:
	.byte	'?'
	.ascii	"_temp_4246\0"
	.align
_Label_4252:
	.byte	'?'
	.ascii	"_temp_4245\0"
	.align
_Label_4253:
	.byte	'?'
	.ascii	"_temp_4244\0"
	.align
_Label_4254:
	.byte	'?'
	.ascii	"_temp_4243\0"
	.align
_Label_4255:
	.byte	'?'
	.ascii	"_temp_4242\0"
	.align
_Label_4256:
	.byte	'?'
	.ascii	"_temp_4238\0"
	.align
_Label_4257:
	.byte	'C'
	.ascii	"c\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	22,r1
_Label_4463:
	push	r0
	sub	r1,1,r1
	bne	_Label_4463
	mov	3156,r13		! source line 3156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3160,r13		! source line 3160
	mov	"\0\0WH",r10
_Label_4258:
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_4260 else goto _Label_4259
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_4259
	jmp	_Label_4260
_Label_4259:
	mov	3160,r13		! source line 3160
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_4258
_Label_4260:
! WHILE STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0WH",r10
_Label_4261:
!	jmp	_Label_4262
_Label_4262:
	mov	3162,r13		! source line 3162
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0SE",r10
!   _temp_4264 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-84]
!   Send message Down
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3164,r13		! source line 3164
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: status = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0IF",r10
!   _temp_4267 = status AND 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-80]
!   if _temp_4267 <= 0 then goto _Label_4266		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4266
!	jmp	_Label_4265
_Label_4265:
! THEN...
	mov	3166,r13		! source line 3166
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3166,r13		! source line 3166
	mov	"\0\0AS",r10
!   c = intToChar (status)
	load	[r14+-88],r1
	storeb	r1,[r14+-9]
! IF STATEMENT...
	mov	3167,r13		! source line 3167
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4269		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4269
!	jmp	_Label_4268
_Label_4268:
! THEN...
	mov	3168,r13		! source line 3168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4270 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4270  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3169,r13		! source line 3169
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4271 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4271  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3170,r13		! source line 3170
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4272
_Label_4269:
! ELSE...
	mov	3172,r13		! source line 3172
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0SE",r10
!   _temp_4273 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Send message Lock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3173,r13		! source line 3173
	mov	"\0\0AS",r10
!   _temp_4274 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Move address of _temp_4274 [getBufferNextIn ] into _temp_4275
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: *_temp_4275 = c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3174,r13		! source line 3174
	mov	"\0\0AS",r10
!   _temp_4276 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   getBufferNextIn = _temp_4276 rem 10		(int)
	load	[r14+-56],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3175,r13		! source line 3175
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3176,r13		! source line 3176
	mov	"\0\0SE",r10
!   _temp_4277 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   _temp_4278 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_4277  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3177,r13		! source line 3177
	mov	"\0\0SE",r10
!   _temp_4279 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Send message Unlock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4272:
! SEND STATEMENT...
	mov	3180,r13		! source line 3180
	mov	"\0\0SE",r10
!   _temp_4280 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3181,r13		! source line 3181
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4282		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4282
!	jmp	_Label_4281
_Label_4281:
! THEN...
	mov	3182,r13		! source line 3182
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3182,r13		! source line 3182
	mov	"\0\0AS",r10
!   _temp_4283 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4283 [putBufferNextOut ] into _temp_4284
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: c = *_temp_4284  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3183,r13		! source line 3183
	mov	"\0\0AS",r10
!   _temp_4285 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   putBufferNextOut = _temp_4285 rem 10		(int)
	load	[r14+-28],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3184,r13		! source line 3184
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3185,r13		! source line 3185
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4286 = charToInt (c)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: *serial_data_word_address = _temp_4286  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3186,r13		! source line 3186
	mov	"\0\0SE",r10
!   _temp_4287 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4282:
! SEND STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0SE",r10
!   _temp_4288 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4266:
! END WHILE...
	jmp	_Label_4261
_Label_4263:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4289
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_4290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4291
	.word	-16
	.word	4
	.word	_Label_4292
	.word	-20
	.word	4
	.word	_Label_4293
	.word	-24
	.word	4
	.word	_Label_4294
	.word	-28
	.word	4
	.word	_Label_4295
	.word	-32
	.word	4
	.word	_Label_4296
	.word	-36
	.word	4
	.word	_Label_4297
	.word	-40
	.word	4
	.word	_Label_4298
	.word	-44
	.word	4
	.word	_Label_4299
	.word	-48
	.word	4
	.word	_Label_4300
	.word	-52
	.word	4
	.word	_Label_4301
	.word	-56
	.word	4
	.word	_Label_4302
	.word	-60
	.word	4
	.word	_Label_4303
	.word	-64
	.word	4
	.word	_Label_4304
	.word	-68
	.word	4
	.word	_Label_4305
	.word	-72
	.word	4
	.word	_Label_4306
	.word	-76
	.word	4
	.word	_Label_4307
	.word	-80
	.word	4
	.word	_Label_4308
	.word	-84
	.word	4
	.word	_Label_4309
	.word	-9
	.word	1
	.word	_Label_4310
	.word	-88
	.word	4
	.word	0
_Label_4289:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4290:
	.ascii	"Pself\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4288\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4287\0"
	.align
_Label_4293:
	.byte	'?'
	.ascii	"_temp_4286\0"
	.align
_Label_4294:
	.byte	'?'
	.ascii	"_temp_4285\0"
	.align
_Label_4295:
	.byte	'?'
	.ascii	"_temp_4284\0"
	.align
_Label_4296:
	.byte	'?'
	.ascii	"_temp_4283\0"
	.align
_Label_4297:
	.byte	'?'
	.ascii	"_temp_4280\0"
	.align
_Label_4298:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4299:
	.byte	'?'
	.ascii	"_temp_4278\0"
	.align
_Label_4300:
	.byte	'?'
	.ascii	"_temp_4277\0"
	.align
_Label_4301:
	.byte	'?'
	.ascii	"_temp_4276\0"
	.align
_Label_4302:
	.byte	'?'
	.ascii	"_temp_4275\0"
	.align
_Label_4303:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4304:
	.byte	'?'
	.ascii	"_temp_4273\0"
	.align
_Label_4305:
	.byte	'?'
	.ascii	"_temp_4271\0"
	.align
_Label_4306:
	.byte	'?'
	.ascii	"_temp_4270\0"
	.align
_Label_4307:
	.byte	'?'
	.ascii	"_temp_4267\0"
	.align
_Label_4308:
	.byte	'?'
	.ascii	"_temp_4264\0"
	.align
_Label_4309:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_4310:
	.byte	'I'
	.ascii	"status\0"
	.align
