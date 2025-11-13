.class public final Lcom/android/systemui/keyguard/KeyguardUnlockInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static final HISTORY_MAX:I

.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

.field public static authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

.field public static biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public static final history:Ljava/util/Queue;

.field public static securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

.field public static unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v1, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    const/16 v0, 0x32

    sput v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->HISTORY_MAX:I

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static leaveHistory(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeDateTimeStr(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->history:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->HISTORY_MAX:I

    if-le v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-boolean v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->DEBUG:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "KeyguardUnlockInfo"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static synthetic leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final reset()V
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    return-void
.end method

.method public static final setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_BIOMETRICS:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAuthDetail: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SECURITY_MODE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAuthDetail: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setAuthDetailSkipBouncer(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;->AUTH_SKIP_BOUNCER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->authType:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$AuthType;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->securityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->skipBouncerReason:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAuthDetailSkipBouncer: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setUnlockTrigger already set type "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void

    :cond_1
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setUnlockTrigger: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUnlockTriggerByRemoteLock(I)V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KNOX_GUARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_RMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_CARRIER:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FMM:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    :goto_0
    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUnlockTriggerByRemoteLock: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V
    .locals 5

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo;

    const/4 v2, 0x0

    if-ne v0, p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setUnlockTriggerIfNotSet already set type "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setUnlockTriggerIfNotSet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->leaveHistory$default(Lcom/android/systemui/keyguard/KeyguardUnlockInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v0, v1, :cond_4

    sput-object p0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    :cond_4
    return-void
.end method
