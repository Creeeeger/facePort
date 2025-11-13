.class public Lcom/android/settings/fuelgauge/PowerUsageTimeController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_BACKGROUND_TIME_PREF:Ljava/lang/String; = "battery_usage_background_time"

.field private static final KEY_POWER_USAGE_TIME:Ljava/lang/String; = "battery_usage_time_category"

.field private static final KEY_SCREEN_TIME_PREF:Ljava/lang/String; = "battery_usage_screen_time"

.field private static final TAG:Ljava/lang/String; = "PowerUsageTimeController"


# instance fields
.field mBackgroundTimePreference:Lcom/android/settings/fuelgauge/PowerUsageTimePreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPowerUsageTimeCategory:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mScreenTimePreference:Lcom/android/settings/fuelgauge/PowerUsageTimePreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "battery_usage_time_category"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getPowerUsageTimeInfo(J)Ljava/lang/CharSequence;
    .locals 2

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f141c8f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double p1, p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_usage_time_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mPowerUsageTimeCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "battery_usage_screen_time"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mScreenTimePreference:Lcom/android/settings/fuelgauge/PowerUsageTimePreference;

    const-string v0, "battery_usage_background_time"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mBackgroundTimePreference:Lcom/android/settings/fuelgauge/PowerUsageTimePreference;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mPowerUsageTimeCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public handleScreenTimeUpdated(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mScreenTimePreference:Lcom/android/settings/fuelgauge/PowerUsageTimePreference;

    const v2, 0x7f141c89

    move-object v0, p0

    move-wide v3, p2

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->showTimePreference(Lcom/android/settings/fuelgauge/PowerUsageTimePreference;IJLjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mBackgroundTimePreference:Lcom/android/settings/fuelgauge/PowerUsageTimePreference;

    const v2, 0x7f141c88

    move-wide v3, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->showTimePreference(Lcom/android/settings/fuelgauge/PowerUsageTimePreference;IJLjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->showCategoryTitle(Ljava/lang/String;)V

    :cond_1
    return-void
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

.method public showCategoryTitle(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mPowerUsageTimeCategory:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140594

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f140595

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->mPowerUsageTimeCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public showTimePreference(Lcom/android/settings/fuelgauge/PowerUsageTimePreference;IJLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;->mTimeTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;->mTimeTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/settings/fuelgauge/PowerUsageTimeController;->getPowerUsageTimeInfo(J)Ljava/lang/CharSequence;

    move-result-object p0

    iget-object p2, p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;->mTimeSummary:Ljava/lang/CharSequence;

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p0, p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;->mTimeSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;->mAnomalyHintText:Ljava/lang/CharSequence;

    invoke-static {p0, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    iput-object p6, p1, Lcom/android/settings/fuelgauge/PowerUsageTimePreference;->mAnomalyHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
