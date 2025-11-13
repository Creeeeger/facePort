.class public Lcom/samsung/android/settings/notification/NotificationSortController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NOTIFICATION_SORT_DB_KEY:Ljava/lang/String; = "notification_sort_order"

.field private static final SORT_BY_PRIORITY:I = 0x0

.field private static final SORT_BY_TIME:I = 0x1

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSort:I

.field private mNotifSortType:[Ljava/lang/CharSequence;

.field private mPreference:Landroidx/preference/SecDropDownPreference;

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/NotificationSortController$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/NotificationSortController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mNotifSortType:[Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03012b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mNotifSortType:[Ljava/lang/CharSequence;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreference:Landroidx/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mNotifSortType:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, p1, v0

    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_1
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

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8d13

    return p0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreference:Landroidx/preference/SecDropDownPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    const v2, 0x7f1425f4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    const v0, 0x7f1425f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/NotificationSortController;->getMetricsCategory()I

    move-result p2

    iget v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    const v2, 0x8d13

    invoke-static {p2, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p2, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    const/4 v1, -0x2

    const-string/jumbo v2, "notification_sort_order"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_sort_order"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mNotifSortType:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/notification/NotificationSortController;->mCurrentSort:I

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
