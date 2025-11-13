.class public Lcom/samsung/android/telecom/SemTelecomManager;
.super Ljava/lang/Object;
.source "SemTelecomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;,
        Lcom/samsung/android/telecom/SemTelecomManager$CallFilter;,
        Lcom/samsung/android/telecom/SemTelecomManager$Extra;,
        Lcom/samsung/android/telecom/SemTelecomManager$Event;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CALLER:Ljava/lang/String; = "caller"

.field public static final blacklist CALL_FILTER_ALL:I = 0x3

.field public static final blacklist CALL_FILTER_MANAGED:I = 0x2

.field public static final blacklist CALL_FILTER_SELF_MANAGED:I = 0x1

.field public static final blacklist CAUSE:Ljava/lang/String; = "cause"

.field public static final blacklist EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final blacklist KEYCODE_INVALID:I = -0x1

.field public static final blacklist KEY_CODE:Ljava/lang/String; = "key_code"

.field public static final blacklist REASON:Ljava/lang/String; = "reason"

.field private static final blacklist SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

.field private static final blacklist TAG:Ljava/lang/String; = "SemTelecomManager"

.field private static blacklist sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;-><init>(Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient-IA;)V

    sput-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/telecom/SemTelecomManager;-><init>(Landroid/content/Context;Lcom/samsung/android/internal/telecom/ISamsungTelecomService;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/internal/telecom/ISamsungTelecomService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    return-void
.end method

.method private blacklist getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-nez v0, :cond_2

    const-string v0, "samsung_telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    :try_start_1
    sput-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    sget-object v2, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    invoke-interface {v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/telecom/SemTelecomManager;->SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_2
    sput-object v3, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    return-object v0
.end method

.method public static blacklist hasSamsungTelecomSystemFeature()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->isSupportHeadlessDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSamsungTelecomSystemFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemTelecomManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist isSupportHeadlessDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist resetServiceCache()V
    .locals 4

    sget-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    invoke-interface {v1}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telecom/SemTelecomManager;->SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist acceptRingingCall()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#acceptRingingCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCall(I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#acceptRingingCall - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCall(Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#acceptRingingCall - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public blacklist acceptRingingCallWithVideoState(I)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    move-object v0, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemTelecomManager"

    const-string v2, "Error calling ISamsungTelecomService#acceptRingingCallWithVideoState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCallWithVideoState(II)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling ISamsungTelecomService#acceptRingingCallWithVideoState - keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemTelecomManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCallWithVideoState(ILandroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v6

    if-eqz v6, :cond_1

    nop

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v3, p2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    move-object v0, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling ISamsungTelecomService#acceptRingingCallWithVideoState - reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemTelecomManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public blacklist addConferenceParticipants(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist endCall()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#endCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist endCall(I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#endCall - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist endCall(Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#endCall - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public blacklist getAllowedPhoneAccountInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAllowedPhoneAccountInfo(ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAllowedPhoneAccounts(ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/telecom/SemPhoneAccount;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->getAllowedPhoneAccounts(ZZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#getAllowedPhoneAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllowedSelfManagedPhoneAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "14.0"
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isInCall(IZ)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->isInCall(IZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#isInCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist showInCallScreen(ZLandroid/os/UserHandle;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->showInCallScreen(ZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#showCallScreen"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist silenceRinger()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#silenceRinger"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist silenceRinger(I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#silenceRinger - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist silenceRinger(Landroid/os/Bundle;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#silenceRinger - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method
