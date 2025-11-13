.class public Landroid/telephony/ims/compat/feature/MMTelFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "MMTelFeature.java"


# instance fields
.field private final greylist-max-o mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/MMTelFeature$1;-><init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I

    .line 577
    return-void
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I

    .line 583
    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "data"    # [B

    .line 612
    return-void
.end method

.method public greylist-max-o addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 389
    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    return-void
.end method

.method public greylist-max-o createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I

    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 432
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o endSession(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 355
    return-void
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .locals 1

    .line 52
    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    .line 318
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v0
.end method

.method public greylist-max-o getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1

    .line 456
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 442
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initImsSmsImplAdapter()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    return-void
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isConnected(II)Z
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOpened()Z
    .locals 1

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onFeatureReady()V
    .locals 0

    .line 496
    return-void
.end method

.method public greylist-max-o onFeatureRemoved()V
    .locals 0

    .line 503
    return-void
.end method

.method public blacklist onSmsReady(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 595
    return-void
.end method

.method public greylist-max-o removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 397
    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    return-void
.end method

.method public blacklist sendRpSmma(ILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 607
    return-void
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B

    .line 565
    return-void
.end method

.method public blacklist setRetryCount(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "retryCount"    # I

    .line 571
    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 589
    return-void
.end method

.method public greylist-max-o setUiTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 484
    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLocalRingBackTone()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o turnOffIms()V
    .locals 0

    .line 469
    return-void
.end method

.method public greylist-max-o turnOnIms()V
    .locals 0

    .line 463
    return-void
.end method
