.class public Lcom/samsung/android/knox/dar/VirtualLockUtils;
.super Ljava/lang/Object;
.source "VirtualLockUtils.java"


# static fields
.field public static final blacklist DEFAULT_TRY_RANGE:I = 0xa

.field public static final blacklist HALF_USER_ID_RANGE:I = 0x1f4

.field public static final blacklist MIN_VIRTUAL_USER_ID:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualLockUtils"

.field public static final blacklist VL_RESERVED_USERID_KEY:Ljava/lang/String; = "vl.reserved.userid"

.field public static final blacklist VL_RST_TOKEN_HANDLE_KEY:Ljava/lang/String; = "vl.rst.token.handle"


# instance fields
.field private blacklist mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
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

    .line 30
    iget-object v0, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    if-nez v0, :cond_0

    .line 31
    nop

    .line 32
    const-string v0, "dar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/IDarManagerService;

    move-result-object v0

    .line 33
    .local v0, "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    iput-object v0, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 35
    .end local v0    # "service":Lcom/samsung/android/knox/dar/IDarManagerService;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/dar/VirtualLockUtils;->mDarManagerService:Lcom/samsung/android/knox/dar/IDarManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isVirtualUserId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 39
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$clearResetPasswordToken$5(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 112
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->clearResetPasswordToken(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to clear reset token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getAvailableUserId$2(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 69
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getAvailableUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to get reserved user id for system"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getReservedUserIdForSystem$1(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 57
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->getReservedUserIdForSystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to get reserved user id for system"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getVirtualUsers$3([ILcom/samsung/android/knox/dar/IDarManagerService;)[I
    .locals 3
    .param p0, "EMPTY"    # [I
    .param p1, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 82
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->getVirtualUsers()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to get virtual users"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    return-object p0
.end method

.method static synthetic blacklist lambda$isResetPasswordTokenActive$6(ILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 127
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->isResetPasswordTokenActive(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to check reset token active"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$reserveUserIdForSystem$0(Lcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Integer;
    .locals 3
    .param p0, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 45
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/dar/IDarManagerService;->reserveUserIdForSystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to reserve user id for system"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$resetPasswordWithToken$7(Ljava/lang/String;[BILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 142
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/knox/dar/IDarManagerService;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to reset passwrod with token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$setResetPasswordToken$4([BILcom/samsung/android/knox/dar/IDarManagerService;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "token"    # [B
    .param p1, "userId"    # I
    .param p2, "s"    # Lcom/samsung/android/knox/dar/IDarManagerService;

    .line 97
    :try_start_0
    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/dar/IDarManagerService;->setResetPasswordToken([BI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualLockUtils"

    const-string v2, "failed to set reset token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist clearResetPasswordToken(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 107
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    return v1

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 110
    return v0
.end method

.method public blacklist getAvailableUserId()I
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 75
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    return v0
.end method

.method public blacklist getReservedUserIdForSystem()I
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 63
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    return v0
.end method

.method public blacklist getVirtualUsers()[I
    .locals 3

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 80
    .local v0, "EMPTY":[I
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda5;-><init>([I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 80
    return-object v1
.end method

.method public blacklist isResetPasswordTokenActive(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 122
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 125
    return v0
.end method

.method public blacklist reserveUserIdForSystem()I
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 51
    const/16 v1, -0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 43
    return v0
.end method

.method public blacklist resetPasswordWithToken(Ljava/lang/String;[BI)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .param p3, "userId"    # I

    .line 137
    invoke-static {p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2, p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;[BI)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 140
    return v0
.end method

.method public blacklist setResetPasswordToken([BI)Z
    .locals 3
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 92
    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getDarManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils$$ExternalSyntheticLambda1;-><init>([BI)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 95
    return v0
.end method
