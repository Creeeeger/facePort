.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final blacklist ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final blacklist LOGGING_DEBUG:Z

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static blacklist PARALLEL_LOAD:Z = false

.field private static blacklist PARALLEL_LOAD_FEATURE:Z = false

.field private static blacklist PARALLEL_LOAD_PROPERTY:Z = false

.field private static final blacklist PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final blacklist PRELOAD_RESOURCES:Z = true

.field private static final blacklist PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static greylist mResources:Landroid/content/res/Resources;

.field private static blacklist sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sPreloadComplete:Z

.field private static blacklist startSystemServer:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 100
    const-string v0, "Zygote"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    .line 138
    nop

    .line 139
    const-string v0, "persist.zit.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_FEATURE:Z

    .line 140
    nop

    .line 141
    const-string v0, "persist.zit.try"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_PROPERTY:Z

    .line 142
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_FEATURE:Z

    and-int/2addr v0, v1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD:Z

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    return-void
.end method

.method private static blacklist addUcmKeyStoreProvider()V
    .locals 2

    .line 254
    const-string v0, "persist.security.ucmcrypto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    invoke-static {}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->addUcmProvider()V

    .line 259
    return-void
.end method

.method private static blacklist beginPreload()V
    .locals 2

    .line 204
    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    .line 207
    return-void
.end method

.method private static blacklist cacheNonBootClasspathClassLoaders()V
    .locals 15

    .line 428
    new-instance v12, Landroid/content/pm/SharedLibraryInfo;

    const-string v1, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 433
    .local v0, "hidlBase":Landroid/content/pm/SharedLibraryInfo;
    new-instance v13, Landroid/content/pm/SharedLibraryInfo;

    const-string v2, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 439
    .local v1, "hidlManager":Landroid/content/pm/SharedLibraryInfo;
    new-instance v14, Landroid/content/pm/SharedLibraryInfo;

    const-string v3, "/system/framework/android.test.base.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 445
    .local v2, "androidTestBase":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/content/pm/SharedLibraryInfo;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders([Landroid/content/pm/SharedLibraryInfo;)V

    .line 452
    return-void
.end method

.method static blacklist childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 4
    .param p0, "argv"    # [Ljava/lang/String;

    .line 1132
    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    .line 1133
    .local v0, "args":Lcom/android/internal/os/RuntimeInit$Arguments;
    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method static blacklist createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .locals 9
    .param p0, "classPath"    # Ljava/lang/String;
    .param p1, "targetSdkVersion"    # I

    .line 793
    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "libraryPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 798
    .local v8, "parent":Ljava/lang/ClassLoader;
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v8

    move v5, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist endPreload()V
    .locals 2

    .line 210
    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    .line 212
    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method private static blacklist forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 23
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;

    .line 810
    const/16 v0, 0xd

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v8, 0x6

    aput v1, v0, v8

    sget v1, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v9, 0x7

    aput v1, v0, v9

    sget v1, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    const/16 v10, 0x8

    aput v1, v0, v10

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v11, 0x9

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v11, 0xa

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    const/16 v11, 0xb

    aput v1, v0, v11

    sget v1, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/16 v11, 0xc

    aput v1, v0, v11

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v11

    .line 826
    .local v11, "capabilities":J
    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    invoke-direct {v0, v1, v2}, Landroid/system/StructCapUserHeader;-><init>(II)V

    move-object v1, v0

    .line 830
    .local v1, "header":Landroid/system/StructCapUserHeader;
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v13, v0

    .line 833
    .local v13, "data":[Landroid/system/StructCapUserData;
    nop

    .line 834
    aget-object v0, v13, v2

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v14, v0

    aget-object v0, v13, v3

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    int-to-long v8, v0

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v8, v14

    and-long/2addr v8, v11

    .line 837
    .end local v11    # "capabilities":J
    .local v8, "capabilities":J
    new-array v0, v10, [Ljava/lang/String;

    const-string v10, "--setuid=1000"

    aput-object v10, v0, v2

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v3

    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012,5666,5678"

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v6

    const-string v2, "--runtime-args"

    aput-object v2, v0, v7

    const-string v2, "--target-sdk-version=10000"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "com.android.server.SystemServer"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    move-object v2, v0

    .line 853
    .local v2, "args":[Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v0

    .line 855
    .local v3, "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 858
    .local v0, "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    nop

    .line 859
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 860
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 861
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 863
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 864
    const-string v4, "arm64.memtag.process.system_server"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, "mode":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v6, "async"

    if-eqz v5, :cond_0

    .line 869
    :try_start_4
    const-string v5, "persist.arm64.memtag.default"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 871
    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 872
    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_0

    .line 873
    :cond_1
    const-string/jumbo v5, "sync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 874
    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v6, 0x180000

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_0

    .line 875
    :cond_2
    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 877
    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 878
    const-string v5, "Zygote"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown memory tag level for the system server: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    .end local v4    # "mode":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 883
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_1

    .line 880
    :cond_4
    :goto_0
    nop

    .line 888
    :goto_1
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 890
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 891
    iget v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    .line 895
    :cond_5
    iget v14, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v15, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v4, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v5, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/16 v18, 0x0

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    iget-wide v10, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    invoke-static/range {v14 .. v22}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move v3, v4

    .line 904
    .local v3, "pid":I
    nop

    .line 907
    if-nez v3, :cond_7

    .line 908
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 909
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 912
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 913
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object v4

    return-object v4

    .line 916
    :cond_7
    const/4 v4, 0x0

    return-object v4

    .line 856
    .end local v0    # "parsedArgs":Lcom/android/internal/os/ZygoteArguments;
    .local v3, "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 857
    .local v0, "e":Ljava/io/EOFException;
    :try_start_5
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Unexpected argument error for forking system server"

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "header":Landroid/system/StructCapUserHeader;
    .end local v2    # "args":[Ljava/lang/String;
    .end local v8    # "capabilities":J
    .end local v13    # "data":[Landroid/system/StructCapUserData;
    .end local p0    # "abiList":Ljava/lang/String;
    .end local p1    # "socketName":Ljava/lang/String;
    .end local p2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    throw v4
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 902
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v3    # "commandBuffer":Lcom/android/internal/os/ZygoteCommandBuffer;
    .restart local v1    # "header":Landroid/system/StructCapUserHeader;
    .restart local v2    # "args":[Ljava/lang/String;
    .restart local v8    # "capabilities":J
    .restart local v13    # "data":[Landroid/system/StructCapUserData;
    .restart local p0    # "abiList":Ljava/lang/String;
    .restart local p1    # "socketName":Ljava/lang/String;
    .restart local p2    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catch_1
    move-exception v0

    .line 903
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 831
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "args":[Ljava/lang/String;
    .end local v8    # "capabilities":J
    .end local v13    # "data":[Landroid/system/StructCapUserData;
    .restart local v11    # "capabilities":J
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 832
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to capget()"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist gcAndFinalize()V
    .locals 0

    .line 614
    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    .line 615
    return-void
.end method

.method private static blacklist getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 693
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 694
    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "systemServerClasspath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 696
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    .line 700
    .end local v0    # "systemServerClasspath":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static blacklist handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .locals 9
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteArguments;

    .line 632
    const-string v0, "Zygote"

    sget v1, Landroid/system/OsConstants;->S_IRWXG:I

    sget v2, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v1, v2

    invoke-static {v1}, Landroid/system/Os;->umask(I)I

    .line 634
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 638
    :cond_0
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "systemServerClasspath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 642
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_2

    .line 644
    :cond_1
    :try_start_0
    const-string v2, "Preparing system server profile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    goto :goto_0

    .line 646
    :catch_0
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to set up system server profile"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 653
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 657
    .local v0, "args":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 658
    array-length v2, v0

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 659
    .local v2, "amendedArgs":[Ljava/lang/String;
    const-string v4, "-cp"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 660
    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 661
    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 662
    move-object v0, v2

    .line 665
    .end local v2    # "amendedArgs":[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 667
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 665
    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 669
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    .end local v0    # "args":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 672
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_5

    .line 673
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 679
    :cond_5
    iget v2, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .line 1078
    const-string v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static blacklist isPreloadComplete()Z
    .locals 1

    .line 1088
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static blacklist lazyPreload()V
    .locals 4

    .line 197
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 198
    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-wide/16 v1, 0x4000

    const-string v3, "ZygoteInitTiming_lazy"

    invoke-direct {v0, v3, v1, v2}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 201
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .locals 17
    .param p0, "argv"    # [Ljava/lang/String;

    .line 947
    move-object/from16 v1, p0

    const-string v0, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    const/4 v4, 0x0

    .line 951
    .local v4, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    sget-boolean v5, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_FEATURE:Z

    if-nez v5, :cond_0

    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    .line 955
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5, v5}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    nop

    .line 963
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 964
    .local v6, "startTime":J
    const-string v8, "1"

    const-string/jumbo v9, "sys.boot_completed"

    .line 965
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 964
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 967
    .local v8, "isRuntimeRestarted":Z
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_1

    :try_start_2
    const-string v9, "Zygote64Timing"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1055
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 967
    .restart local v6    # "startTime":J
    .restart local v8    # "isRuntimeRestarted":Z
    :cond_1
    :try_start_3
    const-string v9, "Zygote32Timing"

    .line 968
    .local v9, "bootTimeTag":Ljava/lang/String;
    :goto_0
    new-instance v10, Landroid/util/TimingsTraceLog;

    const-wide/16 v11, 0x4000

    invoke-direct {v10, v9, v11, v12}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 970
    .local v10, "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    const-string v11, "ZygoteInit"

    invoke-virtual {v10, v11}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 971
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V

    .line 973
    sput-boolean v5, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 974
    const-string/jumbo v5, "zygote"

    move-object v11, v5

    .line 975
    .local v11, "zygoteSocketName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 976
    .local v12, "abiList":Ljava/lang/String;
    const/4 v13, 0x0

    .line 977
    .local v13, "enableLazyPreload":Z
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_1
    :try_start_4
    array-length v15, v1

    if-ge v14, v15, :cond_6

    .line 978
    const-string/jumbo v15, "start-system-server"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v4

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v16, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :try_start_5
    aget-object v4, v1, v14

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 979
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    goto :goto_2

    .line 980
    :cond_2
    const-string v4, "--enable-lazy-preload"

    aget-object v15, v1, v14

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 981
    const/4 v4, 0x1

    move v13, v4

    .end local v13    # "enableLazyPreload":Z
    .local v4, "enableLazyPreload":Z
    goto :goto_2

    .line 982
    .end local v4    # "enableLazyPreload":Z
    .restart local v13    # "enableLazyPreload":Z
    :cond_3
    aget-object v4, v1, v14

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 983
    aget-object v4, v1, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .end local v12    # "abiList":Ljava/lang/String;
    .local v4, "abiList":Ljava/lang/String;
    goto :goto_2

    .line 984
    .end local v4    # "abiList":Ljava/lang/String;
    .restart local v12    # "abiList":Ljava/lang/String;
    :cond_4
    aget-object v4, v1, v14

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 985
    aget-object v4, v1, v14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 977
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v16

    goto :goto_1

    .line 987
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command line argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v0

    .line 977
    .local v4, "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v4

    .line 991
    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local v14    # "i":I
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 992
    .local v0, "isPrimaryZygote":Z
    if-nez v8, :cond_8

    .line 993
    const/16 v2, 0xf0

    if-eqz v0, :cond_7

    .line 994
    const/16 v4, 0x11

    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_3

    .line 997
    :cond_7
    const-string/jumbo v4, "zygote_secondary"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 998
    const/16 v4, 0x12

    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1004
    :cond_8
    :goto_3
    if-eqz v12, :cond_d

    .line 1010
    if-nez v13, :cond_9

    .line 1011
    const-string v2, "ZygotePreload"

    invoke-virtual {v10, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1012
    const/16 v2, 0xbcc

    .line 1013
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1012
    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1014
    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 1015
    const/16 v2, 0xbd6

    .line 1016
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1015
    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1017
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1021
    :cond_9
    const-string v2, "PostZygoteInitGC"

    invoke-virtual {v10, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1022
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    .line 1023
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1025
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1027
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    .line 1029
    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    .line 1031
    new-instance v2, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v2, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v2

    .line 1033
    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :try_start_6
    sget-boolean v2, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v2, :cond_b

    .line 1034
    sget-boolean v2, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_FEATURE:Z

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_PROPERTY:Z

    if-nez v2, :cond_a

    .line 1035
    const-string v2, "We\'re turning on ZygoteInitThreadPool prop, because we success booting!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v2, "persist.zit.try"

    const-string/jumbo v5, "true"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_a
    const-string v2, "!@Boot_EBS_F: zygote forkSystemServer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-static {v12, v11, v4}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v2

    .line 1044
    .local v2, "r":Ljava/lang/Runnable;
    if-eqz v2, :cond_b

    .line 1045
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1059
    nop

    .line 1060
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 1046
    return-void

    .line 1050
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_b
    :try_start_7
    const-string v2, "Accepting command socket connections"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v4, v12}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v2

    .line 1059
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    .end local v9    # "bootTimeTag":Ljava/lang/String;
    .end local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v11    # "zygoteSocketName":Ljava/lang/String;
    .end local v12    # "abiList":Ljava/lang/String;
    .end local v13    # "enableLazyPreload":Z
    .local v0, "caller":Ljava/lang/Runnable;
    nop

    .line 1060
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 1066
    if-eqz v0, :cond_c

    .line 1067
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1069
    :cond_c
    return-void

    .line 1005
    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .local v0, "isPrimaryZygote":Z
    .restart local v6    # "startTime":J
    .restart local v8    # "isRuntimeRestarted":Z
    .restart local v9    # "bootTimeTag":Ljava/lang/String;
    .restart local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .restart local v11    # "zygoteSocketName":Ljava/lang/String;
    .restart local v12    # "abiList":Ljava/lang/String;
    .restart local v13    # "enableLazyPreload":Z
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :cond_d
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "No ABI list supplied."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1055
    .end local v0    # "isPrimaryZygote":Z
    .end local v6    # "startTime":J
    .end local v8    # "isRuntimeRestarted":Z
    .end local v9    # "bootTimeTag":Ljava/lang/String;
    .end local v10    # "bootTimingsTraceLog":Landroid/util/TimingsTraceLog;
    .end local v11    # "zygoteSocketName":Ljava/lang/String;
    .end local v12    # "abiList":Ljava/lang/String;
    .end local v13    # "enableLazyPreload":Z
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_4

    .end local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    .line 1056
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_4
    :try_start_9
    const-string v2, "System zygote died with fatal exception"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1057
    nop

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .end local p0    # "argv":[Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1059
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    if-eqz v4, :cond_e

    .line 1060
    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 1062
    :cond_e
    throw v0

    .line 956
    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    move-object v2, v0

    .end local v4    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    .restart local v16    # "zygoteServer":Lcom/android/internal/os/ZygoteServer;
    move-object v0, v2

    .line 957
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to setpgid(0,0)"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist maybePreloadGraphicsDriver()V
    .locals 2

    .line 241
    const-string v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    .line 244
    :cond_0
    return-void
.end method

.method private static native blacklist nativePreloadAppProcessHALs()V
.end method

.method static native blacklist nativePreloadGraphicsDriver()V
.end method

.method private static native blacklist nativeZygoteInit()V
.end method

.method private static blacklist parallelPreloadClasses()V
    .locals 16

    .line 475
    const-string v1, "Failed to restore root"

    const-string v2, "PreloadDexCaches"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 477
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    const-string v4, "Zygote"

    const-string v0, "!@Boot: Parallel Preloading classes..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 481
    .local v5, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v7

    .line 482
    .local v7, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v8

    .line 487
    .local v8, "regid":I
    const/4 v9, 0x0

    .line 488
    .local v9, "droppedPriviliges":Z
    const/4 v10, 0x0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 490
    const/16 v0, 0x270f

    :try_start_0
    invoke-static {v10, v0}, Landroid/system/Os;->setregid(II)V

    .line 491
    invoke-static {v10, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    nop

    .line 495
    const/4 v9, 0x1

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 498
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    const-string v13, "/system/etc/preloaded-classes"

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v13, v0

    .line 499
    .local v13, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-direct {v14, v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v15, 0x100

    invoke-direct {v0, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v0

    .line 500
    .local v14, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v0, Lcom/android/internal/os/ZygoteInitThreadPool;

    sget-boolean v15, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    invoke-direct {v0, v15}, Lcom/android/internal/os/ZygoteInitThreadPool;-><init>(Z)V

    .line 502
    .local v0, "zygoteInitThreadPool":Lcom/android/internal/os/ZygoteInitThreadPool;
    invoke-virtual {v0, v14}, Lcom/android/internal/os/ZygoteInitThreadPool;->preparePreloadClassList(Ljava/io/BufferedReader;)I

    move-result v15

    .line 503
    .local v15, "count":I
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInitThreadPool;->parallelPreloadTimeout()Z

    .line 504
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...preloaded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parallelPreloadClasses in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 504
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    .end local v0    # "zygoteInitThreadPool":Lcom/android/internal/os/ZygoteInitThreadPool;
    .end local v15    # "count":I
    :try_start_4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v14    # "br":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 512
    .end local v13    # "is":Ljava/io/InputStream;
    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 514
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    if-eqz v9, :cond_1

    .line 519
    const/4 v2, 0x0

    :try_start_6
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 520
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 521
    :catch_1
    move-exception v0

    .line 522
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 498
    .end local v0    # "ex":Landroid/system/ErrnoException;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move-object v10, v0

    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v11, v0

    :try_start_8
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "runtime":Ldalvik/system/VMRuntime;
    .end local v5    # "startTime":J
    .end local v7    # "reuid":I
    .end local v8    # "regid":I
    .end local v9    # "droppedPriviliges":Z
    .end local v13    # "is":Ljava/io/InputStream;
    :goto_1
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v14    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v5    # "startTime":J
    .restart local v7    # "reuid":I
    .restart local v8    # "regid":I
    .restart local v9    # "droppedPriviliges":Z
    .restart local v13    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move-object v10, v0

    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v11, v0

    :try_start_a
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "runtime":Ldalvik/system/VMRuntime;
    .end local v5    # "startTime":J
    .end local v7    # "reuid":I
    .end local v8    # "regid":I
    .end local v9    # "droppedPriviliges":Z
    :goto_2
    throw v10
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 512
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v3    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v5    # "startTime":J
    .restart local v7    # "reuid":I
    .restart local v8    # "regid":I
    .restart local v9    # "droppedPriviliges":Z
    :catchall_4
    move-exception v0

    goto :goto_5

    .line 508
    :catch_2
    move-exception v0

    .line 509
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_b
    const-string v10, "Exception Error reading /system/etc/preloaded-classes."

    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 512
    const-wide/16 v10, 0x4000

    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 514
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    if-eqz v9, :cond_1

    .line 519
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 520
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 521
    :catch_3
    move-exception v0

    .line 522
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 506
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catch_4
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/IOException;
    :try_start_d
    const-string v10, "Error reading /system/etc/preloaded-classes."

    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 512
    const-wide/16 v10, 0x4000

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 514
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    if-eqz v9, :cond_1

    .line 519
    const/4 v2, 0x0

    :try_start_e
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 520
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_e} :catch_5

    .line 523
    :goto_3
    goto :goto_4

    .line 521
    :catch_5
    move-exception v0

    .line 522
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 526
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_1
    :goto_4
    return-void

    .line 512
    :goto_5
    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 514
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    if-eqz v9, :cond_2

    .line 519
    const/4 v2, 0x0

    :try_start_f
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 520
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_f} :catch_6

    .line 523
    goto :goto_6

    .line 521
    :catch_6
    move-exception v0

    .line 522
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 525
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_2
    :goto_6
    throw v0
.end method

.method private static varargs blacklist posixCapabilitiesAsBits([I)J
    .locals 7
    .param p0, "capabilities"    # [I

    .line 923
    const-wide/16 v0, 0x0

    .line 924
    .local v0, "result":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 925
    .local v4, "capability":I
    if-ltz v4, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-gt v4, v5, :cond_0

    .line 928
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    .line 924
    .end local v4    # "capability":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 926
    .restart local v4    # "capability":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 930
    .end local v4    # "capability":I
    :cond_1
    return-wide v0
.end method

.method private static blacklist prefetchStandaloneSystemServerJars()V
    .locals 10

    .line 708
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "envStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    return-void

    .line 712
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 714
    .local v5, "jar":Ljava/lang/String;
    nop

    .line 715
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 714
    invoke-static {v5, v6}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    goto :goto_1

    .line 716
    :catch_0
    move-exception v6

    .line 719
    .local v6, "e":Ljava/lang/Error;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    .line 721
    invoke-virtual {v6}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 720
    const-string v8, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 719
    const-string v8, "Zygote"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v5    # "jar":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Error;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 724
    :cond_1
    return-void
.end method

.method static blacklist preload(Landroid/util/TimingsTraceLog;)V
    .locals 4
    .param p0, "bootTimingsTraceLog"    # Landroid/util/TimingsTraceLog;

    .line 152
    const-string v0, "Zygote"

    const-string v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "!@Boot: Begin of preload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "!@Boot_EBS_F: boot_progress_preload_start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const-string v1, "BeginPreload"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    .line 159
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 160
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v1, :cond_1

    .line 161
    const-string v1, "!@Boot_EBS_F: Preload Classes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    const-string v1, "PreloadClasses"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->selectPreloadClasses()V

    .line 165
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 166
    const-string v1, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    .line 168
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 169
    const-string v1, "PreloadResources"

    invoke-virtual {p0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 170
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v1, :cond_2

    .line 171
    const-string v1, "!@Boot_EBS_F: Preload Resources"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 174
    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 175
    const-wide/16 v1, 0x4000

    const-string v3, "PreloadAppProcessHALs"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    .line 177
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 178
    const-string v3, "PreloadGraphicsDriver"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    .line 180
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 181
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 182
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    .line 185
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 186
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    .line 187
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    .line 188
    const-string v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v1, :cond_3

    .line 190
    const-string v1, "!@Boot: End of preload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, "!@Boot_EBS_F: boot_progress_preload_end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    .line 194
    return-void
.end method

.method private static blacklist preloadClasses()V
    .locals 23

    .line 299
    const-string v1, "Failed to restore root"

    const-string v2, "ResetJitCounters"

    const-string v3, "dalvik.vm.profilebootclasspath"

    const-string/jumbo v4, "true"

    const-string v5, "persist.device_config.runtime_native_boot.profilebootclasspath"

    const-string v6, "PreloadDexCaches"

    const-string v7, ""

    const-string v8, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    .line 303
    .local v9, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v10, "/system/etc/preloaded-classes"

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v10, v0

    .line 307
    .local v10, "is":Ljava/io/InputStream;
    nop

    .line 309
    const-string v0, "Preloading classes..."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 313
    .local v11, "startTime":J
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v13

    .line 314
    .local v13, "reuid":I
    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v14

    .line 319
    .local v14, "regid":I
    const/4 v15, 0x0

    .line 320
    .local v15, "droppedPriviliges":Z
    move/from16 v16, v15

    .end local v15    # "droppedPriviliges":Z
    .local v16, "droppedPriviliges":Z
    const/4 v15, 0x0

    if-nez v13, :cond_0

    if-nez v14, :cond_0

    .line 322
    const/16 v0, 0x270f

    :try_start_1
    invoke-static {v15, v0}, Landroid/system/Os;->setregid(II)V

    .line 323
    invoke-static {v15, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    nop

    .line 328
    const/4 v0, 0x1

    move/from16 v16, v0

    .end local v16    # "droppedPriviliges":Z
    .local v0, "droppedPriviliges":Z
    goto :goto_0

    .line 324
    .end local v0    # "droppedPriviliges":Z
    .restart local v16    # "droppedPriviliges":Z
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 332
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_0
    :goto_0
    move/from16 v17, v13

    move/from16 v18, v14

    .end local v13    # "reuid":I
    .end local v14    # "regid":I
    .local v17, "reuid":I
    .local v18, "regid":I
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v13, 0x100

    invoke-direct {v0, v15, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v13, v0

    .line 335
    .local v13, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 336
    .local v0, "count":I
    const/4 v14, 0x0

    move v15, v14

    move v14, v0

    .line 338
    .end local v0    # "count":I
    .local v14, "count":I
    .local v15, "missingLambdaCount":I
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .local v19, "line":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 340
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 341
    const-string v0, "#"

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    .end local v19    # "line":Ljava/lang/String;
    .local v13, "line":Ljava/lang/String;
    .local v20, "br":Ljava/io/BufferedReader;
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    .line 342
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    goto/16 :goto_4

    .line 345
    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    const-wide/16 v1, 0x4000

    :try_start_3
    invoke-static {v1, v2, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_4
    invoke-static {v13, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 353
    add-int/lit8 v14, v14, 0x1

    .line 373
    :cond_2
    :goto_2
    goto/16 :goto_3

    .line 364
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 365
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error preloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_4

    .line 368
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 369
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    .end local v9    # "runtime":Ldalvik/system/VMRuntime;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "startTime":J
    .end local v16    # "droppedPriviliges":Z
    .end local v17    # "reuid":I
    .end local v18    # "regid":I
    throw v1

    .line 371
    .restart local v9    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "startTime":J
    .restart local v16    # "droppedPriviliges":Z
    .restart local v17    # "reuid":I
    .restart local v18    # "regid":I
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v9    # "runtime":Ldalvik/system/VMRuntime;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "startTime":J
    .end local v16    # "droppedPriviliges":Z
    .end local v17    # "reuid":I
    .end local v18    # "regid":I
    throw v1

    .line 367
    .restart local v9    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "startTime":J
    .restart local v16    # "droppedPriviliges":Z
    .restart local v17    # "reuid":I
    .restart local v18    # "regid":I
    :cond_4
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    .end local v9    # "runtime":Ldalvik/system/VMRuntime;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "startTime":J
    .end local v16    # "droppedPriviliges":Z
    .end local v17    # "reuid":I
    .end local v18    # "regid":I
    throw v1

    .line 362
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v9    # "runtime":Ldalvik/system/VMRuntime;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "startTime":J
    .restart local v16    # "droppedPriviliges":Z
    .restart local v17    # "reuid":I
    .restart local v18    # "regid":I
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 363
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem preloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    nop

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3

    .line 354
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 355
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "$$Lambda$"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v1, :cond_2

    .line 357
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 360
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found for preloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 374
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v13, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_1

    .line 341
    :cond_6
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    .line 338
    .end local v13    # "line":Ljava/lang/String;
    :goto_4
    move-object/from16 v13, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    goto/16 :goto_1

    .line 377
    .end local v20    # "br":Ljava/io/BufferedReader;
    .local v13, "br":Ljava/io/BufferedReader;
    .restart local v19    # "line":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v20, v13

    .end local v13    # "br":Ljava/io/BufferedReader;
    .restart local v20    # "br":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...preloaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " classes in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v0, :cond_8

    if-eqz v15, :cond_8

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unresolved lambda preloads: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 385
    .end local v14    # "count":I
    .end local v15    # "missingLambdaCount":I
    .end local v19    # "line":Ljava/lang/String;
    .end local v20    # "br":Ljava/io/BufferedReader;
    :cond_8
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    const-wide/16 v1, 0x4000

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 389
    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 390
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 396
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 400
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    .line 399
    :cond_9
    move-object v1, v0

    .line 402
    .end local v0    # "prop":Ljava/lang/String;
    .local v1, "prop":Ljava/lang/String;
    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 403
    move-object/from16 v2, v22

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 404
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 405
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    :cond_a
    if-eqz v16, :cond_d

    .line 411
    const/4 v2, 0x0

    :try_start_6
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 412
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 413
    :catch_3
    move-exception v0

    .line 414
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v13, v21

    invoke-direct {v2, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 385
    .end local v0    # "ex":Landroid/system/ErrnoException;
    .end local v1    # "prop":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v13, v21

    move-object/from16 v2, v22

    goto :goto_a

    .line 382
    :catch_4
    move-exception v0

    move-object/from16 v13, v21

    move-object/from16 v2, v22

    goto :goto_6

    .line 385
    :catchall_2
    move-exception v0

    move-object v13, v1

    goto :goto_a

    .line 382
    :catch_5
    move-exception v0

    move-object v13, v1

    .line 383
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v1, "Error reading /system/etc/preloaded-classes."

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 385
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 389
    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 390
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 396
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 400
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    .line 399
    :cond_b
    move-object v1, v0

    .line 402
    .end local v0    # "prop":Ljava/lang/String;
    .restart local v1    # "prop":Ljava/lang/String;
    :goto_7
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 403
    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 404
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 405
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    :cond_c
    if-eqz v16, :cond_d

    .line 411
    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 412
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_6

    .line 415
    :goto_8
    goto :goto_9

    .line 413
    :catch_6
    move-exception v0

    .line 414
    .local v0, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 417
    .end local v0    # "ex":Landroid/system/ErrnoException;
    .end local v1    # "prop":Ljava/lang/String;
    :cond_d
    :goto_9
    nop

    .line 418
    return-void

    .line 385
    :catchall_3
    move-exception v0

    :goto_a
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 388
    const-wide/16 v14, 0x4000

    invoke-static {v14, v15, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 389
    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 390
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 396
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .restart local v1    # "prop":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    .line 400
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    :cond_e
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 403
    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 404
    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    .line 405
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 409
    :cond_f
    if-eqz v16, :cond_10

    .line 411
    const/4 v2, 0x0

    :try_start_9
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    .line 412
    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_7

    .line 415
    goto :goto_b

    .line 413
    :catch_7
    move-exception v0

    .line 414
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 417
    .end local v0    # "ex":Landroid/system/ErrnoException;
    .end local v1    # "prop":Ljava/lang/String;
    :cond_10
    :goto_b
    throw v0

    .line 304
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "startTime":J
    .end local v16    # "droppedPriviliges":Z
    .end local v17    # "reuid":I
    .end local v18    # "regid":I
    :catch_8
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method private static blacklist preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .line 575
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 576
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 577
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 579
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 580
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 583
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 584
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static blacklist preloadDrawables(Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "ar"    # Landroid/content/res/TypedArray;

    .line 593
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 594
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 595
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 597
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 598
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 599
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 601
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 602
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private static blacklist preloadResources()V
    .locals 11

    .line 536
    const-string v0, " resources in "

    const-string v1, "ms."

    const-string v2, "...preloaded "

    const-string v3, "Zygote"

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    sput-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 537
    invoke-virtual {v4}, Landroid/content/res/Resources;->startPreloading()V

    .line 539
    const-string v4, "Preloading resources..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 542
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x10701a0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 544
    .local v6, "ar":Landroid/content/res/TypedArray;
    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v7

    .line 545
    .local v7, "N":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 546
    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v4, v8

    .line 550
    sget-object v8, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v9, 0x107019f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v6, v8

    .line 552
    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v8

    move v7, v8

    .line 553
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 554
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v8, 0x1110162

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v4, v8

    .line 560
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v8, 0x10701a1

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 562
    .end local v6    # "ar":Landroid/content/res/TypedArray;
    .local v0, "ar":Landroid/content/res/TypedArray;
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v6

    .line 563
    .end local v7    # "N":I
    .local v6, "N":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " resource in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v0    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    .end local v6    # "N":I
    :cond_0
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Failure preloading resources"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private static blacklist preloadSharedLibraries()V
    .locals 3

    .line 216
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 218
    const-string v1, "compiler_rt"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 219
    const-string v1, "jnigraphics"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 222
    :try_start_0
    const-string v1, "qti_performance"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Couldn\'t load qti_performance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private static blacklist preloadTextResources()V
    .locals 0

    .line 247
    invoke-static {}, Landroid/text/Hyphenator;->init()V

    .line 248
    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    .line 249
    return-void
.end method

.method private static blacklist prepareSystemServerProfile(Ljava/lang/String;)V
    .locals 12
    .param p0, "systemServerClasspath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    return-void

    .line 736
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "codePaths":[Ljava/lang/String;
    nop

    .line 739
    const-string v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    .line 741
    .local v1, "installd":Landroid/os/IInstalld;
    const-string v9, "android"

    .line 742
    .local v9, "systemServerPackageName":Ljava/lang/String;
    const-string v10, "primary.prof"

    .line 743
    .local v10, "systemServerProfileName":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v2, 0x3e8

    .line 746
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v11, 0x0

    aget-object v7, v0, v11

    const/4 v8, 0x0

    .line 743
    move-object v2, v1

    move-object v3, v9

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 751
    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 753
    .local v2, "curProfileDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "curProfilePath":Ljava/lang/String;
    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 756
    .local v4, "refProfileDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 757
    .local v5, "refProfilePath":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v9, v3, v5, v0, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 763
    return-void
.end method

.method private static blacklist selectPreloadClasses()V
    .locals 2

    .line 455
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_FEATURE:Z

    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 457
    return-void

    .line 460
    :cond_0
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD_PROPERTY:Z

    if-nez v0, :cond_1

    .line 461
    const-string v0, "Zygote"

    const-string v1, "ZIT disabled temporarily by property"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 463
    return-void

    .line 466
    :cond_1
    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->PARALLEL_LOAD:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v0, :cond_2

    .line 467
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->parallelPreloadClasses()V

    goto :goto_0

    .line 470
    :cond_2
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 472
    :goto_0
    return-void
.end method

.method public static blacklist setApiDenylistExemptions([Ljava/lang/String;)V
    .locals 1
    .param p0, "exemptions"    # [Ljava/lang/String;

    .line 769
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public static blacklist setHiddenApiAccessLogSampleRate(I)V
    .locals 1
    .param p0, "percent"    # I

    .line 773
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    .line 774
    return-void
.end method

.method public static blacklist setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .locals 0
    .param p0, "logger"    # Ldalvik/system/VMRuntime$HiddenApiUsageLogger;

    .line 781
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 782
    return-void
.end method

.method private static blacklist shouldProfileSystemServer()Z
    .locals 2

    .line 618
    const-string v0, "dalvik.vm.profilesystemserver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 621
    .local v0, "defaultValue":Z
    const-string v1, "persist.device_config.runtime_native_boot.profilesystemserver"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static blacklist waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 2
    .param p0, "socketName"    # Ljava/lang/String;

    .line 1082
    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    const-string/jumbo v0, "zygote_secondary"

    goto :goto_0

    :cond_0
    nop

    .line 1084
    .local v0, "otherZygoteName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method private static blacklist warmUpJcaProviders()V
    .locals 10

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 270
    .local v0, "startTime":J
    const-wide/16 v2, 0x4000

    const-string v4, "Starting installation of AndroidKeyStoreProvider"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 273
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    const-string v6, "Zygote"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->addUcmKeyStoreProvider()V

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 282
    const-string v4, "Starting warm up of JCA providers"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v4, v8

    .line 285
    .local v9, "p":Ljava/security/Provider;
    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    .line 284
    .end local v9    # "p":Ljava/security/Provider;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 287
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 290
    return-void
.end method

.method public static blacklist zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "disabledCompatChanges"    # [J
    .param p2, "argv"    # [Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1117
    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1118
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    .line 1120
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 1121
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    .line 1122
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
