.class public Landroid/telephony/ims/RcsUceAdapter;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;,
        Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;,
        Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;,
        Landroid/telephony/ims/RcsUceAdapter$PublishState;,
        Landroid/telephony/ims/RcsUceAdapter$StackPublishTriggerType;,
        Landroid/telephony/ims/RcsUceAdapter$ErrorCode;,
        Landroid/telephony/ims/RcsUceAdapter$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_ETAG_EXPIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_2G:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_3G:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_EHRPD:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_INTERNET_PDN:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_IWLAN:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_DISABLED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_NR5G_VOPS_ENABLED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_MOVE_TO_WLAN:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_UPDATE_TRIGGER_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_FORBIDDEN:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_GENERIC_FAILURE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_INSUFFICIENT_MEMORY:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_LOST_NETWORK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AUTHORIZED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AVAILABLE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_ENABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_FOUND:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_REGISTERED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_REQUEST_TIMEOUT:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_REQUEST_TOO_LARGE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_SERVER_UNAVAILABLE:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_NOT_PUBLISHED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_OK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_OTHER_ERROR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_PUBLISHING:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_RCS_PROVISION_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_REQUEST_TIMEOUT:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PUBLISH_STATE_VOICE_PROVISION_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RcsUceAdapter"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPublishStateCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;",
            "Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubId:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 490
    iput p2, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    .line 492
    return-void
.end method

.method private blacklist addPublishStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 922
    new-instance v0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V

    .line 923
    .local v0, "adapter":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 924
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    monitor-exit v1

    .line 926
    return-object v0

    .line 925
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .locals 2

    .line 944
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 945
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 947
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    return-object v1
.end method

.method private blacklist removePublishStateCallback(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 937
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 938
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mPublishStateCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    monitor-exit v0

    return-object v1

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addOnPublishStateChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 743
    if-eqz p1, :cond_2

    .line 746
    if-eqz p2, :cond_1

    .line 751
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 752
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_0

    .line 758
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsUceAdapter;->addPublishStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    move-result-object v3

    .line 760
    .local v3, "stateCallback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    :try_start_0
    iget v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    nop

    .line 768
    return-void

    .line 763
    :catch_0
    move-exception v4

    .line 764
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error calling IImsRcsController#registerUcePublishStateCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 761
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 762
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 753
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v3    # "stateCallback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    :cond_0
    const-string v3, "addOnPublishStateChangedListener : IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 747
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null OnPublishStateChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUcePublishState()I
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 701
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 702
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_0

    .line 709
    :try_start_0
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-interface {v0, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getUcePublishState(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 712
    :catch_0
    move-exception v3

    .line 713
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#getUcePublishState"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 710
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 711
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 703
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    const-string/jumbo v3, "getUcePublishState: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Can not find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist isUceSettingEnabled()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 841
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 842
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_0

    .line 849
    :try_start_0
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 850
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 849
    invoke-interface {v0, v3, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 851
    :catch_0
    move-exception v3

    .line 852
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#isUceSettingEnabled"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 843
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "isUceSettingEnabled: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Can not find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist removeOnPublishStateChangedListener(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 788
    if-eqz p1, :cond_2

    .line 792
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 793
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_1

    .line 799
    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsUceAdapter;->removePublishStateCallback(Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;

    move-result-object v3

    .line 800
    .local v3, "callback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    if-nez v3, :cond_0

    .line 801
    return-void

    .line 805
    :cond_0
    :try_start_0
    iget v4, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    nop

    .line 813
    return-void

    .line 808
    :catch_0
    move-exception v4

    .line 809
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error calling IImsRcsController#unregisterUcePublishStateCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 806
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 807
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 794
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v3    # "callback":Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
    :cond_1
    const-string/jumbo v3, "removeOnPublishStateChangedListener: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 789
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null OnPublishStateChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestAvailability(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .locals 9
    .param p1, "contactNumber"    # Landroid/net/Uri;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 628
    if-eqz p2, :cond_3

    .line 631
    if-eqz p1, :cond_2

    .line 634
    if-eqz p3, :cond_1

    .line 638
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v6

    .line 639
    .local v6, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v7, 0x1

    const-string v8, "RcsUceAdapter"

    if-eqz v6, :cond_0

    .line 645
    new-instance v5, Landroid/telephony/ims/RcsUceAdapter$2;

    invoke-direct {v5, p0, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$2;-><init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    .line 676
    .local v5, "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 677
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 676
    move-object v0, v6

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController;->requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    nop

    .line 685
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error calling IImsRcsController#requestAvailability"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Remote IMS Service is not available"

    invoke-direct {v1, v2, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 640
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v5    # "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :cond_0
    const-string/jumbo v0, "requestAvailability: IImsRcsController is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v1, "Cannot find remote IMS service"

    invoke-direct {v0, v1, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 635
    .end local v6    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null CapabilitiesCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include non-null contact number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestCapabilities(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .locals 9
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 532
    .local p1, "contactNumbers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    if-eqz p3, :cond_3

    .line 535
    if-eqz p2, :cond_2

    .line 538
    if-eqz p1, :cond_1

    .line 542
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v6

    .line 543
    .local v6, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v7, 0x1

    const-string v8, "RcsUceAdapter"

    if-eqz v6, :cond_0

    .line 549
    new-instance v5, Landroid/telephony/ims/RcsUceAdapter$1;

    invoke-direct {v5, p0, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$1;-><init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    .line 580
    .local v5, "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter;->mContext:Landroid/content/Context;

    .line 581
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 580
    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController;->requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    nop

    .line 589
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error calling IImsRcsController#requestCapabilities"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Remote IMS Service is not available"

    invoke-direct {v1, v2, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 544
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v5    # "internalCallback":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :cond_0
    const-string/jumbo v0, "requestCapabilities: IImsRcsController is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Landroid/telephony/ims/ImsException;

    const-string v1, "Can not find remote IMS service"

    invoke-direct {v0, v1, v7}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 539
    .end local v6    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include non-null contact number list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null CapabilitiesCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUceSettingEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 896
    invoke-direct {p0}, Landroid/telephony/ims/RcsUceAdapter;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 897
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "RcsUceAdapter"

    if-eqz v0, :cond_0

    .line 904
    :try_start_0
    iget v3, p0, Landroid/telephony/ims/RcsUceAdapter;->mSubId:I

    invoke-interface {v0, v3, p1}, Landroid/telephony/ims/aidl/IImsRcsController;->setUceSettingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    nop

    .line 910
    return-void

    .line 905
    :catch_0
    move-exception v3

    .line 906
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#setUceSettingEnabled"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 898
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "setUceSettingEnabled: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Can not find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
