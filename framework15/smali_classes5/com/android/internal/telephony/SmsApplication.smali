.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;,
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;,
        Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

.field private static final blacklist CARRIER_TAG:Ljava/lang/String; = "Carrier"

.field private static final blacklist CODE_UNKNOWN:Ljava/lang/String; = "NONE"

.field private static final blacklist COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final blacklist COUNTRYISO_OPENBUYER_CONFIG_XML:Ljava/lang/String; = "/system/etc/countryISO_openBuyer_config.xml"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_MULTIUSER:Z = false

.field private static final blacklist DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

.field private static final blacklist DEFAULT_MSGAPP_SYSTEMPROPERTY:Ljava/lang/String; = "persist.ril.config.defaultmsgapp"

.field public static final blacklist DEFAULT_MSG_APP_INFO_LOGGING:Ljava/lang/String; = "android.provider.action.DEFAULT_MSG_APP_INFO_LOGGING"

.field private static final blacklist DEFAULT_MSG_CONFIG_XML:Ljava/lang/String; = "/system/etc/default_msg_config.xml"

.field private static final blacklist DOCOMO_MESSAGES:Ljava/lang/String; = "com.nttdocomo.android.msg"

.field private static final blacklist GOOGLE_MESSAGE_PACKAGE:Ljava/lang/String; = "com.google.android.apps.messaging"

.field private static final blacklist KDDI_MESSAGES:Ljava/lang/String; = "com.kddi.android.cmail"

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field public static final blacklist MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field private static final blacklist NEW_SEC_SMS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final blacklist NSRI_PACKAGE_NAME:Ljava/lang/String; = "com.tion.securitysms"

.field private static final blacklist OPEN_TAG:Ljava/lang/String; = "Open"

.field public static final blacklist PERMISSION_MONITOR_DEFAULT_SMS_PACKAGE:Ljava/lang/String; = "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

.field public static final blacklist PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final blacklist SALES_CODE:Ljava/lang/String;

.field private static final blacklist SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final blacklist SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final blacklist SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final blacklist SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final blacklist SEC_SMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final blacklist SM_TAG:Ljava/lang/String; = "SM"

.field private static final blacklist SOFTBANK_MESSAGES:Ljava/lang/String; = "jp.softbank.mb.mail"

.field public static final blacklist TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static blacklist mLogStb:Ljava/lang/StringBuffer;

.field private static blacklist mPendingDeliveryIntent:Landroid/app/PendingIntent;

.field private static blacklist sDMACdata:Lcom/android/internal/telephony/SemDMACdata;

.field private static blacklist sDefaultMessageAppConfig:Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;

.field private static blacklist sPackageNamePattern:[Ljava/lang/String;

.field private static blacklist sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

.field private static blacklist sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mLogStb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sDMACdata:Lcom/android/internal/telephony/SemDMACdata;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smbroadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconfigurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetIncomingUserId()I
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    const-string v4, "android:send_sms"

    const-string v5, "android:read_cell_broadcasts"

    const-string v0, "android:read_sms"

    const-string v1, "android:write_sms"

    const-string v2, "android:receive_sms"

    const-string v3, "android:receive_wap_push"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sDefaultMessageAppConfig:Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->SALES_CODE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mLogStb:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/android/internal/telephony/SemDMACdata;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemDMACdata;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sDMACdata:Lcom/android/internal/telephony/SemDMACdata;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "SmsApplication"

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have system signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v3, "android:write_sms"

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v3, v4, p3}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have OP_WRITE_SMS:  (fixing)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, p2, v4, v1}, Lcom/android/internal/telephony/SmsApplication;->setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static blacklist assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method

.method private static blacklist broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V
    .locals 6

    const-string v0, "android.provider.extra.IS_DEFAULT_SMS_APP"

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission.MONITOR_DEFAULT_SMS_PACKAGE"

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    nop

    invoke-static {v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    invoke-static {v0, p3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V

    return-void
.end method

.method private static greylist-max-r configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 1

    const-string/jumbo v0, "sms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    const-string/jumbo v0, "smsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    const-string/jumbo v0, "mms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    const-string/jumbo v0, "mmsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist defaultMessageAppConfigInfoDump(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.action.DEFAULT_MSG_APP_INFO_LOGGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "defaultMsgAppConfigInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static blacklist defaultSmsAppChanged(Landroid/content/Context;)V
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.phone"

    const/4 v4, 0x1

    invoke-static {p0, v0, v1, v3, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v2, v5}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const-string v6, "com.android.mms.service"

    invoke-static {p0, v0, v1, v6, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const-string v6, "com.android.providers.telephony"

    invoke-static {p0, v0, v1, v6, v4}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    nop

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v1, v4, v5}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v6, v4

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    const/16 v9, 0x3e9

    invoke-virtual {v1, v8, v9, v3}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1, v8, v9, v5}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 12

    const/4 v0, 0x0

    const-string v1, "SmsApplication"

    if-nez p0, :cond_0

    const-string/jumbo v2, "getApplication: context is null!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    nop

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "role"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    const-string v5, "com.samsung.android.messaging"

    if-nez v4, :cond_4

    if-eqz v3, :cond_1

    const-string v4, "android.app.role.SMS"

    invoke-virtual {v3, v4}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const-string v4, "ATT"

    sget-object v6, Lcom/android/internal/telephony/SmsApplication;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getEnableSecSms(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    const-string v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.phone"

    const/4 v9, 0x1

    invoke-static {p0, v6, v4, v8, v9}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    invoke-static {p0, v6, v4, v7, v9}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const-string v8, "com.android.mms.service"

    invoke-static {p0, v6, v4, v8, v9}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const-string v8, "com.android.providers.telephony"

    invoke-static {p0, v6, v4, v8, v9}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const/16 v8, 0x3e9

    invoke-static {v4, v8}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    invoke-static {p0, v6, v4, v5, v9}, Lcom/android/internal/telephony/SmsApplication;->assignExclusiveSmsPermissionsToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;Z)V

    const-string v5, "Assign writesms permission to special system apps for specific tablets"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v6

    :cond_5
    if-eqz p1, :cond_b

    if-nez v6, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, ""

    const-string/jumbo v9, "persist.ril.config.defaultmsgapp"

    const-string v10, "SM"

    invoke-static {v9, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const v11, 0x104044c

    if-eqz v10, :cond_6

    const-string/jumbo v10, "there is no configedPackage, getApplication from default_sms_application"

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v10, "AM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "AM is configedPackage, getApplication from configedSmsPackageName"

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.google.android.apps.messaging"

    goto :goto_0

    :cond_7
    const-string v10, "SM is configedPackage, getApplication from default_sms_application"

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v10

    if-ge v8, v10, :cond_9

    nop

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v8

    check-cast v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v8

    move-object v6, v5

    check-cast v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    if-nez v6, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x0

    aget-object v5, v5, v8

    check-cast v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-object v6, v5

    :cond_a
    if-eqz v6, :cond_b

    iget-object v5, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v5, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    :cond_b
    if-eqz v6, :cond_e

    if-nez p1, :cond_c

    invoke-static {v6}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v1, v5, :cond_d

    :cond_c
    nop

    invoke-static {p0, v6, p1}, Lcom/android/internal/telephony/SmsApplication;->tryFixExclusiveSmsAppops(Landroid/content/Context;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Z)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v6, 0x0

    :cond_d
    if-eqz v6, :cond_e

    if-eqz p1, :cond_e

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->defaultSmsAppChanged(Landroid/content/Context;)V

    :cond_e
    return-object v6
.end method

.method public static greylist getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static blacklist getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/high16 v4, 0xc0000

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.BROADCAST_SMS"

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v10, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v11, "SmsApplication"

    const-string v12, "Error getting applicationName"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.wap.mms-message"

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const-string v11, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v12, :cond_6

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    :cond_6
    goto :goto_2

    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "smsto"

    const-string v10, ""

    invoke-static {v9, v10, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v8, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v8

    nop

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v1, v0, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    const-string v14, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v15, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_3

    :cond_9
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v15, :cond_a

    iget-object v4, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    :cond_a
    const/high16 v4, 0xc0000

    goto :goto_3

    :cond_b
    new-instance v4, Landroid/content/Intent;

    invoke-static {v9, v10, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v4, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v4

    const/high16 v4, 0xc0000

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v10, :cond_c

    goto :goto_4

    :cond_c
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v12, :cond_d

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    :cond_d
    goto :goto_4

    :cond_e
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    nop

    const/high16 v4, 0xc0000

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v11, :cond_f

    goto :goto_5

    :cond_f
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v13, :cond_10

    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    :cond_10
    goto :goto_5

    :cond_11
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    nop

    const/high16 v4, 0xc0000

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v12, :cond_12

    goto :goto_6

    :cond_12
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v14, :cond_13

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    :cond_13
    goto :goto_6

    :cond_14
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    nop

    const/high16 v4, 0xc0000

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v13, :cond_15

    goto :goto_7

    :cond_15
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v15, :cond_16

    move-object/from16 v16, v0

    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fputmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    move-object/from16 v16, v0

    :goto_8
    move-object/from16 v0, v16

    goto :goto_7

    :cond_17
    move-object/from16 v16, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v12, :cond_18

    goto :goto_9

    :cond_18
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v15

    if-nez v15, :cond_19

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    goto :goto_9

    :cond_1a
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static blacklist getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 1

    nop

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultExternalTelephonyProviderChangedApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultExternalTelephonyProviderChangedApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 7

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :cond_1
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static greylist getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 7

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :cond_1
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static greylist-max-r getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 1

    nop

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultRespondViaMessageApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 7

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :cond_1
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static blacklist getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static blacklist getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSimFullApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultSimFullApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 7

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :cond_1
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static greylist getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 7

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    :cond_1
    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static blacklist getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->getSmsRoleHolder(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getEnableSecSms(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    :try_start_0
    const-string v3, "com.android.mms"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_1
    const-string v3, "com.samsung.android.messaging"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    return v1
.end method

.method private static blacklist getIncomingUserHandle()Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIncomingUserId()I
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    return v0

    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    return v2
.end method

.method public static blacklist getPendingDeliveryIntent()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public static greylist-max-r getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist initPendingDeliveryIntent()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static blacklist initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsRoleListener:Lcom/android/internal/telephony/SmsApplication$SmsRoleListener;

    return-void
.end method

.method public static greylist isDefaultMmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultMmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultMmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_1
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    :cond_1
    invoke-static {p0, v0, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    return v4

    :cond_5
    const-string v5, "com.tion.securitysms"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return v4

    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getEnableSecSms(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "com.samsung.android.coreapps"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v4, "SmsApplication"

    const-string/jumbo v5, "shouldWriteMessageForPackage is true for none SECSMS app model."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const/4 v5, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0xfa2

    if-eq v6, v7, :cond_8

    move v6, v4

    goto :goto_0

    :cond_8
    move v6, v0

    :goto_0
    move v5, v6

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isShouldNotWriteMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_b

    return v0

    :cond_b
    return v4
.end method

.method public static blacklist isShouldNotWriteMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "SmsApplication"

    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "com.google.android.apps.messaging"

    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_0

    const-string v8, "AM is preloaded"

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v7

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v7, "com.samsung.android.messaging"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "KR"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "KOREA"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    return v6

    :cond_1
    sget-object v7, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10701fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    :cond_2
    sget-object v7, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    array-length v8, v7

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is matched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isVzwAuthorizedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v5

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No PackageName Pattern : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private static blacklist isVzwAuthorizedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "VZWSMS"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->isPackageAuthorized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$replacePreferredActivity$1(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$setDefaultApplicationInternal$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method private static blacklist replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x10040

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const v2, 0x208000

    invoke-virtual {p0, v4, v2, v3, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static blacklist sendBroadcast_SMS_BIG_DATA_INFO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V
    .locals 4

    const-string v0, "SmsApplication"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SMS_BIG_DATA_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "sdac"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "nsda"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "osda"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "dmac"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IllegalStateException : intent should be broadcast after boot completed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Permission Denial: com.samsung.intent.action.SMS_BIG_DATA_INFO"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public static greylist-max-r setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V

    return-void
.end method

.method public static blacklist setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 10

    const-string v0, "SmsApplication"

    if-nez p1, :cond_0

    const-string v1, "context in DefaultApplication is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p0, v4}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "isChangeSmsDefaultAppAllowed"

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v5, "isChangeSmsDefaultAppAllowed"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const-string v5, "Block setDefaultApplication by admin"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "role"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    const-string v2, "android.app.role.SMS"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static blacklist setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    nop

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    invoke-static {v6, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v7

    :goto_0
    invoke-static {v6, v1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v10, "appops"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager;

    const-string v11, "SmsApplication"

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v5, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x3

    invoke-static {v4, v10, v0, v12}, Lcom/android/internal/telephony/SmsApplication;->setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Old SMS package not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "update the default app to : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " oldPackageName: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4, v0, v7}, Lcom/android/internal/telephony/SmsApplication;->sendBroadcast_SMS_BIG_DATA_INFO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v7, v0

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/SmsApplication$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v18, v0

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/role/RoleManager;

    iget-object v14, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v16

    sget-object v17, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const-string v13, "android.app.role.SMS"

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v18}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x5

    invoke-virtual {v7, v12, v13, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/SmsApplication;->defaultSmsAppChanged(Landroid/content/Context;)V

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while adding sms role holder "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public static blacklist setDefaultMessageAppConfig(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WIFI_ONLY:Z

    if-eqz v0, :cond_0

    const-string v0, "SmsApplication"

    const-string/jumbo v1, "wifi-only tablet does not support default message app."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mLogStb:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "wifi-only tablet, skip default message app setting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mLogStb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->defaultMessageAppConfigInfoDump(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sDefaultMessageAppConfig:Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sDefaultMessageAppConfig:Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sDefaultMessageAppConfig:Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDefaultMsgApp()V

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mLogStb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->defaultMessageAppConfigInfoDump(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist setExclusiveAppops(Ljava/lang/String;Landroid/app/AppOpsManager;II)V
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p1, v3, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist setPendingDeliveryIntent(Landroid/app/PendingIntent;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static greylist-max-r shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackageAsUser(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist shouldWriteMessageForPackageAsUser(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;)Z
    .locals 1

    invoke-static {p1, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplicationAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist tryFixExclusiveSmsAppops(Landroid/content/Context;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Z)Z
    .locals 9

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/internal/telephony/SmsApplication;->DEFAULT_APP_EXCLUSIVE_APPOPS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v6

    iget-object v7, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_0

    const-string v8, " (fixing)"

    goto :goto_1

    :cond_0
    const-string v8, " (no permission to fix)"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SmsApplication"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->-$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v7

    invoke-virtual {v0, v5, v7, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    goto :goto_2

    :cond_1
    return v3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method
