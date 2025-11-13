.class public Landroid/telephony/ims/feature/MmTelFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$ProcessCallResult;,
        Landroid/telephony/ims/feature/MmTelFeature$Listener;,
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_IS_USSD:Ljava/lang/String; = "android.telephony.ims.feature.extra.IS_USSD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

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


# direct methods
.method static bridge synthetic blacklist -$$Nest$macknowledgeSms(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSms(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSmsReport(Landroid/telephony/ims/feature/MmTelFeature;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSmsReport(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$macknowledgeSmsWithPdu(Landroid/telephony/ims/feature/MmTelFeature;II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/feature/MmTelFeature;->acknowledgeSmsWithPdu(II[B)V

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

.method static bridge synthetic blacklist -$$Nest$monSmsReady(Landroid/telephony/ims/feature/MmTelFeature;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onSmsReady()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendRpSmma(Landroid/telephony/ims/feature/MmTelFeature;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->sendRpSmma(Ljava/lang/String;)V

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

.method public constructor whitelist <init>()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 106
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    .line 82
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 93
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 106
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/MmTelFeature$1;-><init>(Landroid/telephony/ims/feature/MmTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    .line 94
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 95
    return-void
.end method

.method private greylist-max-o acknowledgeSms(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 1061
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    .line 1062
    return-void
.end method

.method private greylist-max-o acknowledgeSmsReport(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 1066
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    .line 1067
    return-void
.end method

.method private blacklist acknowledgeSmsWithPdu(II[B)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsWithPdu(II[B)V

    .line 1084
    return-void
.end method

.method private blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private blacklist getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;
    .locals 2

    .line 691
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    monitor-exit v0

    return-object v1

    .line 693
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getSmsFormat()Ljava/lang/String;
    .locals 1

    .line 1100
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o onSmsReady()V
    .locals 1

    .line 1070
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onReady()V

    .line 1071
    return-void
.end method

.method private blacklist sendRpSmma(Ljava/lang/String;)V
    .locals 1
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1079
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->sendRpSmma(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method private greylist-max-o sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 1056
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 1057
    return-void
.end method

.method private greylist-max-o setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 678
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mListener:Landroid/telephony/ims/aidl/IImsMmTelListener;

    .line 680
    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->onFeatureReady()V

    .line 683
    :cond_0
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setRetryCount(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1075
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->setRetryCount(II)V

    .line 1076
    return-void
.end method

.method private greylist-max-o setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 1051
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 1052
    return-void
.end method


# virtual methods
.method public blacklist changeAudioPath(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    return-void
.end method

.method public whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 859
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

    .line 902
    .local p1, "extensionTypes":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    return-void
.end method

.method public whitelist createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 883
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 929
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 910
    .local v0, "s":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    if-eqz v0, :cond_0

    .line 911
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 912
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    return-object v1

    .line 914
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    .line 1128
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mImsMMTelBinder:Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v0
.end method

.method public whitelist getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1009
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

    .line 968
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 969
    .local v0, "ecbmImpl":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v0, :cond_0

    .line 970
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 971
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1

    .line 973
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1020
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

    .line 981
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 982
    .local v0, "multiendpointImpl":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v0, :cond_0

    .line 983
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 984
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    .line 986
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1096
    new-instance v0, Landroid/telephony/ims/stub/ImsSmsImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

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

    .line 1167
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 998
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

    .line 955
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    .line 956
    .local v0, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 958
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    return-object v1

    .line 960
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

    .line 1181
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

    .line 1189
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 724
    if-eqz p1, :cond_0

    .line 727
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 728
    return-void

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MmTelCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist notifyCdpnInfo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "calledPartyNumber"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 821
    return-void
.end method

.method public final whitelist notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 740
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 744
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 745
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_0

    .line 749
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    nop

    .line 753
    return-void

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 746
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallSessionImplBase and Bundle can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 786
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 787
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_0

    .line 791
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    nop

    .line 795
    return-void

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 788
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist notifyRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "reason"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 766
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 770
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 771
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_0

    .line 775
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    nop

    .line 779
    return-void

    .line 776
    :catch_0
    move-exception v1

    .line 777
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 772
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    .end local v0    # "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsCallProfile and ImsReasonInfo must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist notifyVoiceMessageCountUpdate(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 804
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;->getListener()Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 805
    .local v0, "listener":Landroid/telephony/ims/aidl/IImsMmTelListener;
    if-eqz v0, :cond_0

    .line 809
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsMmTelListener;->onVoiceMessageCountUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    nop

    .line 813
    return-void

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 806
    .end local v1    # "e":Landroid/os/RemoteException;
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

    .line 1121
    return-void
.end method

.method public whitelist onFeatureRemoved()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1111
    return-void
.end method

.method public whitelist queryCapabilityConfiguration(II)Z
    .locals 1
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 72
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 709
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-object v0
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

    .line 1175
    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 1199
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 1200
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1202
    :cond_0
    return-void
.end method

.method public whitelist setUiTtyMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1048
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

    .line 1160
    return-void
.end method

.method public whitelist shouldProcessCall([Ljava/lang/String;)I
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 947
    const/4 v0, 0x0

    return v0
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

    .line 1144
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

    .line 1152
    const/4 v0, 0x0

    return v0
.end method
