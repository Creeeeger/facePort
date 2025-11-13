.class public final synthetic Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;
.implements Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/datetime/timezone/TimeZoneSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datetime/timezone/TimeZoneSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    iget p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/settings/datetime/timezone/FixedOffsetPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datetime/timezone/RegionPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->startPickerFragment(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datetime/timezone/TimeZoneSettings;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mIsHomeCity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "homecity_timezone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setupForCurrentTimeZone > HOMECITY_TIMEZONE : "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TimeZoneSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mSelectedTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->isFixedOffset(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->setSelectByRegion(Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->onZonePickerRequestResult(Lcom/android/settings/datetime/timezone/model/TimeZoneData;Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneSettings;->mPendingZonePickerRequestResult:Landroid/content/Intent;

    :cond_3
    return-void
.end method
