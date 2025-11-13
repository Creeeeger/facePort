.class public Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public mAutoLocationDialog:Landroid/app/AlertDialog;

.field public mContext:Landroid/content/Context;

.field public mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

.field public mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

.field public mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

.field public mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mDivider:Lcom/android/settingslib/widget/LayoutPreference;

.field public mItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

.field public mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f1422ba

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.DisplaySettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d19

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final initUI$5()V
    .locals 3

    const v0, 0x7f170188

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "sec_dark_mode_desc"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v2, 0x1

    iput v2, v1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->mPositionMode:I

    const-string/jumbo v1, "sec_dark_mode_turn_on_as_scheduled"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v1, "sec_dark_mode_auto_schedule"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v1, "sec_dark_mode_user_schedule"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v1, "divider"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v1, "sec_dark_mode_schedule"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    return-void
.end method

.method public final isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->initUI$5()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SecDarkModeSettingsFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->initUI$5()V

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {v1, v2, p1, v0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    iget-object p1, v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    :cond_1
    iget-object p1, v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->mTimePickerChangeListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "SecDarkModeSettingsFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "display_night_theme_scheduled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/16 p1, 0x1d19

    const/16 v3, 0x1d44

    invoke-static {p1, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p1, 0x1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "location_mode"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    :cond_4
    :goto_1
    return p1

    :cond_5
    return v0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1d45

    const/16 v2, 0x1d19

    const/4 v3, 0x2

    const-string v4, "display_night_theme_scheduled_type"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    const/4 v5, 0x0

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v5, v0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f14216a

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f142169

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;I)V

    const v4, 0x7f140d30

    invoke-virtual {p1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;I)V

    const v4, 0x7f1422fc

    invoke-virtual {p1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    div-int/2addr v0, v3

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v3}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    const-wide/16 p0, 0x1

    invoke-static {v2, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    const-wide/16 p0, 0x2

    invoke-static {v2, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final onResume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "pms_settings_dark_mode_enabled"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "SecDarkModeSettingsFragment"

    if-eqz v0, :cond_1

    const-string v0, "SecDarkModeSettings disabled in PSM mode"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    const-string/jumbo v0, "onResume"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->setListening(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getDialogFragment()Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final updateDarkModeSchdeuledTimePreferences(Z)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_night_theme_on_time"

    const-wide/16 v3, 0x474

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "display_night_theme_off_time"

    const-wide/16 v3, 0x1a4

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int p0, v2

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v3, v1, 0x3c

    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v5, p0, 0x3c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    const/16 v9, 0xa

    const/16 v10, 0xb

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    invoke-virtual {v7, v8, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v9, v10

    :cond_2
    invoke-virtual {v7, v9, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7, v2, v5}, Ljava/util/Calendar;->set(II)V

    if-lt v1, p0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14216e

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDarkModeScheduledTypePrefrences()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDivider:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_night_theme_scheduled_type"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/app/UiModeManager;->setNightMode(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    :cond_3
    :goto_1
    return-void
.end method
