.class public Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotificationIconOnStatusBarController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ALL_NOTIFICATION_ICON:I = 0x0

.field private static final COUNT_NOTIFICATION_ICON:I = 0x3

.field private static final NO_NOTIFICATION_ICON:I = 0x2

.field private static final RECENT_NOTIFICATION_ICON:I = 0x1

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIconStyle:I

.field private mNotifIconType:[Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mNotifIconType:[Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->notification_icon_on_status_bar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mNotifIconType:[Ljava/lang/CharSequence;

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mNotifIconType:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "0"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "1"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "3"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "2"

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

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

    const/16 p0, 0x1040

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
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, v1}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_recent_notification_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget v3, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_count_notification_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_no_notification_icon_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_all_notification_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
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
    .locals 3

    .line 104
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    .line 105
    iget-object p2, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    const-string v1, "simple_status_bar"

    const/4 v2, -0x2

    invoke-static {p2, v1, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 106
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
    .locals 4

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 73
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getSimpleStatsuBarDefaultValue()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "simple_status_bar"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mNotifIconType:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 76
    :cond_0
    iput v1, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_6

    .line 80
    iget v2, p0, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;->mCurrentIconStyle:I

    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 95
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
