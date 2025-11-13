.class public Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.super Ljava/lang/Object;
.source "ImsRegistrationImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsDeregistrationReason;,
        Landroid/telephony/ims/stub/ImsRegistrationImplBase$ImsRegistrationTech;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsRegistrationImplBase"

.field public static final blacklist REASON_ALLOWED_NETWORK_TYPES_CHANGED:I = 0x3

.field public static final blacklist REASON_HANDOVER_FAILED:I = 0x6

.field public static final blacklist REASON_NON_IMS_CAPABLE_NETWORK:I = 0x4

.field public static final blacklist REASON_RADIO_POWER_OFF:I = 0x5

.field public static final blacklist REASON_SIM_REFRESH:I = 0x2

.field public static final blacklist REASON_SIM_REMOVED:I = 0x1

.field public static final blacklist REASON_UNKNOWN:I = 0x0

.field public static final blacklist REASON_VOPS_NOT_SUPPORTED:I = 0x7

.field private static final greylist-max-o REGISTRATION_STATE_UNKNOWN:I = -0x1

.field public static final whitelist REGISTRATION_TECH_3G:I = 0x4

.field public static final whitelist REGISTRATION_TECH_CROSS_SIM:I = 0x2

.field public static final whitelist REGISTRATION_TECH_IWLAN:I = 0x1

.field public static final whitelist REGISTRATION_TECH_LTE:I = 0x0

.field public static final blacklist REGISTRATION_TECH_MAX:I = 0x5

.field public static final whitelist REGISTRATION_TECH_NONE:I = -0x1

.field public static final whitelist REGISTRATION_TECH_NR:I = 0x3


# instance fields
.field private final greylist-max-o mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mEmergencyLastDisconnectRadioTech:I

.field private blacklist mEmergencyLastDisconnectSuggestedAction:I

.field private blacklist mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private blacklist mEmergencyRegistrationState:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mLastDisconnectRadioTech:I

.field private blacklist mLastDisconnectSuggestedAction:I

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

.field private greylist-max-o mRegistrationState:I

.field private blacklist mUris:[Landroid/net/Uri;

.field private blacklist mUrisSet:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$BV9oU03g3HLb6DKB2_LJ-u6UnBM(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onSubscriberAssociatedUriChanged$5([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationAttributes(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)Landroid/telephony/ims/ImsRegistrationAttributes;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveEmergencyRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRegistrationCallback(Landroid/telephony/ims/stub/ImsRegistrationImplBase;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    iput v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    new-array v0, v1, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist addEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V

    return-void
.end method

.method private greylist-max-o addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V

    return-void
.end method

.method private blacklist broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method private blacklist isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic blacklist lambda$onDeregistered$2(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onDeregistered() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onDeregistered$3(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregisteredWithDetails(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onDeregistered() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onRegistered$0(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onRegistered(int, Set) - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onRegistering$1(Landroid/telephony/ims/ImsRegistrationAttributes;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onRegistering(int, Set) - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$onSubscriberAssociatedUriChanged$5([Landroid/net/Uri;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTechnologyChangeFailed$4(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onTechnologyChangeFailed() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "onSubscriberAssociatedUriChanged() - Skipping callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRegistrationImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist removeEmergencyRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private greylist-max-o removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private blacklist updateNewCallbackWithState(Landroid/telephony/ims/aidl/IImsRegistrationCallback;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    :goto_1
    nop

    if-eqz p2, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    :goto_2
    nop

    if-eqz p2, :cond_3

    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    goto :goto_3

    :cond_3
    iget v4, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    :goto_3
    nop

    if-eqz p2, :cond_4

    iget v5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    goto :goto_4

    :cond_4
    iget v5, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    :goto_4
    nop

    iget-boolean v6, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    iget-object v7, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    goto :goto_5

    :pswitch_1
    invoke-interface {p1, v2}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    goto :goto_5

    :pswitch_2
    invoke-interface {p1, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRegistrationCallback;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    nop

    :goto_5
    if-eqz v6, :cond_5

    invoke-direct {p0, p1, v7}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onSubscriberAssociatedUriChanged(Landroid/telephony/ims/aidl/IImsRegistrationCallback;[Landroid/net/Uri;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    goto :goto_0

    :cond_0
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    new-instance v2, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

    goto :goto_0

    :cond_0
    const-string v1, "ImsRegistrationImplBase"

    const-string/jumbo v2, "updateToDisconnectedState: no ImsReasonInfo provided."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyRegistrationState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectSuggestedAction:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mEmergencyLastDisconnectRadioTech:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    iput p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectCause:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectSuggestedAction:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLastDisconnectRadioTech:I

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
.method public final blacklist clearRegistrationCache()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V

    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, p3, v1, v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p3}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    :goto_0
    nop

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    :goto_0
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p2, p3, p4}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final blacklist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p3}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedEmergencyState(Landroid/telephony/ims/ImsReasonInfo;II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToDisconnectedState(Landroid/telephony/ims/ImsReasonInfo;II)V

    :goto_0
    if-eqz p1, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    :goto_1
    new-instance v3, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, p2, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsReasonInfo;II)V

    invoke-direct {p0, v3, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final whitelist onDeregistered(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/SipDetails;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;IILandroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method public final whitelist onRegistered(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public final whitelist onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    :goto_0
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final whitelist onRegistering(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public final whitelist onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToEmergencyState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->updateToState(Landroid/telephony/ims/ImsRegistrationAttributes;I)V

    :goto_0
    new-instance v1, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final whitelist onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUris:[Landroid/net/Uri;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mUrisSet:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsRegistrationImplBase;[Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mRegistrationAttributes:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/telephony/ims/ImsRegistrationAttributes;-><init>(IIILjava/util/Set;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    :goto_0
    nop

    invoke-virtual {p0, p2, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->onTechnologyChangeFailed(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method public final blacklist onTechnologyChangeFailed(Landroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->isEmergency(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/ims/ImsRegistrationAttributes;->getRegistrationTechnology()I

    move-result v1

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    :goto_0
    new-instance v3, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v3, v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->broadcastToCallbacksLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method

.method public blacklist triggerDeregistration(I)V
    .locals 0

    return-void
.end method

.method public whitelist triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist triggerSipDelegateDeregistration()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist updateSipDelegateRegistration()V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
