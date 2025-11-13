.class public Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;
.super Ljava/lang/Object;
.source "SemCodecSolutionService.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemCodecSolutionService"


# instance fields
.field private blacklist mClass:Ljava/lang/Class;

.field private blacklist mService:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .locals 8

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mClass:Ljava/lang/Class;

    .line 26
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mService:Ljava/lang/Object;

    .line 30
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/vendor.samsung.frameworks.codecsolution-service.jar"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 31
    .local v0, "loader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v1, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution"

    invoke-virtual {v0, v1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 32
    .local v1, "classICS":Ljava/lang/Class;
    const-string/jumbo v2, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution$Stub"

    invoke-virtual {v0, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    .local v2, "classStub":Ljava/lang/Class;
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 34
    .local v3, "asInterface":Ljava/lang/reflect/Method;
    const-string/jumbo v5, "vendor.samsung.frameworks.codecsolution.ISehCodecSolution/default"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 35
    .local v5, "service":Landroid/os/IBinder;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    .local v4, "proxy":Ljava/lang/Object;
    iput-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mClass:Ljava/lang/Class;

    .line 38
    iput-object v4, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mService:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "loader":Ldalvik/system/PathClassLoader;
    .end local v1    # "classICS":Ljava/lang/Class;
    .end local v2    # "classStub":Ljava/lang/Class;
    .end local v3    # "asInterface":Ljava/lang/reflect/Method;
    .end local v4    # "proxy":Ljava/lang/Object;
    .end local v5    # "service":Landroid/os/IBinder;
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SemCodecSolutionService"

    const-string v2, "Can\'t load ISehCodecSolution class."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist setAutoFitMode(Z)V
    .locals 6
    .param p1, "use"    # Z

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoFitMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mService:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    :try_start_0
    const-string/jumbo v1, "setAutoFitMode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 71
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .end local v0    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 67
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setSecVideoUseSmartFitting(I)V
    .locals 2
    .param p1, "use"    # I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSecVideoUseSmartFitting("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->setAutoFitMode(Z)V

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->setAutoFitMode(Z)V

    .line 87
    :goto_0
    return-void
.end method

.method public blacklist setSmartFittingMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSmartFittingMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCodecSolutionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mService:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    :try_start_0
    const-string/jumbo v1, "setSmartFittingMode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 55
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;->mService:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .end local v0    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 51
    :cond_1
    :goto_1
    return-void
.end method
