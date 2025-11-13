.class public Landroid/telephony/euicc/EuiccManager;
.super Ljava/lang/Object;
.source "EuiccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccManager$ErrorCode;,
        Landroid/telephony/euicc/EuiccManager$OperationCode;,
        Landroid/telephony/euicc/EuiccManager$OtaStatus;,
        Landroid/telephony/euicc/EuiccManager$EuiccActivationType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DELETE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist ACTION_NOTIFY_CARRIER_SETUP_INCOMPLETE:Ljava/lang/String; = "android.telephony.euicc.action.NOTIFY_CARRIER_SETUP_INCOMPLETE"

.field public static final whitelist ACTION_OTA_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.euicc.action.OTA_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RENAME_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_RESOLVE_ERROR:Ljava/lang/String; = "android.telephony.euicc.action.RESOLVE_ERROR"

.field public static final whitelist ACTION_START_EUICC_ACTIVATION:Ljava/lang/String; = "android.telephony.euicc.action.START_EUICC_ACTIVATION"

.field public static final whitelist ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_ERROR:I = 0x2

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_OK:I = 0x0

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR:I = 0x1

.field public static final whitelist ERROR_ADDRESS_MISSING:I = 0x271b

.field public static final whitelist ERROR_CARRIER_LOCKED:I = 0x2710

.field public static final whitelist ERROR_CERTIFICATE_ERROR:I = 0x271c

.field public static final whitelist ERROR_CONNECTION_ERROR:I = 0x271e

.field public static final whitelist ERROR_DISALLOWED_BY_PPR:I = 0x271a

.field public static final whitelist ERROR_EUICC_INSUFFICIENT_MEMORY:I = 0x2714

.field public static final whitelist ERROR_EUICC_MISSING:I = 0x2716

.field public static final whitelist ERROR_INCOMPATIBLE_CARRIER:I = 0x2713

.field public static final whitelist ERROR_INSTALL_PROFILE:I = 0x2719

.field public static final whitelist ERROR_INVALID_ACTIVATION_CODE:I = 0x2711

.field public static final whitelist ERROR_INVALID_CONFIRMATION_CODE:I = 0x2712

.field public static final whitelist ERROR_INVALID_PORT:I = 0x2721

.field public static final whitelist ERROR_INVALID_RESPONSE:I = 0x271f

.field public static final whitelist ERROR_NO_PROFILES_AVAILABLE:I = 0x271d

.field public static final whitelist ERROR_OPERATION_BUSY:I = 0x2720

.field public static final whitelist ERROR_SIM_MISSING:I = 0x2718

.field public static final whitelist ERROR_TIME_OUT:I = 0x2715

.field public static final whitelist ERROR_UNSUPPORTED_VERSION:I = 0x2717

.field public static final whitelist EUICC_ACTIVATION_TYPE_ACCOUNT_REQUIRED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_BACKUP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_TRANSFER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_IN_PROGRESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_NOT_NEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_STATUS_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_SUCCEEDED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACTIVATION_TYPE:Ljava/lang/String; = "android.telephony.euicc.extra.ACTIVATION_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_OPERATION_CODE"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE"

.field public static final whitelist EXTRA_ENABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.ENABLE_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FORCE_PROVISION:Ljava/lang/String; = "android.telephony.euicc.extra.FORCE_PROVISION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FROM_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.euicc.extra.FROM_SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHYSICAL_SLOT_ID:Ljava/lang/String; = "android.telephony.euicc.extra.PHYSICAL_SLOT_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.euicc.extra.SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_NICKNAME:Ljava/lang/String; = "android.telephony.euicc.extra.SUBSCRIPTION_NICKNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USE_QR_SCANNER:Ljava/lang/String; = "android.telephony.euicc.extra.USE_QR_SCANNER"

.field public static final whitelist META_DATA_CARRIER_ICON:Ljava/lang/String; = "android.telephony.euicc.carriericon"

.field public static final whitelist OPERATION_APDU:I = 0x8

.field public static final whitelist OPERATION_DOWNLOAD:I = 0x5

.field public static final whitelist OPERATION_EUICC_CARD:I = 0x3

.field public static final whitelist OPERATION_EUICC_GSMA:I = 0x7

.field public static final whitelist OPERATION_HTTP:I = 0xb

.field public static final whitelist OPERATION_METADATA:I = 0x6

.field public static final whitelist OPERATION_SIM_SLOT:I = 0x2

.field public static final whitelist OPERATION_SMDX:I = 0x9

.field public static final whitelist OPERATION_SMDX_SUBJECT_REASON_CODE:I = 0xa

.field public static final whitelist OPERATION_SWITCH:I = 0x4

.field public static final whitelist OPERATION_SYSTEM:I = 0x1

.field public static final blacklist SHOULD_RESOLVE_PORT_INDEX_FOR_APPS:J = 0xd628eb8L

.field public static final blacklist SWITCH_WITHOUT_PORT_INDEX_EXCEPTION_ON_DISABLE:J = 0xd046b13L

.field private static final blacklist TAG:Ljava/lang/String; = "EuiccManager"


# instance fields
.field private blacklist mCardId:I

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 857
    nop

    .line 858
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 859
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v1

    iput v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 860
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardId"    # I

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 865
    iput p2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 866
    return-void
.end method

.method private static greylist-max-o getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;
    .locals 1

    .line 1581
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1582
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1583
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1579
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    return-object v0
.end method

.method private blacklist refreshCardIdIfUninitialized()Z
    .locals 3

    .line 1559
    iget v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1560
    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1561
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1562
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v2

    iput v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 1564
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    if-ne v0, v1, :cond_1

    .line 1565
    const/4 v0, 0x0

    return v0

    .line 1567
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o sendUnavailableError(Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1572
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    goto :goto_0

    .line 1573
    :catch_0
    move-exception v0

    .line 1576
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "resolutionIntent"    # Landroid/content/Intent;
    .param p2, "resolutionExtras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1048
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    nop

    .line 1050
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1052
    .local v0, "callbackIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1053
    invoke-static {v0}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1055
    :cond_0
    return-void

    .line 1058
    .end local v0    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    nop

    .line 1062
    return-void

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createForCardId(I)Landroid/telephony/euicc/EuiccManager;
    .locals 2
    .param p1, "cardId"    # I

    .line 875
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist deleteSubscription(ILandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1159
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1161
    return-void

    .line 1164
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1165
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1164
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    nop

    .line 1169
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V
    .locals 8
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 986
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 988
    return-void

    .line 991
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 992
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 991
    move-object v3, p1

    move v4, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    nop

    .line 996
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "options"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1376
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1378
    return-void

    .line 1381
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    nop

    .line 1385
    return-void

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist eraseSubscriptions(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1350
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1352
    return-void

    .line 1355
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptions(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    nop

    .line 1359
    return-void

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultDownloadableSubscriptionList(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1115
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1117
    return-void

    .line 1120
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1121
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1120
    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    nop

    .line 1125
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1085
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1087
    return-void

    .line 1090
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1091
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    nop

    .line 1095
    return-void

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEid()Ljava/lang/String;
    .locals 3

    .line 913
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    const/4 v0, 0x0

    return-object v0

    .line 917
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    .locals 2

    .line 1134
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    return-object v0

    .line 1138
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOtaStatus()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 936
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    const/4 v0, 0x5

    return v0

    .line 940
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getOtaStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSupportedCountries()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1486
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1490
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUnsupportedCountries()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1509
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isEnabled()Z
    .locals 3

    .line 892
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 893
    return v1

    .line 895
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "slotSwitch":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 898
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccManager;->refreshCardIdIfUninitialized()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 897
    :goto_0
    return v1
.end method

.method public whitelist isSimPortAvailable(I)Z
    .locals 3
    .param p1, "portIndex"    # I

    .line 1597
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1598
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1597
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->isSimPortAvailable(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSupportedCountry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryIso"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1539
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    const/4 v0, 0x0

    return v0

    .line 1543
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->isSupportedCountry(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1406
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1408
    return-void

    .line 1411
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    nop

    .line 1415
    return-void

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSupportedCountries(Ljava/util/List;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1432
    .local p1, "supportedCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    return-void

    .line 1436
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x1

    .line 1438
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1439
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1436
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->setSupportedCountries(ZLjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    nop

    .line 1443
    return-void

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUnsupportedCountries(Ljava/util/List;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1460
    .local p1, "unsupportedCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1461
    return-void

    .line 1464
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1466
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1467
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1464
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->setSupportedCountries(ZLjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    nop

    .line 1471
    return-void

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startResolutionActivity(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultIntent"    # Landroid/content/Intent;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1019
    nop

    .line 1020
    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1021
    .local v0, "resolutionIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1024
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1025
    .local v1, "fillInIntent":Landroid/content/Intent;
    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 1029
    return-void

    .line 1022
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid result intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist switchToSubscription(IILandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subscriptionId"    # I
    .param p2, "portIndex"    # I
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1284
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1286
    return-void

    .line 1289
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1294
    .local v0, "canWriteEmbeddedSubscriptions":Z
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1295
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1296
    :cond_2
    const-string v1, "EuiccManager"

    const-string v2, "Not permitted to use switchToSubscription with portIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Must have carrier privileges to use switchToSubscription with portIndex"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "portIndex":I
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    throw v1

    .line 1300
    .restart local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v3, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1301
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1300
    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    .end local v0    # "canWriteEmbeddedSubscriptions":Z
    nop

    .line 1305
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1222
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1224
    return-void

    .line 1227
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1228
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0xd046b13

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1232
    :cond_1
    const-string v0, "EuiccManager"

    const-string/jumbo v1, "switchToSubscription without portIndex is not allowed for disable operation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use switchToSubscription with portIndex API for disable operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "callbackIntent":Landroid/app/PendingIntent;
    throw v0

    .line 1237
    .restart local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_2
    :goto_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1238
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1237
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    nop

    .line 1242
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subscriptionId"    # I
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1321
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1323
    return-void

    .line 1326
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1327
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1326
    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    nop

    .line 1331
    return-void

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
