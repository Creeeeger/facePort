.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;
    }
.end annotation


# instance fields
.field private mChangeUserName1:Landroid/widget/LinearLayout;

.field mChangeUserName1Listener:Landroid/view/View$OnClickListener;

.field private mChangeUserName2:Landroid/widget/LinearLayout;

.field mChangeUserName2Listener:Landroid/view/View$OnClickListener;

.field private mChangeUserName3:Landroid/widget/LinearLayout;

.field mChangeUserName3Listener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNormalTest:Landroid/widget/LinearLayout;

.field mNormalTestListener:Landroid/view/View$OnClickListener;

.field private mRebootDialog:Landroid/app/AlertDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

.field private mSimCode:Ljava/lang/String;

.field private mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

.field private mSimState:Ljava/lang/String;

.field private mTestDialog:Landroid/app/AlertDialog;

.field private mUpdateBtn:Landroid/widget/Button;

.field private mUpdateDialog:Landroid/app/ProgressDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimLockPolicyBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestDialog(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateDialog(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSimLockPolicyBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrebootDevice(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->rebootDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMainSIMLock(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSimStatus(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->updateSimStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "-"

    .line 89
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$1;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mHandler:Landroid/os/Handler;

    .line 312
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$6;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mNormalTestListener:Landroid/view/View$OnClickListener;

    .line 322
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$7;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName1Listener:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$8;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName2Listener:Landroid/view/View$OnClickListener;

    .line 344
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$9;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName3Listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private getSimStateString()Ljava/lang/String;
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sec_sim_lock_status_not_allowed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "-"

    goto :goto_1

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v2, "LOADED"

    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 385
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->notifications_enabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private isUpdateAvailable()Z
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 372
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sim state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SimLockStatus"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v1, "READY"

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v0, "LOADED"

    .line 376
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private rebootDevice()V
    .locals 4

    const-string v0, "SimLockStatus"

    const-string v1, "Device reboot!"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 225
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$3;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startMainSIMLock()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return-void
.end method

.method private updateSimStatus()V
    .locals 2

    .line 356
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->getSimLockStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->getOperationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimStatus() => mSimState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSimCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-"

    .line 360
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    :cond_0
    const-string v0, "sim_state_status"

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->getSimStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "sim_state_code"

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->isUpdateAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2c

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 142
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "eng"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "SimLockStatus"

    if-eqz p1, :cond_0

    const-string p1, "SimCardStatus onClick eng"

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    const-string p1, "SimCardStatus onClick user"

    .line 146
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SimLockStatus"

    const-string v0, "onCreate()"

    .line 112
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatusPreferenceController;->SUPPORT_SIM_LOCK_STATUS:Z

    if-nez v0, :cond_0

    const-string v0, "Unexpected sales code"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 119
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->sec_device_info_sim_lock_status_kdi:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    .line 123
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->setOnRilJobListener(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->connect()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const v0, 0x104000a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v1

    .line 248
    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->sec_sim_lock_status_connect_error:I

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_sim_lock_status_allshare_popup_wifi_connect:I

    .line 249
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 288
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 289
    sget v0, Lcom/android/settings/R$layout;->sec_device_info_sim_lock_status_kdi_test:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    sget v2, Lcom/android/settings/R$id;->normal_test:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mNormalTest:Landroid/widget/LinearLayout;

    .line 292
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mNormalTestListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    sget v2, Lcom/android/settings/R$id;->chage_username1:I

    .line 294
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName1:Landroid/widget/LinearLayout;

    .line 295
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    sget v2, Lcom/android/settings/R$id;->chage_username2:I

    .line 297
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName2:Landroid/widget/LinearLayout;

    .line 298
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName2Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    sget v2, Lcom/android/settings/R$id;->chage_username3:I

    .line 300
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName3:Landroid/widget/LinearLayout;

    .line 301
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mChangeUserName3Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 303
    sget p1, Lcom/android/settings/R$string;->sim_status_title:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 304
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    return-object p1

    .line 275
    :pswitch_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    sget v1, Lcom/android/settings/R$string;->sec_sim_lock_status_reboot_title:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 277
    sget v1, Lcom/android/settings/R$string;->sec_sim_lock_status_reboot_msg:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$5;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    return-object p1

    .line 271
    :pswitch_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->sec_sim_lock_status_connect_error:I

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_sim_lock_status_update_failed:I

    .line 272
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 273
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->sec_sim_lock_status_btn_update:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_sim_lock_status_policy_file_download:I

    .line 258
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_sim_lock_status_download:I

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$4;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;)V

    .line 259
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_sim_lock_status_later:I

    .line 269
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 252
    :pswitch_5
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sec_sim_lock_status_btn_update:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sec_sim_lock_status_updating:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 130
    sget p3, Lcom/android/settings/R$id;->container_material:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/android/settings/R$layout;->sec_device_info_sim_lock_status_kdi:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    sget p3, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    .line 135
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 183
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->disconnect()V

    :cond_0
    return-void
.end method

.method public onGetBlobFinished(Ljava/lang/String;)V
    .locals 1

    const-string p1, "SimLockStatus"

    const-string v0, "onGetBlobRequestFinished()"

    .line 214
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 167
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "SimLockStatus"

    const-string v0, "onOptionsItemSelected() up button pressed"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "SimLockStatus"

    const-string v1, "onPause()"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->rebootDevice()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SimLockStatus"

    const-string v1, "onResume()"

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;->updateSimStatus()V

    return-void
.end method

.method public onSetBlobFinished(Z)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetBlobRequestFinished() => bSucceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus$2;-><init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SimLockStatus;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
