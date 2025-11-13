.class public Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field protected static final MODE_4G_CALLING:I = 0x2

.field protected static final MODE_ADVANCED_CALL:I = 0x1

.field protected static final MODE_NONE:I = -0x1

.field protected static final MODE_VOLTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Enhanced4g"


# instance fields
.field private m4gCurrentMode:I

.field private final m4gLteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:Ljava/lang/Integer;

.field private mHas5gCapability:Z

.field mIsNrEnabledFromCarrierConfig:Z

.field mPreference:Landroidx/preference/Preference;

.field private mShow5gLimitedDialog:Z

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mCallState:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdvancedCallingSettingEnabled(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isDialogNeeded()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Has5gCapability:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    const-string v2, "Enhanced4g"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mShow5gLimitedDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mIsNrEnabledFromCarrierConfig:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isModeMatched()Z
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->getMode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUserControlAllowed(Landroid/os/PersistableBundle;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isCallStateIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "editable_enhanced_4g_lte_bool"

    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsMmTelManager;->setAdvancedCallingSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;

    invoke-interface {p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;->on4gLteUpdated()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    const-string v0, "fail to set VoLTE="

    const-string v1, ". subId="

    invoke-static {v0, v1, p2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Enhanced4g"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private show5gLimitedDialog(Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 3

    const-string v0, "Enhanced4g"

    const-string v1, "show5gLimitedDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;)V

    const p1, 0x7f1431e8

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1431e7

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1408bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1409ed

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isModeMatched()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v0

    iget v2, v0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {v2}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v2, "hide_enhanced_4g_lte_bool"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isVoLteProvisioned()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/settings/network/ims/ImsQueryController;->isServiceStateReady(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fail to get VoLte service status. subId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "VolteQueryImsState"

    invoke-static {v6, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_5

    return v1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isUserControlAllowed(Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_6

    move v3, v4

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    :cond_0
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const-string v0, "show_4g_for_lte_data_icon_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "enhanced_4g_lte_title_variant_int"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    :cond_3
    const-string v0, "volte_5g_limited_alert_dialog_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mShow5gLimitedDialog:Z

    const-string v0, "carrier_nr_availabilities_int_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mIsNrEnabledFromCarrierConfig:Z

    return-object p0
.end method

.method public isCallStateIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v1, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object v2, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)V

    iget-object p0, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->access$000(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object v2, v2, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    invoke-virtual {p0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object p0, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v1

    iget-object p0, v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const-wide/32 v3, 0x80000

    and-long v0, v1, v3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_1
    return-void
.end method

.method public queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;
    .locals 1

    new-instance v0, Lcom/android/settings/network/ims/VolteQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/VolteQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isDialogNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->show5gLimitedDialog(Landroid/telephony/ims/ImsMmTelManager;)V

    return v1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isUserControlAllowed(Landroid/os/PersistableBundle;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
