.class public Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotificationReminderTimeIntervalController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final THREE_MINUTES_ICON:I = 0x0

.field public static final TIME_VALUE_DEFAULT:I = 0xb4


# instance fields
.field index:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIconStyle:I

.field private mNotifIconType:[Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private mPreferenceKey:Ljava/lang/String;

.field private mReminderIntervalType:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mCurrentIconStyle:I

    .line 39
    iput v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method private getDropDownIndex()I
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_key"

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mCurrentIconStyle:I

    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mReminderIntervalType:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 116
    iget v1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mCurrentIconStyle:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mReminderIntervalType:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iput v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    iget p0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mNotifIconType:[Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->time_interval_entries_selectable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mNotifIconType:[Ljava/lang/CharSequence;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mReminderIntervalType:[Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->time_interval_values_selectable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mReminderIntervalType:[Ljava/lang/CharSequence;

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mNotifIconType:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mReminderIntervalType:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->getDropDownIndex()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

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

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cce

    return p0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->reminder_3_munites:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mNotifIconType:[Ljava/lang/CharSequence;

    iget p0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    aget-object p0, v0, p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

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

    .line 92
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_key"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->getDropDownIndex()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->getDropDownIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->index:I

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;->mPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
