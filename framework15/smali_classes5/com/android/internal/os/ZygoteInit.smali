.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final blacklist ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final blacklist LOGGING_DEBUG:Z

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final blacklist LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final blacklist PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final blacklist PROPERTY_DISABLE_GRAPHICS_DRIVER_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final blacklist ROOT_GID:I = 0x0

.field private static final blacklist ROOT_UID:I = 0x0

.field private static final blacklist SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"

.field private static final blacklist UNPRIVILEGED_GID:I = 0x270f

.field private static final blacklist UNPRIVILEGED_UID:I = 0x270f

.field private static blacklist sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sPreloadComplete:Z

.field private static blacklist startSystemServer:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "Zygote"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addUcmKeyStoreProvider()V
    .locals 2

    const-string/jumbo v0, "persist.security.ucmcrypto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->addUcmProvider()V

    return-void
.end method

.method private static blacklist beginPreload()V
    .locals 2

    const-string v0, "Zygote"

    const-string v1, "Calling ZygoteHooks.beginPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ldalvik/system/ZygoteHooks;->onBeginPreload()V

    return-void
.end method

.method private static blacklist cacheNonBootClasspathClassLoaders()V
    .locals 27

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Landroid/content/pm/SharedLibraryInfo;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, "/system/framework/android.hidl.base-V1.0-java.jar"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v15, "/system/framework/android.hidl.manager-V1.0-java.jar"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/android.test.base.jar"

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/internal/os/Flags;->enableApacheHttpLegacyPreload()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, "/system/framework/org.apache.http.legacy.jar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v1, Landroid/view/WindowManager;->HAS_WINDOW_EXTENSIONS_ON_DEVICE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "framework"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Landroid/content/pm/SharedLibraryInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/androidx.window.extensions.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v4, "androidx.window.extensions"

    const/4 v5, 0x0

    const-string v6, "androidx.window.extensions"

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/pm/SharedLibraryInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/androidx.window.sidecar.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v17, "androidx.window.sidecar"

    const/16 v18, 0x0

    const-string v19, "androidx.window.sidecar"

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v26}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ApplicationLoaders;->createAndCacheNonBootclasspathSystemClassLoaders(Ljava/util/List;)V

    return-void
.end method

.method static blacklist childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 4

    new-instance v0, Lcom/android/internal/os/RuntimeInit$Arguments;

    invoke-direct {v0, p0}, Lcom/android/internal/os/RuntimeInit$Arguments;-><init>([Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startClass:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/RuntimeInit$Arguments;->startArgs:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/os/RuntimeInit;->findStaticMain(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1
.end method

.method static blacklist createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .locals 9

    const-string/jumbo v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v8

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

    invoke-static {}, Ldalvik/system/ZygoteHooks;->onEndPreload()V

    const-string v0, "Zygote"

    const-string v1, "Called ZygoteHooks.endPreload()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 19

    sget v1, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    sget v3, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    sget v4, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    sget v5, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    sget v6, Landroid/system/OsConstants;->CAP_NET_RAW:I

    sget v7, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    sget v8, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    sget v9, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    sget v10, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    sget v11, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    sget v12, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    sget v13, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    filled-new-array/range {v1 .. v13}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v1

    new-instance v0, Landroid/system/StructCapUserHeader;

    sget v3, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/system/StructCapUserHeader;-><init>(II)V

    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    nop

    aget-object v0, v5, v4

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    aget-object v0, v5, v0

    iget v0, v0, Landroid/system/StructCapUserData;->effective:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v8

    const/16 v0, 0x20

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    and-long/2addr v1, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--capabilities="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "--target-sdk-version=10000"

    const-string v13, "com.android.server.SystemServer"

    const-string v6, "--setuid=1000"

    const-string v7, "--setgid=1000"

    const-string v8, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1024,1032,1065,3001,3002,3003,3005,3006,3007,3009,3010,3011,3012,5666,5678"

    const-string v10, "--nice-name=system_server"

    const-string v11, "--runtime-args"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :try_start_1
    new-instance v0, Lcom/android/internal/os/ZygoteCommandBuffer;

    invoke-direct {v0, v4}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    :try_start_2
    invoke-static {v6}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    :try_start_3
    invoke-virtual {v6}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "persist.arm64.memtag.system_server"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, "async"

    if-eqz v8, :cond_0

    :try_start_4
    const-string/jumbo v8, "persist.arm64.memtag.default"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    :cond_0
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "sync"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v9, 0x180000

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeCurrentTaggingLevel()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown memory tag level for the system server: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v8, 0x80000

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :goto_1
    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    const/high16 v8, 0x200000

    or-int/2addr v7, v8

    iput v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    :cond_5
    iget v8, v0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v9, v0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v10, v0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    iget v11, v0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget-wide v13, v0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    move-wide v15, v13

    iget-wide v12, v0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    const/4 v7, 0x0

    move-wide/from16 v17, v12

    move-object v12, v7

    move-wide v13, v15

    move-wide/from16 v15, v17

    invoke-static/range {v8 .. v16}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move v6, v7

    nop

    if-nez v6, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;

    move-result-object v7

    return-object v7

    :cond_7
    const/4 v7, 0x0

    return-object v7

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    :try_start_5
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Unexpected argument error for forking system server"

    invoke-direct {v7, v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to capget()"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static blacklist gcAndFinalize()V
    .locals 0

    invoke-static {}, Ldalvik/system/ZygoteHooks;->gcAndFinalize()V

    return-void
.end method

.method private static blacklist getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    const-string v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sCachedSystemServerClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static blacklist handleSystemServerProcess(Lcom/android/internal/os/ZygoteArguments;)Ljava/lang/Runnable;
    .locals 12

    const-string v0, "Zygote"

    sget v1, Landroid/system/OsConstants;->S_IRWXG:I

    sget v2, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v1, v2

    invoke-static {v1}, Landroid/system/Os;->umask(I)I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_0
    const-string v1, "SYSTEMSERVERCLASSPATH"

    invoke-static {v1}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    if-eqz v5, :cond_3

    :cond_1
    :try_start_0
    const-string v5, "Preparing system server profile"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v5}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, ":"

    new-array v7, v4, [Ljava/lang/CharSequence;

    aput-object v1, v7, v3

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    nop

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->prepareSystemServerProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "Failed to set up system server profile"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    if-eqz v1, :cond_4

    array-length v5, v0

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "-cp"

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    array-length v2, v0

    invoke-static {v0, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_4
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v11, v0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_6
    iget v2, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object v3, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist hasSecondZygote(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist isExperimentEnabled(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dalvik.vm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.device_config.runtime_native_boot."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static blacklist isPreloadComplete()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method static blacklist lazyPreload()V
    .locals 4

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-string v0, "Zygote"

    const-string v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "--socket-name="

    const-string v2, "--abi-list="

    const-string v3, "Zygote"

    const/4 v4, 0x0

    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5, v5}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v8, "1"

    const-string/jumbo v9, "sys.boot_completed"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v9, :cond_0

    :try_start_2
    const-string v9, "Zygote64Timing"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :try_start_3
    const-string v9, "Zygote32Timing"

    :goto_0
    new-instance v10, Landroid/util/TimingsTraceLog;

    const-wide/16 v11, 0x4000

    invoke-direct {v10, v9, v11, v12}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v11, "ZygoteInit"

    invoke-virtual {v10, v11}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->preForkInit()V

    sput-boolean v5, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string/jumbo v5, "zygote"

    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_1
    :try_start_4
    array-length v15, v1

    if-ge v14, v15, :cond_5

    const-string/jumbo v15, "start-system-server"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v4

    :try_start_5
    aget-object v4, v1, v14

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    goto :goto_2

    :cond_1
    const-string v4, "--enable-lazy-preload"

    aget-object v15, v1, v14

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v13, v4

    goto :goto_2

    :cond_2
    aget-object v4, v1, v14

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v1, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_2

    :cond_3
    aget-object v4, v1, v14

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, v1, v14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v16

    goto :goto_1

    :cond_4
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

    throw v0

    :cond_5
    move-object/from16 v16, v4

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v8, :cond_7

    const/16 v2, 0xf0

    if-eqz v0, :cond_6

    const/16 v4, 0x11

    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    goto :goto_3

    :cond_6
    const-string/jumbo v4, "zygote_secondary"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x12

    invoke-static {v2, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    :cond_7
    :goto_3
    if-eqz v12, :cond_b

    if-nez v13, :cond_8

    const-string v2, "ZygotePreload"

    invoke-virtual {v10, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v2, 0xbcc

    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {v10}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v2, 0xbd6

    invoke-static {v2, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_8
    const-string v2, "PostZygoteInitGC"

    invoke-virtual {v10, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->initNativeState(Z)V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    new-instance v2, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v2, v0}, Lcom/android/internal/os/ZygoteServer;-><init>(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v4, v2

    :try_start_6
    sget-boolean v2, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v2, :cond_9

    const-string v2, "!@Boot_EBS_F: zygote forkSystemServer"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v11, v4}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    return-void

    :cond_9
    :try_start_7
    const-string v2, "Accepting command socket connections"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v12}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v2

    nop

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void

    :cond_b
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "No ABI list supplied."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    :goto_4
    :try_start_9
    const-string v2, "System zygote died with fatal exception"

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-static {v5, v6, v3, v2, v0}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    :cond_c
    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to setpgid(0,0)"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist maybePreloadGraphicsDriver()V
    .locals 2

    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadGraphicsDriver()V

    :cond_0
    return-void
.end method

.method private static native blacklist nativePreloadAppProcessHALs()V
.end method

.method static native blacklist nativePreloadGraphicsDriver()V
.end method

.method private static native blacklist nativeZygoteInit()V
.end method

.method private static varargs blacklist posixCapabilitiesAsBits([I)J
    .locals 7

    const-wide/16 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    if-ltz v4, :cond_0

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-gt v4, v5, :cond_0

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v4

    or-long/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-wide v0
.end method

.method private static blacklist prefetchStandaloneSystemServerJars()V
    .locals 8

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->shouldProfileSystemServer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "STANDALONE_SYSTEMSERVER_JARS"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    nop

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->getOrCreateSystemServerClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    nop

    invoke-virtual {v5}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Failed to prefetch standalone system server jar \"%s\": %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Zygote"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static blacklist preload(Landroid/util/TimingsTraceLog;)V
    .locals 4

    const-string v0, "begin preload"

    const-string v1, "Zygote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v0, :cond_0

    const-string v0, "!@Boot: Begin of preload()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_F: boot_progress_preload_start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "BeginPreload"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginPreload()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v0, :cond_1

    const-string v0, "!@Boot_EBS_F: Preload Classes"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "CacheNonBootClasspathClassLoaders"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->cacheNonBootClasspathClassLoaders()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v0, :cond_2

    const-string v0, "!@Boot_EBS_F: Preload Resources"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->preloadResources()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string v0, "PreloadAppProcessHALs"

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-string v0, "PreloadGraphicsDriver"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->maybePreloadGraphicsDriver()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endPreload()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    const-string v0, "end preload"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->startSystemServer:Z

    if-eqz v0, :cond_3

    const-string v0, "!@Boot: End of preload()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "!@Boot_EBS_F: boot_progress_preload_end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return-void
.end method

.method private static blacklist preloadClasses()V
    .locals 20

    const-string v1, "Failed to restore root"

    const-string v2, "ResetJitCounters"

    const-string/jumbo v3, "profilebootclasspath"

    const-string v4, "PreloadDexCaches"

    const-string v5, "Zygote"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/preloaded-classes"

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    move-object v7, v0

    nop

    const-string v0, "Preloading classes..."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v10

    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    const/16 v0, 0x270f

    :try_start_1
    invoke-static {v13, v0}, Landroid/system/Os;->setregid(II)V

    invoke-static {v13, v0}, Landroid/system/Os;->setreuid(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    const/4 v12, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to drop root"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x100

    invoke-direct {v0, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    move v15, v14

    move v14, v0

    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    if-eqz v0, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    const-string v0, "#"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v17, v10

    move-object/from16 v10, v16

    :try_start_3
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    move/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_4

    :cond_1
    move/from16 v18, v11

    move/from16 v19, v12

    const-wide/16 v11, 0x4000

    :try_start_4
    invoke-static {v11, v12, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v0, 0x0

    const/4 v11, 0x1

    :try_start_5
    invoke-static {v10, v11, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v14, v14, 0x1

    :cond_2
    :goto_2
    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v11, v0, Ljava/lang/Error;

    if-nez v11, :cond_4

    instance-of v11, v0, Ljava/lang/RuntimeException;

    if-eqz v11, :cond_3

    move-object v11, v0

    check-cast v11, Ljava/lang/RuntimeException;

    throw v11

    :cond_3
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    :cond_4
    move-object v11, v0

    check-cast v11, Ljava/lang/Error;

    throw v11

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    const-string v11, "$$Lambda$"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v11, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :goto_3
    const-wide/16 v11, 0x4000

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    goto/16 :goto_1

    :cond_6
    move/from16 v18, v11

    move/from16 v19, v12

    :goto_4
    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_5

    :cond_7
    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "...preloaded "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " classes in "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, "ms."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->LOGGING_DEBUG:Z

    if-eqz v0, :cond_8

    if-eqz v15, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unresolved lambda preloads: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_8
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_9
    if-eqz v19, :cond_b

    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    goto :goto_8

    :catch_6
    move-exception v0

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    :goto_5
    :try_start_8
    const-string v10, "Error reading /system/etc/preloaded-classes."

    invoke-static {v5, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    nop

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_a
    if-eqz v19, :cond_b

    const/4 v2, 0x0

    :try_start_9
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_6
    goto :goto_7

    :catch_7
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_b
    :goto_7
    return-void

    :catchall_3
    move-exception v0

    :goto_8
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v10, 0x4000

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->resetJitCounters()V

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_c
    if-eqz v19, :cond_d

    const/4 v2, 0x0

    :try_start_a
    invoke-static {v2, v2}, Landroid/system/Os;->setreuid(II)V

    invoke-static {v2, v2}, Landroid/system/Os;->setregid(II)V
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_d
    :goto_9
    throw v0

    :catch_9
    move-exception v0

    const-string v1, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist preloadSharedLibraries()V
    .locals 3

    const-string v0, "Preloading shared libraries..."

    const-string v1, "Zygote"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "config.disable_renderscript"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string/jumbo v0, "qti_performance"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Couldn\'t load qti_performance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static blacklist preloadTextResources()V
    .locals 0

    invoke-static {}, Landroid/text/Hyphenator;->init()V

    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    return-void
.end method

.method private static blacklist prepareSystemServerProfile(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    const-string/jumbo v1, "installd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v1

    const-string v9, "android"

    const-string/jumbo v10, "primary.prof"

    nop

    const/16 v2, 0x3e8

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v11, 0x0

    aget-object v7, v0, v11

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v9

    move-object v6, v10

    invoke-interface/range {v2 .. v8}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v9}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v9, v3, v5, v0, v6}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist setApiDenylistExemptions([Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist setHiddenApiAccessLogSampleRate(I)V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiAccessLogSamplingRate(I)V

    return-void
.end method

.method public static blacklist setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V
    .locals 0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    invoke-static {p0}, Ldalvik/system/VMRuntime;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    return-void
.end method

.method static blacklist shouldProfileSystemServer()Z
    .locals 1

    const-string/jumbo v0, "profilesystemserver"

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->isExperimentEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "zygote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "zygote_secondary"

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist warmUpJcaProviders()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "Starting installation of AndroidKeyStoreProvider"

    const-wide/16 v3, 0x4000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "ms."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Zygote"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->addUcmKeyStoreProvider()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "Starting warm up of JCA providers"

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    array-length v7, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljava/security/Provider;->warmUpServiceProvision()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warmed up JCA providers in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static blacklist zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .locals 3

    const-wide/16 v0, 0x40

    const-string v2, "ZygoteInit"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
