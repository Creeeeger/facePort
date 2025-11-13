.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$ContextType;,
        Landroid/renderscript/RenderScript$MessageThread;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATE_FLAG_LOW_LATENCY:I = 0x2

.field public static final whitelist CREATE_FLAG_LOW_POWER:I = 0x4

.field public static final whitelist CREATE_FLAG_NONE:I = 0x0

.field public static final greylist-max-o CREATE_FLAG_WAIT_FOR_ATTACH:I = 0x8

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o LOG_ENABLED:Z = false

.field static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final greylist-max-o TRACE_TAG:J = 0x8000L

.field private static greylist-max-o mCachePath:Ljava/lang/String; = null

.field private static greylist-max-o mProcessContextList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/renderscript/RenderScript;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static greylist-max-o registerNativeFree:Ljava/lang/reflect/Method; = null

.field static greylist-max-o sInitialized:Z = false

.field static final greylist-max-o sMinorVersion:J = 0x1L

.field static greylist sPointerSize:I

.field static greylist-max-o sRuntime:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mApplicationContext:Landroid/content/Context;

.field greylist-max-o mContext:J

.field private greylist-max-o mContextFlags:I

.field private greylist-max-o mContextSdkVersion:I

.field greylist-max-o mContextType:Landroid/renderscript/RenderScript$ContextType;

.field private greylist-max-o mDestroyed:Z

.field volatile greylist-max-o mElement_ALLOCATION:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_A_8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_BOOLEAN:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_CHAR_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_DOUBLE_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ELEMENT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_F64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FLOAT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_FONT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_HALF_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_I8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_INT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_LONG_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_MESH:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_4444:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_5551:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGBA_8888:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGB_565:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_RGB_888:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SAMPLER:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SCRIPT:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_SHORT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_TYPE:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U16:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U32:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U64:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_U8:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UCHAR_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_UINT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_ULONG_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_2:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_3:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_USHORT_4:Landroid/renderscript/Element;

.field volatile greylist-max-o mElement_YUV:Landroid/renderscript/Element;

.field greylist-max-o mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field private greylist-max-o mIsProcessContext:Z

.field greylist mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field greylist-max-o mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field greylist-max-o mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field greylist-max-o mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field greylist-max-o mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field greylist-max-o mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field volatile greylist-max-o mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field volatile greylist-max-o mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    const-string v0, "RenderScript_jni"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    const-string v2, "config.disable_renderscript"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "dalvik.system.VMRuntime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRuntime"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const-string/jumbo v4, "registerNativeAllocation"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    const-string/jumbo v4, "registerNativeFree"

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    const-string/jumbo v1, "rs_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    sput-boolean v5, Landroid/renderscript/RenderScript;->sInitialized:Z

    invoke-static {}, Landroid/renderscript/RenderScript;->rsnSystemGetPointerSize()I

    move-result v1

    sput v1, Landroid/renderscript/RenderScript;->sPointerSize:I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading RS jni library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading GC methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    iput v0, p0, Landroid/renderscript/RenderScript;->mContextFlags:I

    iput v0, p0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    iput-boolean v0, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method static native greylist-max-o _nInit()V
.end method

.method public static whitelist create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1

    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static greylist create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .locals 2

    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method private static greylist create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 4

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    iget-object v3, v2, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-ne v3, p2, :cond_1

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextFlags:I

    if-ne v3, p3, :cond_1

    iget v3, v2, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    if-ne v3, p1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    sget-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;
    .locals 1

    invoke-static {p0, p3, p1, p2}, Landroid/renderscript/RenderScript;->internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getCachePath()Ljava/lang/String;
    .locals 5

    const-class v0, Landroid/renderscript/RenderScript;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "com.android.renderscript.cache"

    sget-object v2, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    const-string v4, "com.android.renderscript.cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "RenderScript code cache directory uninitialized."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    sget-object v1, Landroid/renderscript/RenderScript;->mCachePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static greylist getMinorID()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static whitelist getMinorVersion()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private greylist-max-o helpDestroy()V
    .locals 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/renderscript/RenderScript;->mDestroyed:Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(J)V

    iget-object v1, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    iget-object v1, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->interrupt()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-object v3, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v3, "RenderScript_jni"

    const-string v4, "Interrupted during wait for MessageThread to join"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static greylist-max-o internalCreate(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;I)Landroid/renderscript/RenderScript;
    .locals 9

    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "RenderScript_jni"

    const-string v1, "RenderScript.create() called when disabled; someone is likely to crash"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit8 v0, p3, -0xf

    if-nez v0, :cond_2

    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()J

    move-result-wide v7

    iget v6, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    move-object v1, v0

    move-wide v2, v7

    move v4, p3

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nContextCreate(JIII)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/RenderScript;->mContext:J

    iput-object p2, v0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    iput p3, v0, Landroid/renderscript/RenderScript;->mContextFlags:I

    iput p1, v0, Landroid/renderscript/RenderScript;->mContextSdkVersion:I

    iget-wide v1, v0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nContextSetCacheDir(Ljava/lang/String;)V

    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iget-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    return-object v0

    :cond_1
    new-instance v1, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v1, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid flags passed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist releaseAllContexts()V
    .locals 4

    sget-object v0, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/renderscript/RenderScript;->mProcessContextList:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/RenderScript;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->destroy()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static native greylist-max-o rsnSystemGetPointerSize()I
.end method


# virtual methods
.method public whitelist contextDump()V
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    return-void
.end method

.method public whitelist destroy()V
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/RenderScript;->mIsProcessContext:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Landroid/renderscript/RenderScript;->helpDestroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public whitelist finish()V
    .locals 0

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    return-void
.end method

.method public final whitelist getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public whitelist getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method greylist-max-o isAlive()Z
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized greylist-max-o nAllocationAdapterCreate(JJ)J
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterCreate(JJJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationAdapterOffset(JIIIIIIIII)V
    .locals 16

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v1 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationAdapterOffset(JJIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCreateTyped(JIIJ)J
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(JJIIJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 15

    move-object v14, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v14, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIIIIJIIII)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 17

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData3D(JIIIIIIIJIIII)V
    .locals 19

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIIJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v16, v14

    move/from16 v14, p11

    move/from16 v15, v16

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationElementData(JIIIII[BI)V
    .locals 14

    move-object v13, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementData(JJIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationElementRead(JIIIII[BI)V
    .locals 14

    move-object v13, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnAllocationElementRead(JJIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationGenerateMipmaps(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetByteBuffer(J[JIII)Ljava/nio/ByteBuffer;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetSurface(J)Landroid/view/Surface;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(JJ)Landroid/view/Surface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationGetType(J)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationIoReceive(J)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationIoSend(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    iget v6, p4, Landroid/renderscript/Element$DataType;->mID:I

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnAllocationRead(JJLjava/lang/Object;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 15

    move-object v14, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v14, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p8

    iget v11, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 17

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p11

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    .locals 18

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v0, p12

    iget v14, v0, Landroid/renderscript/Element$DataType;->mID:I

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v16, v14

    move/from16 v14, p11

    move/from16 v15, v16

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-virtual/range {v1 .. v17}, Landroid/renderscript/RenderScript;->rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nAllocationResize1D(JI)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationSetSurface(JLandroid/view/Surface;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(JJLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationSetupBufferQueue(JI)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationSetupBufferQueue(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationShareBufferQueue(JJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnAllocationShareBufferQueue(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAllocationSyncAll(JI)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nAssignName(J[B)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAssignName(JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nClosureCreate(JJ[J[J[I[J[J)J
    .locals 14

    move-object v13, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnClosureCreate(JJJ[J[J[I[J[J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Failed creating closure."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nClosureSetArg(JIJI)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnClosureSetArg(JJIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nClosureSetGlobal(JJJI)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnClosureSetGlobal(JJJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextBindProgramFragment(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramRaster(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramStore(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindProgramVertex(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindRootScript(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextBindSampler(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextCreate(JIII)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/renderscript/RenderScript;->rsnContextCreate(JIII)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextCreateGL(JIIIIIIIIIIIIFI)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p16}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method native greylist-max-o nContextDeinitToClient(J)V
.end method

.method declared-synchronized greylist-max-o nContextDestroy()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/RenderScript;->rsnContextDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextDump(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextFinish()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextFinish(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native greylist-max-o nContextGetErrorMessage(J)Ljava/lang/String;
.end method

.method native greylist-max-o nContextGetUserMessage(J[I)I
.end method

.method native greylist-max-o nContextInitToClient(J)V
.end method

.method declared-synchronized greylist-max-o nContextPause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextPause(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native greylist-max-o nContextPeekMessage(J[I)I
.end method

.method declared-synchronized greylist-max-o nContextResume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->rsnContextResume(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nContextSendMessage(I[I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(JI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetCacheDir(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetCacheDir(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetPriority(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetSurface(IILandroid/view/Surface;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(JIILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native greylist-max-o nDeviceCreate()J
.end method

.method native greylist-max-o nDeviceDestroy(J)V
.end method

.method native greylist-max-o nDeviceSetConfig(JII)V
.end method

.method declared-synchronized greylist-max-o nElementCreate(JIZI)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnElementCreate(JJIZI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nElementCreate2([J[Ljava/lang/String;[I)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate2(J[J[Ljava/lang/String;[I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nElementGetNativeData(J[I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nElementGetSubElements(J[J[Ljava/lang/String;[I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromAssetStream(J)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DCreateFromFile(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(JLjava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DGetEntryByIndex(JI)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(JJI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFileA3DGetNumIndexEntries(J)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(JJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nFontCreateFromFile(Ljava/lang/String;FI)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(JLjava/lang/String;FI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nGetName(J)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnGetName(JJ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nInvokeClosureCreate(J[B[J[J[I)J
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnInvokeClosureCreate(JJ[B[J[J[I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Failed creating closure."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshCreate([J[J[I)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshCreate(J[J[J[I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetIndexCount(J)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(JJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetIndices(J[J[II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(JJ[J[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetVertexBufferCount(J)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(JJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nMeshGetVertices(J[JI)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(JJ[JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o nObjDestroy(J)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnObjDestroy(JJ)V

    :cond_0
    return-void
.end method

.method declared-synchronized greylist-max-o nProgramBindConstants(JIJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramBindSampler(JIJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramBindTexture(JIJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramRasterCreate(ZI)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(JZI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nProgramStoreCreate(ZZZZZZIII)J
    .locals 14

    move-object v13, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v13, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v1 .. v12}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(JZZZZZZIII)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nSamplerCreate(IIIIIF)J
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(JIIIIIF)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptBindAllocation(JJI)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(JJJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptFieldIDCreate(JI)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(JJI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptForEach(JI[JJ[B[I)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v12, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEach(JJI[JJ[B[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptGetVarD(JI)D
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(JJI)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGetVarF(JI)F
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(JJI)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGetVarI(JI)I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(JJI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGetVarJ(JI)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(JJI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGetVarV(JI[B)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Failed creating script group."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroup2Execute(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroup2Execute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupCreate([J[J[J[J[J)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(J[J[J[J[J[J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupExecute(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupSetInput(JJJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptGroupSetOutput(JJJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V
    .locals 19

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-virtual/range {v1 .. v18}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V
    .locals 29

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move/from16 v22, p19

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V
    .locals 29

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    invoke-virtual/range {v1 .. v28}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V
    .locals 27

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p17

    move-wide/from16 v21, p18

    move/from16 v23, p20

    move/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V
    .locals 33

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v15, Landroid/renderscript/RenderScript;->mContext:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move-wide/from16 v21, p18

    move-wide/from16 v23, p20

    move-wide/from16 v25, p22

    move-wide/from16 v27, p24

    move/from16 v29, p26

    move/from16 v30, p27

    move/from16 v31, p28

    move/from16 v32, p29

    invoke-virtual/range {v1 .. v32}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptIntrinsicCreate(IJ)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(JIJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptInvoke(JI)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptInvokeIDCreate(JI)J
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptInvokeIDCreate(JJI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptInvokeV(JI[B)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptKernelIDCreate(JII)J
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(JJII)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptReduce(JI[JJ[I)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptReduce(JJI[JJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nScriptSetTimeZone(J[B)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(JJ[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarD(JID)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(JJID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarF(JIF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(JJIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarI(JII)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarJ(JIJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarObj(JIJ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(JJIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarV(JI[B)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(JJI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o nScriptSetVarVE(JI[BJ[I)V
    .locals 12

    move-object v11, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v11, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(JJI[BJ[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nTypeCreate(JIIIZZI)J
    .locals 13

    move-object v12, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v2, v12, Landroid/renderscript/RenderScript;->mContext:J

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Landroid/renderscript/RenderScript;->rsnTypeCreate(JJIIIZZI)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o nTypeGetNativeData(J[J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-wide v1, p0, Landroid/renderscript/RenderScript;->mContext:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(JJ[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native greylist-max-o rsnAllocationAdapterCreate(JJJ)J
.end method

.method native greylist-max-o rsnAllocationAdapterOffset(JJIIIIIIIII)V
.end method

.method native greylist-max-o rsnAllocationCopyFromBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationCopyToBitmap(JJLandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationCreateBitmapBackedAllocation(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationCreateTyped(JJIIJ)J
.end method

.method native greylist-max-o rsnAllocationCubeCreateFromBitmap(JJILandroid/graphics/Bitmap;I)J
.end method

.method native greylist-max-o rsnAllocationData1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIIIIJIIII)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationData2D(JJIIIILandroid/graphics/Bitmap;)V
.end method

.method native greylist-max-o rsnAllocationData3D(JJIIIIIIIJIIII)V
.end method

.method native greylist-max-o rsnAllocationData3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationElementData(JJIIIII[BI)V
.end method

.method native greylist-max-o rsnAllocationElementRead(JJIIIII[BI)V
.end method

.method native greylist-max-o rsnAllocationGenerateMipmaps(JJ)V
.end method

.method native greylist-max-o rsnAllocationGetByteBuffer(JJ[JIII)Ljava/nio/ByteBuffer;
.end method

.method native greylist-max-o rsnAllocationGetSurface(JJ)Landroid/view/Surface;
.end method

.method native greylist-max-o rsnAllocationGetType(JJ)J
.end method

.method native greylist-max-o rsnAllocationIoReceive(JJ)J
.end method

.method native greylist-max-o rsnAllocationIoSend(JJ)V
.end method

.method native greylist-max-o rsnAllocationRead(JJLjava/lang/Object;IIZ)V
.end method

.method native greylist-max-o rsnAllocationRead1D(JJIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationRead2D(JJIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationRead3D(JJIIIIIIILjava/lang/Object;IIIZ)V
.end method

.method native greylist-max-o rsnAllocationResize1D(JJI)V
.end method

.method native greylist-max-o rsnAllocationSetSurface(JJLandroid/view/Surface;)V
.end method

.method native greylist-max-o rsnAllocationSetupBufferQueue(JJI)V
.end method

.method native greylist-max-o rsnAllocationShareBufferQueue(JJJ)V
.end method

.method native greylist-max-o rsnAllocationSyncAll(JJI)V
.end method

.method native greylist-max-o rsnAssignName(JJ[B)V
.end method

.method native greylist-max-o rsnClosureCreate(JJJ[J[J[I[J[J)J
.end method

.method native greylist-max-o rsnClosureSetArg(JJIJI)V
.end method

.method native greylist-max-o rsnClosureSetGlobal(JJJJI)V
.end method

.method native greylist-max-o rsnContextBindProgramFragment(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramRaster(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramStore(JJ)V
.end method

.method native greylist-max-o rsnContextBindProgramVertex(JJ)V
.end method

.method native greylist-max-o rsnContextBindRootScript(JJ)V
.end method

.method native greylist-max-o rsnContextBindSampler(JII)V
.end method

.method native greylist-max-o rsnContextCreate(JIII)J
.end method

.method native greylist-max-o rsnContextCreateGL(JIIIIIIIIIIIIFI)J
.end method

.method native greylist-max-o rsnContextDestroy(J)V
.end method

.method native greylist-max-o rsnContextDump(JI)V
.end method

.method native greylist-max-o rsnContextFinish(J)V
.end method

.method native greylist-max-o rsnContextPause(J)V
.end method

.method native greylist-max-o rsnContextResume(J)V
.end method

.method native greylist-max-o rsnContextSendMessage(JI[I)V
.end method

.method native greylist-max-o rsnContextSetCacheDir(JLjava/lang/String;)V
.end method

.method native greylist-max-o rsnContextSetPriority(JI)V
.end method

.method native greylist-max-o rsnContextSetSurface(JIILandroid/view/Surface;)V
.end method

.method native greylist-max-o rsnContextSetSurfaceTexture(JIILandroid/graphics/SurfaceTexture;)V
.end method

.method native greylist-max-o rsnElementCreate(JJIZI)J
.end method

.method native greylist-max-o rsnElementCreate2(J[J[Ljava/lang/String;[I)J
.end method

.method native greylist-max-o rsnElementGetNativeData(JJ[I)V
.end method

.method native greylist-max-o rsnElementGetSubElements(JJ[J[Ljava/lang/String;[I)V
.end method

.method native greylist-max-o rsnFileA3DCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method native greylist-max-o rsnFileA3DCreateFromAssetStream(JJ)J
.end method

.method native greylist-max-o rsnFileA3DCreateFromFile(JLjava/lang/String;)J
.end method

.method native greylist-max-o rsnFileA3DGetEntryByIndex(JJI)J
.end method

.method native greylist-max-o rsnFileA3DGetIndexEntries(JJI[I[Ljava/lang/String;)V
.end method

.method native greylist-max-o rsnFileA3DGetNumIndexEntries(JJ)I
.end method

.method native greylist-max-o rsnFontCreateFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;FI)J
.end method

.method native greylist-max-o rsnFontCreateFromAssetStream(JLjava/lang/String;FIJ)J
.end method

.method native greylist-max-o rsnFontCreateFromFile(JLjava/lang/String;FI)J
.end method

.method native greylist-max-o rsnGetName(JJ)Ljava/lang/String;
.end method

.method native greylist-max-o rsnInvokeClosureCreate(JJ[B[J[J[I)J
.end method

.method native greylist-max-o rsnMeshCreate(J[J[J[I)J
.end method

.method native greylist-max-o rsnMeshGetIndexCount(JJ)I
.end method

.method native greylist-max-o rsnMeshGetIndices(JJ[J[II)V
.end method

.method native greylist-max-o rsnMeshGetVertexBufferCount(JJ)I
.end method

.method native greylist-max-o rsnMeshGetVertices(JJ[JI)V
.end method

.method native greylist-max-o rsnObjDestroy(JJ)V
.end method

.method native greylist-max-o rsnProgramBindConstants(JJIJ)V
.end method

.method native greylist-max-o rsnProgramBindSampler(JJIJ)V
.end method

.method native greylist-max-o rsnProgramBindTexture(JJIJ)V
.end method

.method native greylist-max-o rsnProgramFragmentCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnProgramRasterCreate(JZI)J
.end method

.method native greylist-max-o rsnProgramStoreCreate(JZZZZZZIII)J
.end method

.method native greylist-max-o rsnProgramVertexCreate(JLjava/lang/String;[Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnSamplerCreate(JIIIIIF)J
.end method

.method native greylist-max-o rsnScriptBindAllocation(JJJI)V
.end method

.method native greylist-max-o rsnScriptCCreate(JLjava/lang/String;Ljava/lang/String;[BI)J
.end method

.method native greylist-max-o rsnScriptFieldIDCreate(JJI)J
.end method

.method native greylist-max-o rsnScriptForEach(JJI[JJ[B[I)V
.end method

.method native greylist-max-o rsnScriptGetVarD(JJI)D
.end method

.method native greylist-max-o rsnScriptGetVarF(JJI)F
.end method

.method native greylist-max-o rsnScriptGetVarI(JJI)I
.end method

.method native greylist-max-o rsnScriptGetVarJ(JJI)J
.end method

.method native greylist-max-o rsnScriptGetVarV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptGroup2Create(JLjava/lang/String;Ljava/lang/String;[J)J
.end method

.method native greylist-max-o rsnScriptGroup2Execute(JJ)V
.end method

.method native greylist-max-o rsnScriptGroupCreate(J[J[J[J[J[J)J
.end method

.method native greylist-max-o rsnScriptGroupExecute(JJ)V
.end method

.method native greylist-max-o rsnScriptGroupSetInput(JJJJ)V
.end method

.method native greylist-max-o rsnScriptGroupSetOutput(JJJJ)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_BNNM(JJIIIJIJIJII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Complex(JJIIIIIIIIIFFJJFFJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Double(JJIIIIIIIIIDJJDJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Single(JJIIIIIIIIIFJJFJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicBLAS_Z(JJIIIIIIIIIDDJJDDJIIII)V
.end method

.method native greylist-max-o rsnScriptIntrinsicCreate(JIJ)J
.end method

.method native greylist-max-o rsnScriptInvoke(JJI)V
.end method

.method native greylist-max-o rsnScriptInvokeIDCreate(JJI)J
.end method

.method native greylist-max-o rsnScriptInvokeV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptKernelIDCreate(JJII)J
.end method

.method native greylist-max-o rsnScriptReduce(JJI[JJ[I)V
.end method

.method native greylist-max-o rsnScriptSetTimeZone(JJ[B)V
.end method

.method native greylist-max-o rsnScriptSetVarD(JJID)V
.end method

.method native greylist-max-o rsnScriptSetVarF(JJIF)V
.end method

.method native greylist-max-o rsnScriptSetVarI(JJII)V
.end method

.method native greylist-max-o rsnScriptSetVarJ(JJIJ)V
.end method

.method native greylist-max-o rsnScriptSetVarObj(JJIJ)V
.end method

.method native greylist-max-o rsnScriptSetVarV(JJI[B)V
.end method

.method native greylist-max-o rsnScriptSetVarVE(JJI[BJ[I)V
.end method

.method native greylist-max-o rsnTypeCreate(JJIIIZZI)J
.end method

.method native greylist-max-o rsnTypeGetNativeData(JJ[J)V
.end method

.method greylist-max-o safeID(Landroid/renderscript/BaseObj;)J
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist sendMessage(I[I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    return-void
.end method

.method public whitelist setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-void
.end method

.method public whitelist setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method public whitelist setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    return-void
.end method

.method greylist validate()V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/RenderScript;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o validateObject(Landroid/renderscript/BaseObj;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Attempting to use an object across contexts."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
