.class public abstract Landroid/telecom/CallDiagnosticService;
.super Landroid/app/Service;
.source "CallDiagnosticService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallDiagnosticService"


# instance fields
.field private blacklist mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

.field private final blacklist mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call$Details;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDiagnosticCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/CallDiagnostics;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$3vbqIExCyIhISmunk1D_iCb7UAE(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->lambda$handleBluetoothCallQualityReport$4(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XQOrrV2eTQXcCYv45uNhD_aEROU(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallRemoved$2(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iCptmB9yLGHEJYrokTsSX-iL0Tg(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->lambda$handleCallAdded$0(Landroid/telecom/Call$Details;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBluetoothCallQualityReport(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallAdded(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallAdded(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallDisconnected(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallQualityChanged(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallRemoved(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCallUpdated(Landroid/telecom/CallDiagnosticService;Landroid/telecom/ParcelableCall;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleCallUpdated(Landroid/telecom/ParcelableCall;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClearDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/CallDiagnosticService;->handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleReceivedD2DMessage(Landroid/telecom/CallDiagnosticService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleReceivedD2DMessage(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/CallDiagnosticService;->handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSetAdapter(Landroid/telecom/CallDiagnosticService;Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/CallDiagnosticService;->handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/telecom/CallDiagnosticService$1;

    invoke-direct {v0, p0}, Landroid/telecom/CallDiagnosticService$1;-><init>(Landroid/telecom/CallDiagnosticService;)V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist handleBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 2

    const-string v0, "handleBluetoothCallQualityReport; report=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/BluetoothCallQualityReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist handleCallAdded(Landroid/telecom/ParcelableCall;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleCallAdded: callId=%s - added"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/Call$Details;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private blacklist handleCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 5

    const-string v0, "handleCallDisconnected: call=%s; cause=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(Landroid/telephony/ims/ImsReasonInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyDisconnectCause()I

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getTelephonyPreciseDisconnectCause()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/telecom/CallDiagnostics;->onCallDisconnected(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "handleCallDisconnected: call=%s; cause=%s; %s"

    filled-new-array {p1, p2, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist handleCallQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .locals 2

    const-string v0, "handleCallQualityChanged; call=%s, cq=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/telecom/CallDiagnostics;->onCallQualityReceived(Landroid/telephony/CallQuality;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleCallRemoved(Ljava/lang/String;)V
    .locals 3

    const-string v0, "handleCallRemoved: callId=%s - removed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleCallUpdated(Landroid/telecom/ParcelableCall;)V
    .locals 5

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleCallUpdated: callId=%s - updated"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallDiagnostics;

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v4, p0, Landroid/telecom/CallDiagnosticService;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v1}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private blacklist handleClearDiagnosticMessage(Landroid/telecom/CallDiagnostics;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->clearDiagnosticMessage(Ljava/lang/String;I)V

    const-string v1, "handleClearDiagnosticMessage: call=%s; msg=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handleClearDiagnosticMessage: call=%s; msg=%d failed %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private blacklist handleDisplayDiagnosticMessage(Landroid/telecom/CallDiagnostics;ILjava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    const-string v1, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2, p3, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handleDisplayDiagnosticMessage: call=%s; msg=%d/%s failed %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private blacklist handleReceivedD2DMessage(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "handleReceivedD2DMessage: callId=%s, msg=%d/%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallDiagnostics;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2, p3}, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/CallDiagnostics;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleSendDeviceToDeviceMessage(Landroid/telecom/CallDiagnostics;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/telecom/CallDiagnostics;->getCallId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    const-string v1, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handleSendDeviceToDeviceMessage: call=%s; msg=%d/%d failed %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private blacklist handleSetAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService;->mAdapter:Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    return-void
.end method

.method private synthetic blacklist lambda$handleBluetoothCallQualityReport$4(Landroid/telecom/BluetoothCallQualityReport;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V

    return-void
.end method

.method private synthetic blacklist lambda$handleCallAdded$0(Landroid/telecom/Call$Details;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallListener:Landroid/telecom/CallDiagnostics$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/CallDiagnostics;->setListener(Landroid/telecom/CallDiagnostics$Listener;)V

    invoke-virtual {v0, p2}, Landroid/telecom/CallDiagnostics;->setCallId(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/telecom/CallDiagnosticService;->mDiagnosticCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A valid DiagnosticCall instance was not provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic blacklist lambda$handleCallRemoved$2(Landroid/telecom/CallDiagnostics;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnosticService;->onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleCallUpdated$1(Landroid/telecom/CallDiagnostics;Landroid/telecom/Call$Details;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/CallDiagnostics;->handleCallUpdated(Landroid/telecom/Call$Details;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleReceivedD2DMessage$3(Landroid/telecom/CallDiagnostics;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/CallDiagnostics;->onReceiveDeviceToDeviceMessage(II)V

    return-void
.end method


# virtual methods
.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/telecom/CallDiagnosticService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onBind!"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;-><init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder-IA;)V

    return-object v0
.end method

.method public abstract whitelist onBluetoothCallQualityReportReceived(Landroid/telecom/BluetoothCallQualityReport;)V
.end method

.method public abstract whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
.end method

.method public abstract whitelist onInitializeCallDiagnostics(Landroid/telecom/Call$Details;)Landroid/telecom/CallDiagnostics;
.end method

.method public abstract whitelist onRemoveCallDiagnostics(Landroid/telecom/CallDiagnostics;)V
.end method
