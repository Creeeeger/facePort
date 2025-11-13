.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "device_detail_category"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer;"
        }
    .end annotation
.end field

.field private mSimChangeObserver:Landroidx/lifecycle/Observer;

.field private mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;


# direct methods
.method public static synthetic $r8$lambda$ScvIlDA2M1Q8MB8v-HstnC8gcss(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->lambda$updateState$1(Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r5-_M3QTu1gTR7dLkq1HZcHJ7oc(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->lambda$updateState$0(Landroidx/preference/Preference;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getCarrierName(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f140c9c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getPreferenceTitle(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f142c6a

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f142c69

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$updateState$0(Landroidx/preference/Preference;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updateStateBySlot(Landroidx/preference/Preference;I)V

    return-void
.end method

.method private synthetic lambda$updateState$1(Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result p2

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {p0, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {p3, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 0

    new-instance p0, Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "sim_status"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "device_detail_category"

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    iput v4, v3, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mBasePreferenceOrdering:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    iget v4, v4, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->mBasePreferenceOrdering:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimSlotIndex()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Preference key invalid: "

    const-string v2, ". Error Msg: "

    invoke-static {v1, p0, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SlotSimStatus"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    add-int/lit8 p0, p0, -0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->sViewIdsInDigitFormat:[I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SimStatusDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "arg_key_sim_slot"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "arg_key_dialog_title"

    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateDynamicRawDataToIndex(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1413f1

    goto :goto_0

    :cond_1
    const v1, 0x7f1413f0

    :goto_0
    new-instance v2, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f14002b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updateStateBySlot(Landroidx/preference/Preference;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateStateBySlot(Landroidx/preference/Preference;I)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setCopyingEnabled(Z)V

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getCarrierName(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
