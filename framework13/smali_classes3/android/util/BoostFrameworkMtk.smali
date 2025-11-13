.class public Landroid/util/BoostFrameworkMtk;
.super Ljava/lang/Object;
.source "BoostFrameworkMtk.java"


# static fields
.field private static final blacklist PERFORMANCE_CLASS:Ljava/lang/String; = "com.mediatek.boostframework.Performance"

.field private static final blacklist PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/mediatek-framework.jar"

.field public static final blacklist PERF_RES_CPUCORE_MAX_CLUSTER_0:I = 0x804000

.field public static final blacklist PERF_RES_CPUCORE_MAX_CLUSTER_1:I = 0x804100

.field public static final blacklist PERF_RES_CPUCORE_MIN_CLUSTER_0:I = 0x800000

.field public static final blacklist PERF_RES_CPUCORE_MIN_CLUSTER_1:I = 0x800100

.field public static final blacklist PERF_RES_GPU_FREQ_MAX:I = 0xc04000

.field public static final blacklist PERF_RES_GPU_FREQ_MIN:I = 0xc00000

.field public static final blacklist PERF_RES_SCHED_BOOST:I = 0x1410000

.field private static final blacklist TAG:Ljava/lang/String; = "BoostFrameworkMtk"

.field private static blacklist sAcquireFunc:Ljava/lang/reflect/Method;

.field private static blacklist sIsLoaded:Z

.field private static blacklist sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sReleaseFunc:Ljava/lang/reflect/Method;


# instance fields
.field private blacklist mPerf:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFrameworkMtk;->sIsLoaded:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Landroid/util/BoostFrameworkMtk;->sPerfClass:Ljava/lang/Class;

    .line 56
    sput-object v0, Landroid/util/BoostFrameworkMtk;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 57
    sput-object v0, Landroid/util/BoostFrameworkMtk;->sReleaseFunc:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/BoostFrameworkMtk;->mPerf:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/framework/mediatek-framework.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "fileJarPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Landroid/util/BoostFrameworkMtk;->initFunctions()V

    .line 71
    :try_start_0
    sget-object v1, Landroid/util/BoostFrameworkMtk;->sPerfClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/util/BoostFrameworkMtk;->mPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoostFrameworkMtk() : Exception_2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFrameworkMtk"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist initFunctions()V
    .locals 6

    .line 81
    const-class v0, Landroid/util/BoostFrameworkMtk;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-boolean v1, Landroid/util/BoostFrameworkMtk;->sIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 84
    :try_start_1
    const-string v1, "com.mediatek.boostframework.Performance"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/util/BoostFrameworkMtk;->sPerfClass:Ljava/lang/Class;

    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [I

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 87
    .local v1, "argClasses":[Ljava/lang/Class;
    sget-object v2, Landroid/util/BoostFrameworkMtk;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockAcquire"

    invoke-virtual {v2, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFrameworkMtk;->sAcquireFunc:Ljava/lang/reflect/Method;

    .line 89
    new-array v2, v3, [Ljava/lang/Class;

    move-object v1, v2

    .line 90
    sget-object v2, Landroid/util/BoostFrameworkMtk;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v3, "perfLockRelease"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFrameworkMtk;->sReleaseFunc:Ljava/lang/reflect/Method;

    .line 92
    sput-boolean v4, Landroid/util/BoostFrameworkMtk;->sIsLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v1    # "argClasses":[Ljava/lang/Class;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BoostFrameworkMtk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BoostFrameworkMtk() : Exception_1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public varargs blacklist perfLockAcquire(I[I)I
    .locals 6
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .line 103
    const/4 v0, -0x1

    .line 105
    .local v0, "ret":I
    sget-object v1, Landroid/util/BoostFrameworkMtk;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 106
    return v0

    .line 109
    :cond_0
    if-eqz v1, :cond_1

    .line 110
    :try_start_0
    iget-object v2, p0, Landroid/util/BoostFrameworkMtk;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 113
    .end local v1    # "retVal":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFrameworkMtk"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 116
    :goto_1
    return v0
.end method

.method public blacklist perfLockRelease()I
    .locals 4

    .line 121
    const/4 v0, -0x1

    .line 123
    .local v0, "ret":I
    sget-object v1, Landroid/util/BoostFrameworkMtk;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 124
    return v0

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    :try_start_0
    iget-object v2, p0, Landroid/util/BoostFrameworkMtk;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 131
    .end local v1    # "retVal":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BoostFrameworkMtk"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    nop

    .line 134
    :goto_1
    return v0
.end method
