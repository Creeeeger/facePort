.class public Landroid/telephony/ims/feature/MmTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficDirection;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficType;,
        Landroid/telephony/ims/feature/MmTelFeature$EpsFallbackReason;,
        Landroid/telephony/ims/feature/MmTelFeature$ImsAudioHandler;,
        Landroid/telephony/ims/feature/MmTelFeature$ProcessCallResult;,
        Landroid/telephony/ims/feature/MmTelFeature$Listener;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_HANDLER_ANDROID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIO_HANDLER_BASEBAND:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EPS_FALLBACK_REASON_INVALID:I = -0x1

.field public static final blacklist EPS_FALLBACK_REASON_NO_NETWORK_RESPONSE:I = 0x2

.field public static final blacklist EPS_FALLBACK_REASON_NO_NETWORK_TRIGGER:I = 0x1

.field public static final whitelist EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_USSD:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_USSD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IMS_TRAFFIC_DIRECTION_INCOMING:I = 0x0

.field public static final blacklist IMS_TRAFFIC_DIRECTION_OUTGOING:I = 0x1

.field public static final blacklist IMS_TRAFFIC_TYPE_EMERGENCY:I = 0x0

.field public static final blacklist IMS_TRAFFIC_TYPE_EMERGENCY_SMS:I = 0x1

.field public static final blacklist IMS_TRAFFIC_TYPE_NONE:I = -0x1

.field public static final blacklist IMS_TRAFFIC_TYPE_REGISTRATION:I = 0x5

.field public static final blacklist IMS_TRAFFIC_TYPE_SMS:I = 0x4

.field public static final blacklist IMS_TRAFFIC_TYPE_UT_XCAP:I = 0x6

.field public static final blacklist IMS_TRAFFIC_TYPE_VIDEO:I = 0x3

.field public static final blacklist IMS_TRAFFIC_TYPE_VOICE:I = 0x2

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MmTelFeature"

.field public static final whitelist PROCESS_CALL_CSFB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROCESS_CALL_IMS:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

.field private blacklist mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

.field private blacklist mTrafficCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/telephony/ims/feature/ImsTrafficSessionCallback;",
            "Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSmsReport(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExecutor(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSmsFormat(Landroid/telephony/ims/feature/MmTelFeature;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monMemoryAvailable(Landroid/telephony/ims/feature/MmTelFeature;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->onMemoryAvailable(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onSmsReady()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSms(Landroid/telephony/ims/feature/MmTelFeature;IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telephony/ims/feature/MmTelFeature;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRetryCount(Landroid/telephony/ims/feature/MmTelFeature;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->setRetryCount(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSmsListener(Landroid/telephony/ims/feature/MmTelFeature;Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSmsc(Landroid/telephony/ims/feature/MmTelFeature;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setSmsc(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private greylist-max-o acknowledgeSms(III)V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    return-void
.end method

.method private blacklist acknowledgeSms(III[B)V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III[B)V

    return-void
.end method

.method private greylist-max-o acknowledgeSmsReport(III)V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    return-void
.end method

.method private blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private blacklist getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getSmsFormat()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist onMemoryAvailable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailable(I)V

    return-void
.end method

.method private greylist-max-o onSmsReady()V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onReady()V

    return-void
.end method

.method private greylist-max-o sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method private greylist-max-o setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onFeatureReady()V

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

.method private blacklist setRetryCount(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setRetryCount(II)V

    return-void
.end method

.method private greylist-max-o setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method private blacklist setSmsc(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setSmsc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist changeAudioPath(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist changeOfferedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist clearMediaThreshold(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMediaThreshold is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v0
.end method

.method public whitelist getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    return-object v0
.end method

.method protected greylist-max-o getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getImsSmsImpl()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mSmsImpl:Landroid/telephony/ims/stub/ImsSmsImplBase;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    return-object v0
.end method

.method public greylist-max-o getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

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

.method public whitelist getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    return-object v0
.end method

.method protected greylist-max-o getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
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

.method public final blacklist modifyImsTrafficSession(ILandroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .locals 4

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onModifyImsTrafficSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown ImsTrafficSessionCallback instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmTelCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist notifyCdpnInfo(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist notifyEpsFallbackResult(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final whitelist notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/ImsCallSessionListener;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    nop

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    iget-object v3, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase, callId, and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Ljava/lang/String;Landroid/os/Bundle;)Landroid/telephony/ims/aidl/IImsCallSessionListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist notifyMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyMediaQualityStatusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onMediaQualityStatusChanged(Landroid/telephony/ims/MediaQualityStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaQualityStatus must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallProfile and ImsReasonInfo must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist notifySrvccCanceled()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist notifySrvccCompleted()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist notifySrvccFailed()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist notifySrvccStarted(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final whitelist notifyVoiceMessageCountUpdate(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onVoiceMessageCountUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist onFeatureReady()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist onFeatureRemoved()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist queryCapabilityConfiguration(II)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-object v0
.end method

.method public whitelist queryMediaQualityStatus(I)Landroid/telephony/ims/MediaQualityStatus;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryMediaQualityStatus is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
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

.method public blacklist sendMmsProcType(IZ)V
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

.method public final whitelist setCallAudioHandler(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onAudioModeIsVoipChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method

.method public whitelist setMediaThreshold(ILandroid/telephony/ims/MediaThreshold;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMediaThreshold is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist setTerminalBasedCallWaitingStatus(Z)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x2

    const-string v2, "Not implemented on device."

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public blacklist setTtyMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public whitelist setUiTtyMode(ILandroid/os/Message;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

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

.method public whitelist shouldProcessCall([Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist startImsTrafficSession(IIILjava/util/concurrent/Executor;Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .locals 8

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    if-nez v0, :cond_0

    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p5, v2}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper-IA;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    :try_start_0
    invoke-virtual {v7, p4}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->update(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v7}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getCallbackBinder()Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    move-result-object v5

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onStartImsTrafficSession(IIIILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public final blacklist stopImsTrafficSession(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .locals 4

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->getToken()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onStopImsTrafficSession(I)V

    invoke-virtual {v1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->reset()V

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mTrafficCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown ImsTrafficSessionCallback instance."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
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

.method public blacklist triggerAutoConfigurationForApp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final blacklist triggerEpsFallback(I)V
    .locals 3

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onTriggerEpsFallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
