.class public Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecDarkModeSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private final TAB_INDEX_END:I

.field private final TAB_INDEX_START:I

.field private mAutoLocationDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mDarkModeDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

.field private mDarkModeSelectedTimeType:I

.field private mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

.field private mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

.field private mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDarkModeAutoSchedule(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkModeTurnOnAsScheduled(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDarkModeUserSchedule(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiModeManager(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/app/UiModeManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDarkModeScheduledTypePrefrences(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->TAB_INDEX_START:I

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->TAB_INDEX_END:I

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private getDarkModeScheduledType()I
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getDarkModeUserTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_on_time"

    const-wide/16 v2, 0x474

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "display_night_theme_off_time"

    const-wide/16 v2, 0x1a4

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int p0, v1

    .line 268
    div-int/lit8 v1, v0, 0x3c

    .line 269
    rem-int/lit8 v2, v0, 0x3c

    .line 270
    div-int/lit8 v3, p0, 0x3c

    .line 271
    rem-int/lit8 v4, p0, 0x3c

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 277
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    const/16 v8, 0xb

    const/16 v9, 0xa

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    invoke-virtual {v6, v7, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 279
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 280
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    .line 281
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 284
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    invoke-virtual {v6, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 285
    invoke-virtual {v6, v1, v4}, Ljava/util/Calendar;->set(II)V

    if-lt v0, p0, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_blue_light_filter_off_time_next_day_summary_format:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 290
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    new-instance v3, Ljava/util/Date;

    .line 291
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 290
    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 288
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 294
    :cond_2
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initUI()V
    .locals 3

    .line 181
    sget v0, Lcom/android/settings/R$xml;->sec_display_dark_mode_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canChangeNightMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "sec_dark_mode_desc"

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    const-string v1, "sec_dark_mode_turn_on_as_scheduled"

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    .line 190
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v1, "sec_dark_mode_auto_schedule"

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 195
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    const-string v1, "sec_dark_mode_user_schedule"

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 200
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    const-string v1, "sec_dark_mode_schedule"

    .line 203
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    .line 204
    invoke-virtual {v1, v2}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSwitchPreferences()V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    return-void
.end method

.method private isDarkModeScheduledTypeSupported()Z
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "display_night_theme_scheduled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isLocationOnState()Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private showLocationOnDialog()V
    .locals 3

    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 504
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_blue_light_filter_dlg_turn_on_location_title:I

    .line 505
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_blue_light_filter_dlg_turn_on_location:I

    .line 506
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$4;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_dlg_turn_on:I

    new-instance v2, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$3;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$2;-><init>(Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;)V

    .line 531
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    .line 548
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 549
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateDarkModeSchdeuledTimePreferences(Z)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getDarkModeUserTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDarkModeScheduledTypePrefrences()V
    .locals 4

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->isDarkModeScheduledTypeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 231
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getDarkModeScheduledType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 241
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 246
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDarkModeSwitchPreferences()V
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_night_theme_scheduled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 304
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 305
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 306
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 308
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected changeDialogShowingState()V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getDialogFragment()Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    :cond_0
    return-void
.end method

.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 137
    sget p0, Lcom/android/settings/R$string;->sec_dark_mode_settings:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.DisplaySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d19

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 592
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 593
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 594
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->initUI()V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 596
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 597
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 599
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 603
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 604
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 606
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 607
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SecDarkModeSettingsFragment"

    const-string v1, "onCreate"

    .line 152
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->initUI()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 454
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 460
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 466
    new-instance v1, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    add-int/2addr v3, p1

    .line 468
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    .line 469
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;->addTimePickerChangeListener(Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog$TimePickerChangeListener;)V

    .line 471
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTimePickerDialog:Lcom/samsung/android/settings/display/widget/SecDarkModeTimePickerDialog;

    return-object p0

    .line 473
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 354
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mAutoLocationDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SecDarkModeSettingsFragment"

    const-string v1, "onPause"

    .line 347
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 349
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 390
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 392
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeTurnOnAsScheduled:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_night_theme_scheduled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1d44

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    if-eqz p2, :cond_4

    .line 403
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->isLocationOnState()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getDarkModeScheduledType()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 407
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 409
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    goto :goto_1

    .line 412
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->onClick()V

    :cond_4
    :goto_1
    return p1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSchedule:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 381
    iput v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeSelectedTimeType:I

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 385
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeAutoSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1d45

    const-string v2, "display_night_theme_scheduled_type"

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->isLocationOnState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    goto :goto_0

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->showLocationOnDialog()V

    .line 489
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getMetricsCategory()I

    move-result p0

    const-wide/16 v2, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mDarkModeUserSchedule:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getMetricsCategory()I

    move-result p0

    const-wide/16 v2, 0x2

    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "SecDarkModeSettingsFragment"

    const-string v1, "onResume"

    .line 336
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mSettingsObserver:Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment$SettingsObserver;->setListening(Z)V

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSwitchPreferences()V

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeScheduledTypePrefrences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->changeDialogShowingState()V

    .line 375
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTimeSet(III)V
    .locals 3

    .line 422
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    invoke-static {p2, p3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/app/UiModeManager;->setCustomNightModeStart(Ljava/time/LocalTime;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 429
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-string v2, "display_night_theme_on_time"

    .line 427
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1d46

    .line 432
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result p2

    add-int/2addr v1, p2

    int-to-long v1, v1

    .line 430
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    .line 434
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/app/UiModeManager;->setCustomNightModeEnd(Ljava/time/LocalTime;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 437
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-string v2, "display_night_theme_off_time"

    .line 435
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1d47

    .line 440
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result p2

    add-int/2addr v1, p2

    int-to-long v1, v1

    .line 438
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 442
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/SecDarkModeSettingsFragment;->updateDarkModeSchdeuledTimePreferences(Z)V

    :cond_2
    return-void
.end method
