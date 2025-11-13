.class public Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;
.super Ljava/lang/Object;
.source "DualDarAuthUtils.java"


# static fields
.field public static final blacklist DDAR_INNER_AUTH_USERID_KEY:Ljava/lang/String; = "ddar.inner.auth.userid"

.field public static final blacklist DDAR_INNER_MAIN_USERID_KEY:Ljava/lang/String; = "ddar.inner.main.userid"

.field private static final blacklist TAG:Ljava/lang/String; = "DualDarAuthUtils"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

.field private final blacklist mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 35
    return-void
.end method

.method private blacklist getDarManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/dar/IDarManagerService;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_0

    .line 39
    nop

    .line 40
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getInnerAuthUserForDo$4(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 104
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getInnerAuthUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getInnerAuthUserId$1(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 64
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getInnerAuthUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getMainUserId$3(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "innerAuthUserId"    # I
    .param p1, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 94
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getMainUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getPasswordMinimumLengthForInner$5(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 121
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getPasswordMinimumLengthForInner()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$setInnerAuthUserId$0(IILcom/samsung/android/knox/dar/IDarManagerService;)V
    .locals 3
    .param p0, "innerAuthUserId"    # I
    .param p1, "userId"    # I
    .param p2, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 54
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setInnerAuthUserId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$setMainUserId$2(IILcom/samsung/android/knox/dar/IDarManagerService;)V
    .locals 3
    .param p0, "mainUserId"    # I
    .param p1, "innerAuthUserId"    # I
    .param p2, "service"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 81
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setMainUserId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DualDarAuthUtils"

    const-string v2, "failed due to remote error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getInnerAuthUserForDo()I
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 112
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    return v0
.end method

.method public blacklist getInnerAuthUserId(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 69
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    return v0
.end method

.method public blacklist getMainUserId(I)I
    .locals 2
    .param p1, "innerAuthUserId"    # I

    .line 89
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    return p1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, -0x2710

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    return v0
.end method

.method public blacklist getPasswordMinimumLengthForInner()I
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    return v0
.end method

.method public blacklist isInnerAuthUserForDo(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserForDo()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setInnerAuthUserId(II)V
    .locals 2
    .param p1, "innerAuthUserId"    # I
    .param p2, "userId"    # I

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    return-void
.end method

.method public blacklist setMainUserId(II)V
    .locals 2
    .param p1, "mainUserId"    # I
    .param p2, "innerAuthUserId"    # I

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 86
    return-void
.end method
