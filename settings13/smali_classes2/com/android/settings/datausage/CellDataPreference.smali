.class public Lcom/android/settings/datausage/CellDataPreference;
.super Landroidx/preference/SecPreference;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CellDataPreference$CellDataState;,
        Lcom/android/settings/datausage/CellDataPreference$Listener;
    }
.end annotation


# instance fields
.field public mChecked:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEnableDialog:Z

.field private mIsVolteCall:Z

.field private final mListener:Lcom/android/settings/datausage/CellDataPreference$Listener;

.field public mMultiSimDialog:Z

.field final mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

.field public mSubId:I

.field private mSupportDisableDialog:Z

.field private mSupportEnableDialog:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSupportDisableDialog(Lcom/android/settings/datausage/CellDataPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportDisableDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportEnableDialog(Lcom/android/settings/datausage/CellDataPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportEnableDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetMobileDataEnabled(Lcom/android/settings/datausage/CellDataPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEnabled(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 122
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance p2, Lcom/android/settings/datausage/CellDataPreference$Listener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/datausage/CellDataPreference$Listener;-><init>(Lcom/android/settings/datausage/CellDataPreference;Lcom/android/settings/datausage/CellDataPreference$Listener-IA;)V

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$Listener;

    const/4 p2, -0x1

    .line 88
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    .line 98
    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 105
    iput-boolean p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    .line 511
    new-instance p2, Lcom/android/settings/datausage/CellDataPreference$6;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/CellDataPreference$6;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 125
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mContext:Landroid/content/Context;

    .line 126
    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    return-void
.end method

.method private enableDeviceProvisionMobileData(Z)V
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const-string v0, "device_provisioned"

    .line 307
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "device_provisioning_mobile_data"

    .line 308
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setChecked(Z)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 315
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 316
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMobileDataEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellDataPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->enableDeviceProvisionMobileData(Z)V

    .line 296
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private showDisableDialog()V
    .locals 7

    .line 400
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 401
    sget v1, Lcom/android/settings/R$layout;->sec_mobile_data_dont_show_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 402
    sget v1, Lcom/android/settings/R$id;->do_not_show_again:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 403
    sget v3, Lcom/android/settings/R$id;->dialog_message_text_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 404
    new-instance v4, Lcom/android/settings/datausage/CellDataPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/datausage/CellDataPreference$3;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v5, Lcom/android/settings/R$string;->data_usage_turn_off_btn:I

    new-instance v6, Lcom/android/settings/datausage/CellDataPreference$4;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/datausage/CellDataPreference$4;-><init>(Lcom/android/settings/datausage/CellDataPreference;Landroid/widget/CheckBox;)V

    .line 412
    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    new-instance v2, Lcom/android/settings/datausage/CellDataPreference$5;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/CellDataPreference$5;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v4, p0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p0

    .line 430
    sget v2, Lcom/android/settings/R$string;->mobile_data_off_dialog_title:I

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    sget v2, Lcom/android/settings/R$string;->data_usage_enable_mobile:I

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 435
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticOPENModel()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 437
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    sget p0, Lcom/android/settings/R$string;->data_usage_disable_mobile_warning_ktt:I

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 439
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    sget p0, Lcom/android/settings/R$string;->data_usage_disable_mobile_warning_lgt:I

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 441
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 442
    sget p0, Lcom/android/settings/R$string;->data_usage_disable_mobile:I

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_5
    const-string v2, "DCM"

    .line 443
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 444
    sget p0, Lcom/android/settings/R$string;->data_usage_disable_mobile_warning_dcm:I

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 445
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isAllNAVendor()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 446
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 447
    sget p0, Lcom/android/settings/R$string;->mobile_data_off_dialog_text_vzw:I

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(I)V

    const/4 p0, 0x0

    .line 448
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 450
    :cond_7
    sget p0, Lcom/android/settings/R$string;->mobile_data_off_dialog_text_common:I

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 436
    :cond_8
    :goto_0
    sget p0, Lcom/android/settings/R$string;->data_usage_disable_mobile_warning_skt:I

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 453
    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 454
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showEnableDialog()V
    .locals 4

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    sget v1, Lcom/android/settings/R$string;->data_usage_enable_mobile:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/CellDataPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/CellDataPreference$1;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const v3, 0x104000a

    .line 373
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    new-instance v1, Lcom/android/settings/datausage/CellDataPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/CellDataPreference$2;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const/high16 p0, 0x1040000

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticOPENModel()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 389
    sget p0, Lcom/android/settings/R$string;->data_usage_enable_mobile_warning_ktt:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 390
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 391
    sget p0, Lcom/android/settings/R$string;->data_usage_enable_mobile_warning_lgt:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 393
    :cond_2
    sget p0, Lcom/android/settings/R$string;->data_usage_enable_mobile_warning:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 387
    :cond_3
    :goto_0
    sget p0, Lcom/android/settings/R$string;->data_usage_enable_mobile_warning_skt:I

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 395
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 3

    .line 335
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 336
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 340
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 343
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 344
    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$Listener;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method private updateChecked()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private updateEnabled()V
    .locals 9

    .line 219
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mUserManager:Landroid/os/UserManager;

    .line 226
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mCurrentUserId:I

    .line 228
    iget-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v3, :cond_1

    .line 229
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v3

    .line 230
    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 231
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v1

    .line 232
    iget-object v5, p0, Lcom/android/settings/datausage/CellDataPreference;->mUserManager:Landroid/os/UserManager;

    iget v6, p0, Lcom/android/settings/datausage/CellDataPreference;->mCurrentUserId:I

    .line 233
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const-string/jumbo v7, "no_config_mobile_networks"

    .line 232
    invoke-virtual {v5, v7, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    goto :goto_1

    :cond_1
    move v3, v2

    move v4, v3

    move v5, v4

    .line 236
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEnabled() : isAirplaneMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  mIsVolteCall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  isPolicyRestrict"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isDataRestrict :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CellDataPreference"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateEnabled() : setEnabled "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    iget-boolean v8, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    if-nez v8, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v6, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/CellDataPreference;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-virtual {p0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_4

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 0

    .line 200
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    return-object p0
.end method

.method public onAttached()V
    .locals 2

    .line 155
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 158
    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 321
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 323
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->syncSwitchView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 325
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->removeActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    .line 166
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 131
    check-cast p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    .line 132
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 133
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 134
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    .line 135
    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget p1, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 146
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    .line 147
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    .line 148
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    .line 149
    iget p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    iput p0, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    return-object v0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/16 v2, 0xb2

    invoke-static {p1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const/16 p1, 0x25

    const/16 v0, 0xdae

    .line 249
    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "performClick() isEnabled() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CellDataPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportMobileDataEnableDialog()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportEnableDialog:Z

    .line 255
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportMobileDataDisableDialog(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportDisableDialog:Z

    .line 257
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mEnableDialog:Z

    if-eqz p1, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog()V

    goto :goto_1

    .line 262
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    goto :goto_1

    .line 265
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportEnableDialog:Z

    if-eqz p1, :cond_4

    .line 266
    iput-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mEnableDialog:Z

    .line 267
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->showEnableDialog()V

    goto :goto_1

    .line 269
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    :goto_1
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getProxySubscriptionManager()Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    .line 176
    invoke-virtual {p3, v0}, Lcom/android/settings/network/ProxySubscriptionManager;->addActiveSubscriptionsListener(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    .line 178
    iget p3, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne p3, p1, :cond_0

    .line 179
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    .line 189
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 194
    sget p1, Lcom/android/settings/R$string;->data_usage_enable_mobile_summery:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVolteCallState(Z)V
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolteCallState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellDataPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    .line 507
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method
