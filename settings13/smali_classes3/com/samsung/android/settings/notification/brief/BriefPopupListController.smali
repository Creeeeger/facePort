.class public Lcom/samsung/android/settings/notification/brief/BriefPopupListController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BriefPopupListController.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "edge_lighting"

.field public static final EDGE_LIGHTING_ENABLE_APP_LIST:Ljava/lang/String; = "edge_lighting_enable_app_list"

.field private static final KEY_BRIEF_POPUP_LIST:Ljava/lang/String; = "apps_to_view_as_brief_popup"

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final TAG:Ljava/lang/String; = "BriefPopupListController"


# instance fields
.field private final IS_ALL_APPS_AVAILABLE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mParentScreen:Landroidx/preference/PreferenceScreen;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "apps_to_view_as_brief_popup"

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "AllAppsAvailable"

    .line 32
    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->IS_ALL_APPS_AVAILABLE:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isEdgeLightingDefaultOff()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "edge_lighting"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "apps_to_view_as_brief_popup"

    return-object p0
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
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 64
    new-instance v2, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 65
    iget-object v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getEdgeLightingEnabledList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v4, ""

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    const-string v5, "AllAppsAvailable"

    .line 72
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_edge_lighting_enable_app_list_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    aget-object v2, v0, v3

    const-string v5, ","

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v0, v3

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    array-length v4, v2

    goto :goto_0

    :cond_3
    move v4, v3

    .line 83
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "edgelighting enabled applist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BriefPopupListController"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    if-eq v4, v1, :cond_5

    const/4 v0, 0x2

    if-eq v4, v0, :cond_4

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_edge_lighting_enable_app_list_other:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v2, v3

    aput-object v6, v5, v3

    aget-object v3, v2, v1

    aput-object v3, v5, v1

    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 93
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_edge_lighting_enable_app_list_two:I

    new-array v0, v0, [Ljava/lang/Object;

    aget-object v5, v2, v3

    aput-object v5, v0, v3

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 90
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_edge_lighting_enable_app_list_one:I

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 87
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_edge_lighting_enable_app_list_zero:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method protected getSummaryOnBackground()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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
    .locals 0

    return-void
.end method

.method public updateVisible()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isEdgeLightingDefaultOff()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "edge_lighting"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
