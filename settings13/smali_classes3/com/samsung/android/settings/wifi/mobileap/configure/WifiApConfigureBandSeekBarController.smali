.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "WifiApConfigureBandSeekBarController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final BUNDLE_KEY_BAND_SEEKBAR_VALUE:Ljava/lang/String; = "bundle_key_band_seekbar_value"

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "band_seekbar_preference"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureBandSeekBarController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

.field private mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

.field private mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    return-void
.end method

.method private getBandDisplayTextArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 145
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    const-string v0, "band_seekbar_preference"

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_wifi_ap_info_detail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->getBandDisplayTextArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setLabels([Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayValueIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mPreferenceItemsCLickListener:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;->setOnPreferenceItemsCLickListener(Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference$OnPreferenceItemsCLickListener;)V

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 102
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->TAG:Ljava/lang/String;

    const-string v1, "getAvailabilityStatus:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isBandSeekBarUxSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "AVAILABLE"

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "CONDITIONALLY_UNAVAILABLE:"

    .line 107
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->getBandDisplayTextArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isBandTypeModified()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getBandArray()[I

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getBandArray()[I

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_band_seekbar_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 172
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mThisSeekBarPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    const-string v0, "bundle_key_band_seekbar_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    :cond_0
    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 3

    .line 118
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Slider new position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 120
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateWifiSharingState()V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSecurityType()V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateBroadcastChannelState()V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandSeekBarController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSupportWifi6State()V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
