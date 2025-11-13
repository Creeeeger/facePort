.class public Landroid/telephony/ims/ProvisioningManager;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;,
        Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;,
        Landroid/telephony/ims/ProvisioningManager$Callback;,
        Landroid/telephony/ims/ProvisioningManager$StringResultError;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_RCS_SINGLE_REGISTRATION_CAPABILITY_UPDATE:Ljava/lang/String; = "android.telephony.ims.action.RCS_SINGLE_REGISTRATION_CAPABILITY_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.telephony.ims.extra.STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.ims.extra.SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_1X_EPDG_TIMER_SEC:I = 0x40

.field public static final blacklist KEY_1X_THRESHOLD:I = 0x3b

.field public static final blacklist KEY_AMR_BANDWIDTH_EFFICIENT_PAYLOAD_TYPE:I = 0x32

.field public static final blacklist KEY_AMR_CODEC_MODE_SET_VALUES:I = 0x0

.field public static final blacklist KEY_AMR_DEFAULT_ENCODING_MODE:I = 0x35

.field public static final blacklist KEY_AMR_OCTET_ALIGNED_PAYLOAD_TYPE:I = 0x31

.field public static final blacklist KEY_AMR_WB_BANDWIDTH_EFFICIENT_PAYLOAD_TYPE:I = 0x30

.field public static final blacklist KEY_AMR_WB_CODEC_MODE_SET_VALUES:I = 0x1

.field public static final blacklist KEY_AMR_WB_OCTET_ALIGNED_PAYLOAD_TYPE:I = 0x2f

.field public static final blacklist KEY_DTMF_NB_PAYLOAD_TYPE:I = 0x34

.field public static final blacklist KEY_DTMF_WB_PAYLOAD_TYPE:I = 0x33

.field public static final blacklist KEY_EAB_PROVISIONING_STATUS:I = 0x19

.field public static final blacklist KEY_ENABLE_SILENT_REDIAL:I = 0x6

.field public static final blacklist KEY_LOCAL_BREAKOUT_PCSCF_ADDRESS:I = 0x1f

.field public static final blacklist KEY_LTE_EPDG_TIMER_SEC:I = 0x3e

.field public static final blacklist KEY_LTE_THRESHOLD_1:I = 0x38

.field public static final blacklist KEY_LTE_THRESHOLD_2:I = 0x39

.field public static final blacklist KEY_LTE_THRESHOLD_3:I = 0x3a

.field public static final blacklist KEY_MINIMUM_SIP_SESSION_EXPIRATION_TIMER_SEC:I = 0x3

.field public static final blacklist KEY_MOBILE_DATA_ENABLED:I = 0x1d

.field public static final blacklist KEY_MULTIENDPOINT_ENABLED:I = 0x41

.field public static final blacklist KEY_RCS_AVAILABILITY_CACHE_EXPIRATION_SEC:I = 0x13

.field public static final blacklist KEY_RCS_CAPABILITIES_CACHE_EXPIRATION_SEC:I = 0x12

.field public static final blacklist KEY_RCS_CAPABILITIES_POLL_INTERVAL_SEC:I = 0x14

.field public static final blacklist KEY_RCS_CAPABILITY_DISCOVERY_ENABLED:I = 0x11

.field public static final blacklist KEY_RCS_CAPABILITY_POLL_LIST_SUB_EXP_SEC:I = 0x17

.field public static final blacklist KEY_RCS_MAX_NUM_ENTRIES_IN_RCL:I = 0x16

.field public static final blacklist KEY_RCS_PUBLISH_OFFLINE_AVAILABILITY_TIMER_SEC:I = 0x10

.field public static final blacklist KEY_RCS_PUBLISH_SOURCE_THROTTLE_MS:I = 0x15

.field public static final blacklist KEY_RCS_PUBLISH_TIMER_SEC:I = 0xf

.field public static final blacklist KEY_REGISTRATION_DOMAIN_NAME:I = 0xc

.field public static final blacklist KEY_REGISTRATION_RETRY_BASE_TIME_SEC:I = 0x21

.field public static final blacklist KEY_REGISTRATION_RETRY_MAX_TIME_SEC:I = 0x22

.field public static final blacklist KEY_RTP_SPEECH_END_PORT:I = 0x24

.field public static final blacklist KEY_RTP_SPEECH_START_PORT:I = 0x23

.field public static final blacklist KEY_RTT_ENABLED:I = 0x42

.field public static final blacklist KEY_SIP_ACK_RECEIPT_WAIT_TIME_MS:I = 0x2b

.field public static final blacklist KEY_SIP_ACK_RETRANSMIT_WAIT_TIME_MS:I = 0x2c

.field public static final blacklist KEY_SIP_INVITE_ACK_WAIT_TIME_MS:I = 0x26

.field public static final blacklist KEY_SIP_INVITE_CANCELLATION_TIMER_MS:I = 0x4

.field public static final blacklist KEY_SIP_INVITE_REQUEST_TRANSMIT_INTERVAL_MS:I = 0x25

.field public static final blacklist KEY_SIP_INVITE_RESPONSE_RETRANSMIT_INTERVAL_MS:I = 0x2a

.field public static final blacklist KEY_SIP_INVITE_RESPONSE_RETRANSMIT_WAIT_TIME_MS:I = 0x27

.field public static final blacklist KEY_SIP_KEEP_ALIVE_ENABLED:I = 0x20

.field public static final blacklist KEY_SIP_NON_INVITE_REQUEST_RETRANSMISSION_WAIT_TIME_MS:I = 0x2d

.field public static final blacklist KEY_SIP_NON_INVITE_REQUEST_RETRANSMIT_INTERVAL_MS:I = 0x28

.field public static final blacklist KEY_SIP_NON_INVITE_RESPONSE_RETRANSMISSION_WAIT_TIME_MS:I = 0x2e

.field public static final blacklist KEY_SIP_NON_INVITE_TRANSACTION_TIMEOUT_TIMER_MS:I = 0x29

.field public static final blacklist KEY_SIP_SESSION_TIMER_SEC:I = 0x2

.field public static final blacklist KEY_SMS_FORMAT:I = 0xd

.field public static final blacklist KEY_SMS_OVER_IP_ENABLED:I = 0xe

.field public static final blacklist KEY_SMS_PUBLIC_SERVICE_IDENTITY:I = 0x36

.field public static final blacklist KEY_T1_TIMER_VALUE_MS:I = 0x7

.field public static final blacklist KEY_T2_TIMER_VALUE_MS:I = 0x8

.field public static final blacklist KEY_TF_TIMER_VALUE_MS:I = 0x9

.field public static final blacklist KEY_TRANSITION_TO_LTE_DELAY_MS:I = 0x5

.field public static final blacklist KEY_USE_GZIP_FOR_LIST_SUBSCRIPTION:I = 0x18

.field public static final blacklist KEY_VIDEO_QUALITY:I = 0x37

.field public static final blacklist KEY_VOICE_OVER_WIFI_ENABLED_OVERRIDE:I = 0x1c

.field public static final whitelist KEY_VOICE_OVER_WIFI_ENTITLEMENT_ID:I = 0x43
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_VOICE_OVER_WIFI_MODE_OVERRIDE:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_VOICE_OVER_WIFI_ROAMING_ENABLED_OVERRIDE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_VOIMS_OPT_IN_STATUS:I = 0x44

.field public static final blacklist KEY_VOLTE_PROVISIONING_STATUS:I = 0xa

.field public static final blacklist KEY_VOLTE_USER_OPT_IN_STATUS:I = 0x1e

.field public static final blacklist KEY_VT_PROVISIONING_STATUS:I = 0xb

.field public static final blacklist KEY_WIFI_EPDG_TIMER_SEC:I = 0x3f

.field public static final blacklist KEY_WIFI_THRESHOLD_A:I = 0x3c

.field public static final blacklist KEY_WIFI_THRESHOLD_B:I = 0x3d

.field public static final blacklist PROVISIONING_RESULT_UNKNOWN:I = -0x1

.field public static final whitelist PROVISIONING_VALUE_DISABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_VALUE_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SMS_FORMAT_3GPP:I = 0x1

.field public static final blacklist SMS_FORMAT_3GPP2:I = 0x0

.field public static final whitelist STATUS_CAPABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_CARRIER_NOT_CAPABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_DEVICE_NOT_CAPABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STRING_QUERY_RESULT_ERROR_GENERIC:Ljava/lang/String; = "STRING_QUERY_RESULT_ERROR_GENERIC"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STRING_QUERY_RESULT_ERROR_NOT_READY:Ljava/lang/String; = "STRING_QUERY_RESULT_ERROR_NOT_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ProvisioningManager"

.field public static final blacklist VIDEO_QUALITY_HIGH:I = 0x1

.field public static final blacklist VIDEO_QUALITY_LOW:I


# instance fields
.field private blacklist mSubId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    iput p1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    .line 1216
    return-void
.end method

.method public static whitelist createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;
    .locals 2
    .param p0, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1205
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    new-instance v0, Landroid/telephony/ims/ProvisioningManager;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ProvisioningManager;-><init>(I)V

    return-object v0

    .line 1206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid subscription ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .line 1947
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1948
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1949
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1945
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1950
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 1953
    return-object v0

    .line 1951
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist getProvisioningIntValue(I)I
    .locals 2
    .param p1, "key"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1354
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningInt(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProvisioningStatusForCapability(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1493
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningStatusForCapability(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1494
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProvisioningStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1376
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRcsProvisioningStatusForCapability(I)Z
    .locals 3
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1522
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getRcsProvisioningStatusForCapability(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRcsProvisioningStatusForCapability(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1554
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getRcsProvisioningStatusForCapability(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isProvisioningRequiredForCapability(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1651
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isProvisioningRequiredForCapability(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRcsProvisioningRequiredForCapability(II)Z
    .locals 2
    .param p1, "capability"    # I
    .param p2, "tech"    # I

    .line 1679
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isRcsVolteSingleRegistrationCapable()Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1828
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRcsVolteSingleRegistrationCapable(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist notifyRcsAutoConfigurationReceived([BZ)V
    .locals 2
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1705
    if-eqz p1, :cond_0

    .line 1710
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->notifyRcsAutoConfigurationReceived(I[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    nop

    .line 1715
    return-void

    .line 1711
    :catch_0
    move-exception v0

    .line 1712
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1706
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null config XML file."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerFeatureProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1307
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1309
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    .line 1310
    invoke-virtual {p2}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->getBinder()Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v2

    .line 1309
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    nop

    .line 1316
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1311
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ProvisioningManager$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ProvisioningManager$Callback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1247
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    nop

    .line 1253
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1248
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist registerRcsProvisioningCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1877
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1879
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->getBinder()Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    nop

    .line 1885
    return-void

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1880
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1881
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist setProvisioningIntValue(II)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1405
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setImsProvisioningInt(III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setProvisioningStatusForCapability(IIZ)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z

    .line 1459
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setImsProvisioningStatusForCapability(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    nop

    .line 1464
    return-void

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setProvisioningStringValue(ILjava/lang/String;)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1428
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setImsProvisioningString(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 4
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 1794
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    nop

    .line 1800
    return-void

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1795
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1796
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist setRcsProvisioningStatusForCapability(IIZ)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "tech"    # I
    .param p3, "isProvisioned"    # Z

    .line 1623
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setRcsProvisioningStatusForCapability(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    nop

    .line 1628
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRcsProvisioningStatusForCapability(IZ)V
    .locals 3
    .param p1, "capability"    # I
    .param p2, "isProvisioned"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1591
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setRcsProvisioningStatusForCapability(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    nop

    .line 1596
    return-void

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist triggerRcsReconfiguration()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1938
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->triggerRcsReconfiguration(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    nop

    .line 1942
    return-void

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterFeatureProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    .line 1331
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    .line 1332
    invoke-virtual {p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->getBinder()Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v2

    .line 1331
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    nop

    .line 1336
    return-void

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/ims/ProvisioningManager$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1276
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    nop

    .line 1280
    return-void

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterRcsProvisioningCallback(Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1915
    :try_start_0
    invoke-static {}, Landroid/telephony/ims/ProvisioningManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ProvisioningManager;->mSubId:I

    .line 1916
    invoke-virtual {p1}, Landroid/telephony/ims/ProvisioningManager$RcsProvisioningCallback;->getBinder()Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v2

    .line 1915
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    nop

    .line 1920
    return-void

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
