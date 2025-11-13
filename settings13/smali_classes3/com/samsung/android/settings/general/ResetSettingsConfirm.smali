.class public Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;,
        Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private handler:Landroid/os/Handler;

.field mConnection:Landroid/content/ServiceConnection;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDatabaseReset:Z

.field private mIsAccReset:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mResetSoftListener:Landroid/view/View$OnClickListener;

.field mResetTask:Lcom/samsung/android/settings/general/ResetSettingsConfirm$ResetSettingsTask;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDatabaseReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAccReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDatabaseReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/samsung/android/settings/general/ResetSettingsConfirm;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestSoftReset(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->requestSoftReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetCompleted(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetCompleted()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mDatabaseReset:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    .line 140
    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$2;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->handler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$3;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$4;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private StartPassword()V
    .locals 4

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    sget v1, Lcom/android/settings/R$string;->password:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->confirm_password:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private doSoftReset()V
    .locals 3

    .line 265
    iget-boolean v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetAccessibilitySettingsOnly(Landroid/content/Context;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->settings_reset_boot_device:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->reset_soft_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetSoftListener:Landroid/view/View$OnClickListener;

    .line 186
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private requestSoftReset()V
    .locals 2

    .line 250
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->MY_USER_ID:I

    .line 254
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->StartPassword()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    :goto_0
    return-void
.end method

.method private resetCompleted()V
    .locals 3

    .line 137
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static resetSettingsInternal(Landroid/content/Context;)V
    .locals 6

    .line 431
    new-instance v0, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    .line 433
    sget-object v1, Lcom/samsung/android/settings/general/ResetSettingsList;->RESET_SETTING_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 434
    invoke-static {v2}, Lcom/samsung/android/settings/general/GeneralUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reset settings start, class name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ResetSettings"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {v3}, Lcom/samsung/android/settings/general/GeneralUtils;->getResetSettingsClass(Ljava/lang/Class;)Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    invoke-interface {v2, p0}, Lcom/samsung/android/settings/general/OnResetSettingsDataListener;->resetSettings(Landroid/content/Context;)V

    .line 443
    invoke-interface {v2, p0, v0}, Lcom/samsung/android/settings/general/OnResetSettingsDataListener;->loadCscSettings(Landroid/content/Context;Lcom/samsung/android/settings/csc/CscParser;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1235

    return p0
.end method

.method public getResetUriList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.RESET_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 412
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 414
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_0

    .line 416
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 418
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    .line 108
    iget-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_reset_accessibility_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 112
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$1;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Common_SupportHuxDeviceQualityStatistics"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "event_type"

    const-string v1, "Q025"

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    const/4 v0, -0x1

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_1

    const/16 p3, 0x65

    if-eq p1, p3, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string p3, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {p1, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne p2, v0, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->doSoftReset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_accsettings"

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    .line 195
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 174
    iget-boolean p2, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mIsAccReset:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 175
    sget p2, Lcom/android/settings/R$layout;->sec_reset_accsettings_confirm:I

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 177
    :cond_0
    sget p2, Lcom/android/settings/R$layout;->sec_reset_settings_confirm:I

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    .line 180
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->establishFinalConfirmationState()V

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 357
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.security.Password"

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ".title"

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".subject"

    .line 244
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".password"

    .line 245
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public registerAccCallbackToService()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 324
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;-><init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 326
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetAccHelper()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 315
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetAccessibilitySettingsOnly(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ResetSettings"

    const-string v1, "bind resetAccessibilitySettingsOnly"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mContext:Landroid/content/Context;

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->registerAccCallbackToService()V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->resetAccHelper()V

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.datamanager.DataManagerService"

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_0
    return-void
.end method

.method public resetSettingsExternal(Landroid/content/Context;)V
    .locals 6

    const-string v0, "ResetSettings"

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->getResetUriList()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 455
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const/4 v2, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResetSettings Provider Call, URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    if-eqz v3, :cond_2

    .line 475
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    const-string v1, "reset_data_settings"

    .line 463
    invoke-virtual {v3, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "getBundle"

    .line 465
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v1, "Bundle is null"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    :goto_1
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    const-string v3, "can not call the provider"

    .line 471
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 477
    :cond_5
    throw p0

    :cond_6
    return-void
.end method

.method public unregisterAccCallbackFromService()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 334
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 335
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->mService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
