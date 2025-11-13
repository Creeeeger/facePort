.class public Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FloatingPopupAppsPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingPopupAppsPreferenceController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/SecPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAppLableFromPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 p0, 0x1

    .line 60
    invoke-virtual {p1, p0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.freeform_window_management"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

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
    .locals 10

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->getValidMultiWindowPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewUtil;->filterMultiWindowSupportPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    const-string v3, "FloatingPopupAppsPreferenceController"

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smart popup view enabled app size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_floating_included_app_list_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v2, p0

    goto/16 :goto_1

    :cond_1
    if-eqz v4, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq v4, v1, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 109
    iget-object v6, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->notification_floating_included_app_list_other:I

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->getAppLableFromPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v3

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->getAppLableFromPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v8, v1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    .line 109
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->notification_floating_included_app_list_two:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->getAppLableFromPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v3

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->getAppLableFromPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v5, v1

    .line 103
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_floating_included_app_list_zero:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 97
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->notification_floating_included_app_list_one:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->getAppLableFromPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v1, v3

    .line 97
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 88
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_floating_included_app_list_zero:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-object v2

    :cond_6
    :goto_2
    const-string p0, "smart popup view enabled app list is null"

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
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
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 51
    iget-object p1, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notification_bubbles"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateValues(I)V
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
