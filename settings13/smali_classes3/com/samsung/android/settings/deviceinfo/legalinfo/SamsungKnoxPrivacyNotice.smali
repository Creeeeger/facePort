.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;
.super Landroid/app/Activity;
.source "SamsungKnoxPrivacyNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;,
        Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;,
        Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;
    }
.end annotation


# static fields
.field private static DEVICE_CCPA:I = 0x3

.field private static DEVICE_GDPR:I = 0x2

.field private static DEVICE_GLOBAL:I = 0x0

.field private static DEVICE_KOREA:I = 0x1

.field private static DEVICE_LGPD:I = 0x4


# instance fields
.field private final BASE_URL:Ljava/lang/String;

.field private final BASE_URL_CHINA:Ljava/lang/String;

.field private final BASE_URL_DEV:Ljava/lang/String;

.field private final BASE_URL_DEV_CHINA:Ljava/lang/String;

.field private final CCPA_URL:Ljava/lang/String;

.field private final EULA_URL:Ljava/lang/String;

.field private final GDPR_URL:Ljava/lang/String;

.field private final GLOBAL_URL:Ljava/lang/String;

.field private final KEY_DEVICE_TYPE:Ljava/lang/String;

.field private final KEY_DOWNLOAD_LANGUAGE:Ljava/lang/String;

.field private final KEY_LATEST_EULA:Ljava/lang/String;

.field private final KEY_LATEST_VERSION:Ljava/lang/String;

.field private final LGPD_URL:Ljava/lang/String;

.field private final PP_ACCEPTANCE_ACTION:Ljava/lang/String;

.field private final PP_ACCEPTED_EXTRA:Ljava/lang/String;

.field private final PP_BUNDLE_FIELDS:Ljava/lang/String;

.field private final PP_BUNDLE_REGION:Ljava/lang/String;

.field private final PP_BUNDLE_TEXT:Ljava/lang/String;

.field private final PP_BUNDLE_VERSION:Ljava/lang/String;

.field private final PP_BUTTON_EXTRA:Ljava/lang/String;

.field private final PP_INFO_URL:Ljava/lang/String;

.field private final PP_METHOD:Ljava/lang/String;

.field private final PP_PACKAGE_NAME:Ljava/lang/String;

.field private final PP_PERMISSION:Ljava/lang/String;

.field private final PP_UPDATE_TYPE:Ljava/lang/String;

.field private final PP_URI:Ljava/lang/String;

.field private final PP_VERSION_EXTRA:Ljava/lang/String;

.field private asynctask:Landroid/os/AsyncTask;

.field private chkException:Z

.field private context:Landroid/content/Context;

.field private deviceType:I

.field private isReAgreement:Z

.field private mAgreeButton:Landroid/widget/Button;

.field private mFields:Ljava/lang/String;

.field private mPPClientAvailable:Z

.field private mPPRegion:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSendMinorBroadcast:Z

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private newPPType:Z

.field private newPPVersion:I

.field private saveVersion:Lorg/json/JSONObject;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->deviceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAgreeButton(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFields(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mFields:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgress(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnewPPType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveVersion(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextView(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchkException(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->chkException:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdeviceType(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->deviceType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsaveVersion(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAgreeButtonText(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getAgreeButtonText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misChinaModel(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misProductShipBinary(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isProductShipBinary()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEVICE_CCPA()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->DEVICE_CCPA:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEVICE_GDPR()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEVICE_GLOBAL()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEVICE_KOREA()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEVICE_LGPD()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->DEVICE_LGPD:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "com.samsung.android.mdm"

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.ppclient.PPClientProvider"

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_URI:Ljava/lang/String;

    const-string v0, "getPPInfo"

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_METHOD:Ljava/lang/String;

    const-string v0, "com.samsung.android.ppclient.PP_REAGREEMENT_ACCEPTED"

    .line 66
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_ACCEPTANCE_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.knox.ppclient.permission.KNOX_PRIVACY_POLICY"

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_PERMISSION:Ljava/lang/String;

    const-string v0, "show_button"

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_BUTTON_EXTRA:Ljava/lang/String;

    const-string v0, "pp_accepted"

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_ACCEPTED_EXTRA:Ljava/lang/String;

    const-string v0, "pp_version"

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_VERSION_EXTRA:Ljava/lang/String;

    const-string v1, "pp_text"

    .line 71
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_BUNDLE_TEXT:Ljava/lang/String;

    const-string v1, "pp_fields"

    .line 72
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_BUNDLE_FIELDS:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_BUNDLE_VERSION:Ljava/lang/String;

    const-string v0, "pp_region"

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_BUNDLE_REGION:Ljava/lang/String;

    const-string v0, "ppupdate_type"

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_UPDATE_TYPE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const/4 v1, -0x1

    .line 78
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->deviceType:I

    .line 79
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->chkException:Z

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    .line 84
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    .line 85
    iput-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    .line 89
    iput-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    .line 91
    iput-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSendMinorBroadcast:Z

    const-string v0, "https://eula.secb2b.com"

    .line 93
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->BASE_URL:Ljava/lang/String;

    const-string v0, "https://eula.secb2b.com.cn"

    .line 94
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->BASE_URL_CHINA:Ljava/lang/String;

    const-string v0, "https://eula-dev.secb2b.com"

    .line 95
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->BASE_URL_DEV:Ljava/lang/String;

    const-string v0, "https://eula-dev.secb2b.com.cn"

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->BASE_URL_DEV_CHINA:Ljava/lang/String;

    const-string v0, "/EULA"

    .line 97
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->EULA_URL:Ljava/lang/String;

    const-string v0, "/PPInfo"

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->PP_INFO_URL:Ljava/lang/String;

    const-string v0, "/GDPR"

    .line 99
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->GDPR_URL:Ljava/lang/String;

    const-string v0, "/KLMS"

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->GLOBAL_URL:Ljava/lang/String;

    const-string v0, "/CCPA"

    .line 101
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->CCPA_URL:Ljava/lang/String;

    const-string v0, "/LGPD"

    .line 102
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->LGPD_URL:Ljava/lang/String;

    const-string v0, "LATEST_EULA"

    .line 104
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->KEY_LATEST_EULA:Ljava/lang/String;

    const-string v0, "DOWNLOAD_LANGUAGE"

    .line 105
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->KEY_DOWNLOAD_LANGUAGE:Ljava/lang/String;

    const-string v0, "DEVICE_TYPE"

    .line 106
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->KEY_DEVICE_TYPE:Ljava/lang/String;

    const-string v0, "LATEST_VERSION"

    .line 107
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->KEY_LATEST_VERSION:Ljava/lang/String;

    return-void
.end method

.method private checkPPClientAvailable()Z
    .locals 2

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.ppclient.PP_REPORT_ACCEPTANCE"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x20000

    .line 177
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 179
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.mdm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private displayContent()V
    .locals 2

    .line 258
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    if-eqz v0, :cond_0

    return-void

    .line 260
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$EulaDownloader;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KnoxNotice"

    const-string v1, "Exception in EulaDownloader"

    .line 265
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private getAgreeButtonText()Ljava/lang/String;
    .locals 2

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GDPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->pp_knox_agree_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 557
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->pp_knox_continue_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRegion()Ljava/lang/String;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    return-object p0
.end method

.method private isChinaModel()Z
    .locals 2

    const-string p0, "ro.csc.countryiso_code"

    .line 188
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "ro.csc.country_code"

    .line 193
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "china"

    .line 194
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isPossibleNetwork()Z
    .locals 1

    .line 593
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 596
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isProductShipBinary()Z
    .locals 6

    const-string v0, "KnoxNotice"

    const/4 v1, 0x1

    .line 487
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "android.os.SystemProperties"

    .line 488
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Class;

    .line 491
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    .line 493
    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "ro.product_ship"

    aput-object v5, v3, v4

    .line 497
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Unknown exception"

    .line 505
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "IllegalArgumentException"

    .line 502
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method private setupReAgreementData(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "show_button"

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    const-string v0, "pp_text"

    .line 212
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "pp_version"

    .line 213
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    const-string v2, "pp_region"

    .line 214
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->getAgreeButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$PPRetrieverTask;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    .line 225
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPType:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 226
    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSendMinorBroadcast:Z

    if-nez p1, :cond_2

    .line 227
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mSendMinorBroadcast:Z

    .line 228
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mdm"

    .line 229
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.ppclient.PP_REAGREEMENT_ACCEPTED"

    .line 230
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pp_accepted"

    .line 231
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "ppupdate_type"

    .line 232
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 234
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.ppclient.permission.KNOX_PRIVACY_POLICY"

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 238
    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string p0, "KnoxNotice"

    const/4 v0, 0x0

    .line 304
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2710

    .line 306
    :try_start_1
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    .line 307
    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 309
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1fa0

    new-array v4, v3, [C

    :goto_0
    const/4 v5, 0x0

    .line 313
    invoke-virtual {v1, v4, v5, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 314
    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 325
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 329
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v1, v0

    goto :goto_1

    :catch_4
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_5

    :catch_5
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    :goto_1
    :try_start_4
    const-string v3, "getEulaFromHtml() has Exception."

    .line 321
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_1

    .line 325
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    if-eqz v1, :cond_3

    .line 329
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_6
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    :goto_2
    :try_start_6
    const-string v3, "getEulaFromHtml() has SocketTimeoutException."

    .line 318
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_2

    .line 325
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    if-eqz v1, :cond_3

    .line 329
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_3
    :goto_3
    return-object v0

    :catchall_2
    move-exception p0

    :goto_4
    move-object v0, p1

    :goto_5
    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    if-eqz v1, :cond_5

    .line 329
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    :cond_5
    :goto_6
    throw p0
.end method

.method public getPPFromClient()Ljava/lang/String;
    .locals 5

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "content://com.samsung.android.ppclient.PPClientProvider"

    .line 572
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPPInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "pp_text"

    .line 575
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v1, "pp_region"

    .line 578
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPRegion:Ljava/lang/String;

    :cond_1
    const-string v1, "pp_version"

    .line 581
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 583
    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    :cond_2
    const-string v1, "pp_fields"

    .line 585
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    .line 586
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mFields:Ljava/lang/String;

    :cond_3
    return-object v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 245
    sget v0, Lcom/android/settings/R$id;->knox_pp_agree_button:I

    if-ne p1, v0, :cond_0

    .line 246
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.mdm"

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.ppclient.PP_REAGREEMENT_ACCEPTED"

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "pp_accepted"

    .line 249
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->newPPVersion:I

    const-string v1, "pp_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.ppclient.permission.KNOX_PRIVACY_POLICY"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 271
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->displayContent()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->chkException:Z

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->checkPPClientAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "not_settings"

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 130
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v4, Lcom/android/settings/R$string;->data_connection_error_toast_notification:I

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 137
    :cond_2
    sget v0, Lcom/android/settings/R$layout;->sec_samsung_knox_privacy_notice:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    sget v0, Lcom/android/settings/R$id;->pp_update_progressbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    sget v0, Lcom/android/settings/R$id;->knox_pp_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->knox_privacy_notice_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    sget v1, Lcom/android/settings/R$id;->knox_pp_agree_button:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mAgreeButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    if-eqz v1, :cond_7

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 154
    :cond_5
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->setupReAgreementData(Landroid/content/Intent;)V

    .line 155
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v3, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isReAgreement:Z

    if-eqz p1, :cond_7

    .line 156
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->knox_privacy_consent_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 161
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;->getInstance()Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice$KnoxLinkMovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_2

    .line 165
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel()Z

    move-result p1

    if-nez p1, :cond_9

    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->asynctask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 665
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 667
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->mPPClientAvailable:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->setupReAgreementData(Landroid/content/Intent;)V

    .line 205
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onResume()V
    .locals 1

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/SamsungKnoxPrivacyNotice;->displayContent()V

    return-void
.end method
