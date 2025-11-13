.class public Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "TaskBarPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final KEY_TASK_BAR_SETTING:Ljava/lang/String; = "task_bar"

.field private static final SAMSUNG_LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final TAG:Ljava/lang/String; = "TaskBarPreferenceController"


# instance fields
.field private final EASY_MODE:I

.field private final STANDARD_MODE:I

.field private final TASK_BAR_REFRESH:Ljava/lang/String;

.field private final TASK_BAR_REFRESH_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private mRefreshObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$MIgVzD3sWoY0TZD4bRCWDGVG_FI(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->taskbarTurnOnDialogClickListener(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "task_bar_refresh"

    .line 35
    iput-object p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TASK_BAR_REFRESH:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TASK_BAR_REFRESH_URI:Landroid/net/Uri;

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->EASY_MODE:I

    const/4 p2, 0x1

    .line 38
    iput p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->STANDARD_MODE:I

    .line 43
    new-instance p2, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;-><init>(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mRefreshObserver:Landroid/database/ContentObserver;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private isFrontDisplay()Z
    .locals 1

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSamsungLauncher()Z
    .locals 3

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 165
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 169
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home app package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.android.app.launcher"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSmartViewEnabled()Z
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTaskBarPrefDisabled()Z
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 97
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->isFrontDisplay()Z

    move-result v3

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->isSamsungLauncher()Z

    move-result v4

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->isSmartViewEnabled()Z

    move-result p0

    .line 100
    sget-object v5, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEasyModeEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isFrontDisplay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isSamsungLauncher: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isSmartView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    return v2
.end method

.method private taskbarTurnOnDialogClickListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->unpinPinnedEdge(Landroid/content/Context;)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "task_bar"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "task_bar"

    .line 119
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportTaskBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->isTaskBarPrefDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x3

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 2

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "task_bar"

    const/4 v1, 0x1

    .line 70
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TASK_BAR_REFRESH_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mRefreshObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mRefreshObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 77
    sget-object v0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskBar Switch is clicked to -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isPinPanelRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->showUnpinDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "task_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->edge_panels_not_supported_in_easy_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->edge_panels_not_supported_in_winner_cover_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isMinimalPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isSamsungLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isSmartViewEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isEnterprisePolicyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 141
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isButtonOnlyNavigationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->task_bar_not_supported_in_navigation_bar_button_only_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 148
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
