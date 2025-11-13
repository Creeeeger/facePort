.class public Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

.field public mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

.field public mIsDeleteDialogShowing:Z

.field public mIsDialogShowing:Z

.field public mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

.field public mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field public mScheduleNamePreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mScheduleNameView:Landroid/widget/EditText;

.field public mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field public mSecScheduleStart:Landroidx/preference/SecPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDialogShowing:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDeleteDialogShowing:Z

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x90

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702b7

    return p0
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p1, Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    move-object v5, p1

    move-object v7, p0

    invoke-direct/range {v5 .. v10}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public final onCreateInternal()V
    .locals 8

    const-string v0, "schedule_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNamePreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0596

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    const-string v1, "disableImage=true"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNamePreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0d01

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    const v1, 0x7f1438ca

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-boolean v1, v1, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const v3, 0x7f1438c7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView_layout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mScheduleNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    if-nez v0, :cond_3

    const-string v0, "schedule_reapeat"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0d78

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    const v1, 0x7f0a0474

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput-object v1, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput-object v1, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    :cond_3
    const-string v0, "schedule_time_start"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mIsNew:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f141fb1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setDefaultRoundButtonStyle()V

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    iput-object v1, v0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mRepeatButtonGroup:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_6

    sget-object v5, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->VALUES_DAYS:[I

    aget v6, v0, v4

    add-int/lit8 v6, v6, 0x7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x7

    aget v5, v5, v6

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->clickRepeatButton()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->clickRepeatButton()V

    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    goto :goto_1

    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    if-eqz v0, :cond_0

    const-string v1, "isDialogShowing"

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    const-string v0, "isDeleteDialogShowing"

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSecScheduleTimeType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput p3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput p3, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateScheduleRule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateSecScheduleStartSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "isDialogShowing"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDialogShowing:Z

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "isDeleteDialogShowing"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDeleteDialogShowing:Z

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDialogShowing:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 p2, p2, 0x3c

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr p2, v0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    new-instance v2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;-><init>(Landroid/content/Context;IILcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;)V

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mCustomTimePickerDialog:Lcom/samsung/android/settings/datetime/CustomTimePickerDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mIsDeleteDialogShowing:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showConfirmDialog()V

    :cond_3
    return-void
.end method

.method public final setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final showConfirmDialog()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f141fb4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    const v2, 0x7f141fb3

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f141fb2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0605ec

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final updateControlsInternal()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSecScheduleStart:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateSecScheduleStartSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final updateSecScheduleStartSummary()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0xb

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v4, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget v7, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->clear()V

    iget-object v9, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v8, v5, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v8, v1, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, v0

    if-lt v3, v7, :cond_2

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143880

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
