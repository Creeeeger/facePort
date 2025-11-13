.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/IccLockSettings$ChangeIccLockPin;,
        Lcom/android/settings/IccLockSettings$SetIccLockEnabled;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPersoDialog:Landroidx/preference/SecPreference;

.field private mPersoToggle:Landroidx/preference/SecSwitchPreference;

.field private mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinDialog_Kor:Landroidx/preference/SecPreference;

.field private mPinToggle:Landroidx/preference/SecSwitchPreference;

.field private mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mRes:Landroid/content/res/Resources;

.field private mSimState:Ljava/lang/String;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mSubId:I

.field private mSupportPersoLock:Z

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToState:Z

.field private num_of_retry:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersoDialog(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersoToggle(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPersoToggle:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneService(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/ISemTelephony;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinDialog(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinDialog_Kor(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinToggle(Lcom/android/settings/IccLockSettings;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/settings/IccLockSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/settings/IccLockSettings;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyManager(Lcom/android/settings/IccLockSettings;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$miccLockChanged(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$miccPinChanged(Lcom/android/settings/IccLockSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misIccLockEnabled(Lcom/android/settings/IccLockSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreferences(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, -0x1

    .line 154
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 159
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mSupportPersoLock:Z

    .line 164
    iput v1, p0, Lcom/android/settings/IccLockSettings;->num_of_retry:I

    .line 172
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final displayMessage(I)V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 5

    .line 1122
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 1123
    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1127
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 1129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1130
    invoke-direct {p0, v2, v3}, Lcom/android/settings/IccLockSettings;->isSubscriptionVisible(Landroid/telephony/CarrierConfigManager;Landroid/telephony/SubscriptionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1131
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_2
    return-object v1
.end method

.method private iccLockChanged(ZI)V
    .locals 3

    .line 927
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccLockChanged: success = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IccLockSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 929
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 931
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_LockScreen_SupportToastSimUnlockSuccess"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 932
    iget-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->toggleSimPin(Z)V

    goto :goto_0

    .line 937
    :cond_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 938
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->isCTCSlot1(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 939
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_lock_failed:I

    .line 940
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 941
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 943
    :cond_1
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_lock_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 944
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 960
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 961
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private iccPinChanged(ZI)V
    .locals 3

    .line 1014
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iccPinChanged: success = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IccLockSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 1017
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->isCTCSlot1(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1018
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_change_failed:I

    .line 1019
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1020
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1022
    :cond_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_change_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1023
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1029
    :cond_1
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-static {p1}, Lcom/android/settings/IccLockSettings;->isCTCSlot1(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1030
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->ruim_change_succeeded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1031
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1033
    :cond_2
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->sim_change_succeeded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1035
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1038
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private initSimInfo()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getFirstSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    return-void
.end method

.method public static isCTCSlot1(I)Z
    .locals 0

    if-nez p0, :cond_0

    .line 1174
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isIccLockEnabled()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 196
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    move-result p0

    return p0
.end method

.method private isSubscriptionVisible(Landroid/telephony/CarrierConfigManager;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 1141
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "hide_sim_lock_settings_bool"

    .line 1145
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1088
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetDialogState()V
    .locals 1

    .line 1097
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1101
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1102
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v0, ""

    .line 1103
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 1104
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    const/4 v0, 0x0

    .line 1105
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreDialogStates(Landroid/os/Bundle;)Z
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    const-string v1, "dialogSubId"

    .line 274
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 280
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    .line 279
    invoke-direct {p0, v2}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 284
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 288
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 289
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    const-string v0, "dialogState"

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v0, "dialogPin"

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    const-string v0, "dialogError"

    .line 292
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const-string v0, "enableState"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 296
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private restoreTabFocus(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "currentTab"

    .line 312
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 322
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 323
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private setDialogValues()V
    .locals 6

    .line 654
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "gsm.sim.state"

    .line 659
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimState:Ljava/lang/String;

    const-string v1, "ABSENT"

    .line 660
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimState:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISemTelephony;->getSimPinRetryForSubscriber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->num_of_retry:I

    const-string v0, "IccLockSettings"

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->num_of_retry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  SubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 667
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 661
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/settings/IccLockSettings;->num_of_retry:I

    .line 671
    :goto_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->num_of_retry:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 675
    :cond_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->keyguard_password_attempt_count_pin_code:I

    new-array v5, v2, [Ljava/lang/Object;

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 675
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 672
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->keyguard_password_attempts_count_pin_code:I

    new-array v5, v2, [Ljava/lang/Object;

    .line 673
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 672
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 680
    :goto_3
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v3, "\n"

    if-eq v1, v2, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const-string v0, ""

    goto/16 :goto_d

    .line 714
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz v4, :cond_5

    sget v5, Lcom/android/settings/R$string;->sim_reenter_new_kor:I

    goto :goto_4

    :cond_5
    sget v5, Lcom/android/settings/R$string;->sim_reenter_new:I

    :goto_4
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_6

    sget v4, Lcom/android/settings/R$string;->sim_change_pin_kor:I

    goto :goto_5

    :cond_6
    sget v4, Lcom/android/settings/R$string;->sim_change_pin:I

    :goto_5
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 705
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz v4, :cond_8

    sget v5, Lcom/android/settings/R$string;->sim_enter_new_kor:I

    goto :goto_6

    :cond_8
    sget v5, Lcom/android/settings/R$string;->sim_enter_new:I

    :goto_6
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_9

    sget v4, Lcom/android/settings/R$string;->sim_change_pin_kor:I

    goto :goto_7

    :cond_9
    sget v4, Lcom/android/settings/R$string;->sim_change_pin:I

    :goto_7
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 696
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz v4, :cond_b

    sget v5, Lcom/android/settings/R$string;->sim_enter_old_kor:I

    goto :goto_8

    :cond_b
    sget v5, Lcom/android/settings/R$string;->sim_enter_old:I

    :goto_8
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_c

    sget v4, Lcom/android/settings/R$string;->sim_change_pin_kor:I

    goto :goto_9

    :cond_c
    sget v4, Lcom/android/settings/R$string;->sim_change_pin:I

    :goto_9
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 683
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$string;->sim_enter_old:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_f

    .line 685
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz v4, :cond_e

    sget v4, Lcom/android/settings/R$string;->sim_enable_sim_lock_kor:I

    goto :goto_a

    :cond_e
    sget v4, Lcom/android/settings/R$string;->sim_enable_sim_lock:I

    :goto_a
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 686
    :cond_f
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz v4, :cond_10

    sget v4, Lcom/android/settings/R$string;->sim_disable_sim_lock_kor:I

    goto :goto_b

    :cond_10
    sget v4, Lcom/android/settings/R$string;->sim_disable_sim_lock:I

    :goto_b
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 684
    :goto_c
    invoke-virtual {v1, v2}, Landroidx/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 722
    :goto_d
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 724
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 726
    :cond_11
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showPinDialog()V
    .locals 4

    .line 612
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 626
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 627
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 628
    new-instance v1, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 636
    new-instance v1, Lcom/android/settings/IccLockSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$6;-><init>(Lcom/android/settings/IccLockSettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private toggleSimPin(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 912
    sget p1, Lcom/android/settings/R$string;->sim_pin_enabled:I

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->displayMessage(I)V

    goto :goto_0

    .line 914
    :cond_0
    sget p1, Lcom/android/settings/R$string;->sim_pin_disabled:I

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->displayMessage(I)V

    :goto_0
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .line 877
    new-instance v0, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/IccLockSettings$SetIccLockEnabled;-><init>(Lcom/android/settings/IccLockSettings;ZLjava/lang/String;Lcom/android/settings/IccLockSettings$SetIccLockEnabled-IA;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 879
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .line 1042
    new-instance v0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;-><init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/IccLockSettings$ChangeIccLockPin-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePreferences()V
    .locals 5

    .line 440
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->getVisibleSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 444
    :goto_0
    iget v2, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    if-eq v2, v1, :cond_1

    .line 445
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    .line 446
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 447
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 453
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 455
    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 456
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_5

    .line 459
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 463
    :cond_5
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_SIM_TO_UIM:Z

    if-eqz v0, :cond_7

    .line 464
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->isCTCSlot1(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_pin_toggle:I

    .line 466
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIM"

    const-string v3, "UIM"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->sim_pin_change:I

    .line 468
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->ruim_sim_lock_on:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 471
    :cond_6
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_pin_toggle:I

    .line 472
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sim_pin_change:I

    .line 474
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->sim_lock_on:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 569
    sget p0, Lcom/android/settings/R$string;->help_url_icc_lock:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    const-string v0, "isemtelephony"

    .line 220
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    .line 221
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_USIMPersonalizationKOR"

    .line 222
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mSupportPersoLock:Z

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 233
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const/4 v1, 0x0

    const-string v2, "sim_toggle"

    const-string v3, "sim_pin"

    if-eqz v0, :cond_3

    .line 234
    sget p1, Lcom/android/settings/R$xml;->sec_sim_lock_settings_kor:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    .line 236
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 237
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroidx/preference/SecPreference;

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string p1, "perso_toggle"

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPersoToggle:Landroidx/preference/SecSwitchPreference;

    .line 241
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "perso_pw_change"

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    .line 244
    iget-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mSupportPersoLock:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticWIFIModel()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 245
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPersoToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 246
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 249
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    goto/16 :goto_1

    .line 251
    :cond_3
    sget v0, Lcom/android/settings/R$xml;->sim_lock_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_5

    const-string v0, "dialogState"

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ", subId="

    const-string v3, "IccLockSettings"

    if-eqz v0, :cond_4

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->restoreDialogStates(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: restore dialog for slotId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "currentTab"

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->restoreTabFocus(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: restore focus on slotId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 267
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 354
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->initSimInfo()V

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 356
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 357
    sget p2, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->TAB_LAYOUT_ID:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/android/settings/IccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "currentTab"

    .line 359
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 360
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v0, :cond_0

    .line 362
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 563
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 2

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPinEntered, positiveResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IccLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getMetricsCategory()I

    move-result v0

    if-eqz p2, :cond_0

    const/16 v1, 0x11a3

    goto :goto_0

    :cond_0
    const/16 v1, 0x1199

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    if-nez p2, :cond_1

    .line 740
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void

    .line 744
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 745
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 747
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->sim_bad_pin_4to8:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 748
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return-void

    .line 751
    :cond_2
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, p2, :cond_6

    const/4 p2, 0x4

    if-eq p1, v0, :cond_5

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 769
    :cond_3
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 770
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    sget p2, Lcom/android/settings/R$string;->sim_pins_dont_match:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 771
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 772
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 773
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_1

    .line 775
    :cond_4
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 776
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_1

    .line 763
    :cond_5
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 764
    iput p2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 765
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 766
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_1

    .line 756
    :cond_6
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 757
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 758
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 759
    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 760
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_1

    .line 753
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 837
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string p2, "ril.initPB"

    .line 838
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_0

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->on_reading_usim:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 843
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 844
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    const-string v1, "checkbox"

    const-string v3, "com.android.settings"

    if-ne p1, v0, :cond_1

    const-string p1, "com.samsung.android.settings.security.SimPinLockSettings"

    .line 845
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPersoToggle:Landroidx/preference/SecSwitchPreference;

    if-ne p1, v0, :cond_2

    const-string p1, "com.samsung.android.settings.security.SimPersoLockSettings"

    .line 849
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 854
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 856
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 859
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    if-ne p1, v0, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1198

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 864
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 866
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 867
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 784
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, "ril.initPB"

    .line 785
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 786
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroidx/preference/SecPreference;

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    if-ne p1, v3, :cond_1

    :cond_0
    if-eq v0, v1, :cond_1

    .line 789
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->on_reading_usim:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 790
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    .line 794
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 795
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroidx/preference/SecPreference;

    const-string v4, "checkbox"

    const-string v5, "com.android.settings"

    if-ne p1, v3, :cond_2

    const-string p1, "com.samsung.android.settings.security.SimPinLockSettings"

    .line 796
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 799
    :cond_2
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    if-ne p1, v3, :cond_3

    const-string p1, "com.samsung.android.settings.security.SimPersoLockSettings"

    .line 800
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 808
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return v1

    :cond_3
    return v2

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    .line 815
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 816
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    return v2

    :cond_5
    return v1
.end method

.method public onResume()V
    .locals 5

    .line 487
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 489
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    if-eqz v0, :cond_4

    .line 490
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v0

    .line 491
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroidx/preference/SecPreference;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog_Kor:Landroidx/preference/SecPreference;

    sget v3, Lcom/android/settings/R$string;->sim_pin_change_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 497
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 498
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    .line 500
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mSupportPersoLock:Z

    const-wide/16 v3, 0x12c

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhoneService:Lcom/android/internal/telephony/ISemTelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ISemTelephony;->getIccUsimPersoEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 508
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 510
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPersoToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPersoToggle:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPersoDialog:Landroidx/preference/SecPreference;

    sget v1, Lcom/android/settings/R$string;->sim_perso_change_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 516
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 517
    new-instance v1, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 536
    new-instance v1, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 548
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 552
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_5

    .line 553
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_1

    .line 556
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_2

    .line 580
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    const-string v1, "dialogSubId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const-string v1, "dialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogPin"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    const-string v1, "dialogError"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    const-string v1, "enableState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    const-string v1, "newPinCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 605
    :goto_0
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p0, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p0

    const-string v0, "currentTab"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 339
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 343
    :goto_0
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSubId:I

    .line 344
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSlotId:I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabChanged slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IccLockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 430
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/EditPinPreference;->updateDialog(Landroid/view/View;)V

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method
