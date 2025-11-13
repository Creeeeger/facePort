.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field public mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

.field public mAutoPowerOffTime:Landroidx/preference/SecPreference;

.field public mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

.field public mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

.field public mAutoPowerOnTime:Landroidx/preference/SecPreference;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mCurrentDialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static registerAutoPowerOffAlarm(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "power_off_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "by_user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static registerAutoPowerOnAlarm(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "power_on_reg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "by_user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput p1, v0, Landroid/text/format/Time;->hour:I

    iput p2, v0, Landroid/text/format/Time;->minute:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide p1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x281

    goto :goto_0

    :cond_0
    const/16 v0, 0x201

    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x384

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p1, 0x7f17014e

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "auto_power_on_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    const-string p1, "auto_power_on_time"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    const-string p1, "auto_power_on_days"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    const-string p1, "auto_power_off_switch"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    const-string p1, "auto_power_off_time"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    const-string p1, "auto_power_off_days"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_power_off_time"

    const/16 v2, 0x8fc

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    div-int/lit8 v5, p1, 0x64

    rem-int/lit8 v6, p1, 0x64

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_power_on_time"

    const/16 v2, 0x2bc

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    div-int/lit8 v5, p1, 0x64

    rem-int/lit8 v6, p1, 0x64

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const/16 v5, 0x384

    const-string v6, "com.android.settings"

    const/4 v7, 0x0

    const-string v8, "AutoPowerOnOffSettings"

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "onPreferenceChange : mAutoPowerOnSettings"

    invoke-static {v8, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_power_on_settings"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "power_on_reg"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    if-eqz p1, :cond_1

    move-wide v1, v3

    :cond_1
    const/16 p0, 0x2329

    invoke-static {v5, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v9

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "onPreferenceChange : mAutoPowerOffSettings"

    invoke-static {v8, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_power_off_settings"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "power_off_reg"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    if-eqz p1, :cond_4

    move-wide v1, v3

    :cond_4
    const/16 p0, 0x232a

    invoke-static {v5, p0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return v9

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    check-cast p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPreferenceChange : mAutoPowerOnDays, value.getCoded() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    const-string v0, "auto_power_on_repeat_days"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;)V

    return v9

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    check-cast p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPreferenceChange : mAutoPowerOffDays, value.getCoded() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    const-string v0, "auto_power_off_repeat_days"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;)V

    return v9

    :cond_7
    return v7
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AutoPowerOnOffSettings"

    if-eqz v0, :cond_0

    const-string v0, "Show dialog : KEY_AUTO_POWER_ON_TIME"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Show dialog : KEY_AUTO_POWER_OFF_TIME"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 9

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_power_on_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_off_settings"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    move v2, v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_on_time"

    const/16 v5, 0x2bc

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_power_on_repeat_days"

    const/16 v6, 0x7c

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v5, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_power_off_time"

    const/16 v8, 0x8fc

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_power_off_repeat_days"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v7, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_4

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    div-int/lit8 v6, v3, 0x64

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v2, v6, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_5

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    div-int/lit8 v3, v4, 0x64

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_6

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v5, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    iput v3, v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_7

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v7, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    iput v2, v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffSettings:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffDays:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    return-void
.end method

.method public final onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mCurrentDialogId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnTime:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p2, p3

    const-string p3, "auto_power_on_time"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOffTime:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p2, p3

    const-string p3, "auto_power_off_time"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOffAlarm(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
