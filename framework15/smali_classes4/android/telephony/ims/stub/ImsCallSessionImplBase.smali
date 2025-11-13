.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;,
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$MediaStreamDirection;,
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$MediaStreamType;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ImsCallSessionImplBase"

.field public static final blacklist MEDIA_STREAM_DIRECTION_DOWNLINK:I = 0x2

.field public static final blacklist MEDIA_STREAM_DIRECTION_UPLINK:I = 0x1

.field public static final blacklist MEDIA_STREAM_TYPE_AUDIO:I = 0x1

.field public static final blacklist MEDIA_STREAM_TYPE_VIDEO:I = 0x2

.field public static final whitelist USSD_MODE_NOTIFY:I = 0x0

.field public static final whitelist USSD_MODE_REQUEST:I = 0x1


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mServiceImpl:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method


# virtual methods
.method public whitelist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallSessionImplBase callSessionNotifyAnbr - mediaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionImplBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist cancelTransferCall()V
    .locals 0

    return-void
.end method

.method public whitelist test-api close()V
    .locals 0

    return-void
.end method

.method public whitelist deflect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist extendToConference([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getServiceImpl()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public whitelist inviteParticipants([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist isInCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMultiparty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist merge()V
    .locals 0

    return-void
.end method

.method public blacklist notifyReadyToHandleImsCallbacks()V
    .locals 0

    return-void
.end method

.method public whitelist reject(I)V
    .locals 0

    return-void
.end method

.method public whitelist removeParticipants([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public whitelist sendDtmf(CLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public blacklist sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist sendRttMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public whitelist sendRttModifyResponse(Z)V
    .locals 0

    return-void
.end method

.method public whitelist sendUssd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public whitelist setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final greylist-max-o setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    return-void
.end method

.method public whitelist setMute(Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method

.method public whitelist start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public whitelist startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public whitelist startDtmf(C)V
    .locals 0

    return-void
.end method

.method public whitelist stopDtmf()V
    .locals 0

    return-void
.end method

.method public whitelist terminate(I)V
    .locals 0

    return-void
.end method

.method public blacklist transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 0

    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public whitelist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method
