.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiApConfigureBandDropDownController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUNDLE_KEY_BAND_DROPDOWN_VALUE:Ljava/lang/String; = "bundle_key_band_dropdown__value"

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "band_dropdown_preference"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureBandDropDownController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

.field private mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

.field private mWifiApBandConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfigList:Ljava/util/List;

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

    .line 146
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getBandDisplayValueArray(Ljava/util/List;)[Ljava/lang/String;
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

    .line 155
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayValueIndexString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private setEntries([Ljava/lang/String;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setEntryValues([Ljava/lang/String;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSummaryText(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;)V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplaySummaryText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    :goto_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 134
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->wifi_ap_primary_text_color:I

    .line 136
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    .line 134
    invoke-virtual {v0, v2, v3, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 138
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->sec_widget_body_text_color:I

    .line 140
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 138
    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setValueIndex(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayValueIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setSummaryText(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    .line 78
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfigList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->getBandDisplayTextArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setEntries([Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfigList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->getBandDisplayValueArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setEntryValues([Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setValueIndex(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfigList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mThisDropDownPreference:Landroidx/preference/SecDropDownPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 110
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->TAG:Ljava/lang/String;

    const-string v1, "getAvailabilityStatus:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isBandSeekBarUxSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AVAILABLE"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "CONDITIONALLY_UNAVAILABLE:"

    .line 115
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

.method public getBandArray()[I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getBandArray()[I

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 52
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Band value changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 54
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setSummaryText(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateWifiSharingState()V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSecurityType()V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateBroadcastChannelState()V

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSupportWifi6State()V

    const/4 p0, 0x1

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_band_dropdown__value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 172
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSupportedBandList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApBandConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->setValueIndex(Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;)V

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
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->getWifiApBandConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->getDisplayValueIndex()I

    move-result p0

    const-string v0, "bundle_key_band_dropdown__value"

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

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureBandDropDownController;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
