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

    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/MMTelFeature$1;-><init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-void
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .locals 0

    return-void
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .locals 0

    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .locals 0

    return-void
.end method

.method public greylist-max-o addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public greylist-max-o createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o endSession(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v0
.end method

.method public greylist-max-o getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

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

    return-void
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isConnected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onFeatureReady()V
    .locals 0

    return-void
.end method

.method public greylist-max-o onFeatureRemoved()V
    .locals 0

    return-void
.end method

.method public blacklist onMemoryAvailable(II)V
    .locals 0

    return-void
.end method

.method public blacklist onSmsReady(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public blacklist sendDtmfEvent(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0

    return-void
.end method

.method public blacklist setRetryCount(III)V
    .locals 0

    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 0

    return-void
.end method

.method public blacklist setSmsc(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setUiTTYMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1

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

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o turnOffIms()V
    .locals 0

    return-void
.end method

.method public greylist-max-o turnOnIms()V
    .locals 0

    return-void
.end method
