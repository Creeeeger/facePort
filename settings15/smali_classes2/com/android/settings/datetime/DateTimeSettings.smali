.class public Lcom/android/settings/datetime/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
.implements Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f170178

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/android/settings/datetime/DateTimeSettings$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/datetime/DateTimeSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDialogMetricsCategory(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x260

    return p0

    :cond_1
    const/16 p0, 0x25f

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DateTimeSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x26

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170178

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v2, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-class p1, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/LocationTimeZoneDetectionPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    const-class p1, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->setDateAndTimeCallback(Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    const-class p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/DatePreferenceController;->setHost(Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;)V

    const-class p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/TimePreferenceController;->setHost(Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;)V

    const-class p1, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->setTimeAndDateCallback(Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;->setFromSUW(Z)Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    const-class p1, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->setTimeAndDateCallback(Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)Lcom/android/settings/datetime/TimeFormatPreferenceController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->setFromSUW(Z)Lcom/android/settings/datetime/TimeFormatPreferenceController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    new-instance p1, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/settings/datetime/DateTimeSettings;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/datetime/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/datetime/DateTimeSettings;Landroid/os/Handler;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/datetime/TimePreferenceController;->buildTimePicker(Landroid/content/Context;)Landroidx/picker/app/SeslTimePickerDialog;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-class p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/datetime/DatePreferenceController;->buildDatePicker(Landroid/content/Context;Landroid/app/timedetector/TimeDetectorHelper;)Landroidx/picker/app/SeslDatePickerDialog;

    move-result-object p0

    return-object p0
.end method
