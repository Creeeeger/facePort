.class public Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mControllers:Ljava/util/List;

.field public mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

.field public mUwbSimpleTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    const-string v1, "SimpleTestPreference"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mUwbSimpleTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mControllers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 1

    const-string p0, "UwbSimpleTestFragment"

    const-string v0, "getMetricsCategory"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 1

    const-string p0, "UwbSimpleTestFragment"

    const-string v0, "getPreferenceScreenResId"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f170209

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "UwbSimpleTestFragment"

    const-string v0, "CREATE: UwbSimpleTestFragment"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mContext:Landroid/content/Context;

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->getInstance()Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment$1;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;)V

    iget-object p0, p1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->close()V

    :cond_0
    const-string v0, "UwbSimpleTestFragment"

    const-string v1, "DESTROY: UwbSimpleTestFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "UwbSimpleTestFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->close()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$4;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string p0, "UwbSimpleTestFragment"

    const-string v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "UwbSimpleTestFragment"

    const-string/jumbo v0, "setPreferenceScreen"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "uwb_test_simple_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mUwbSimpleTestFragmentController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    iput-object p0, p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mController:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;

    return-void
.end method
