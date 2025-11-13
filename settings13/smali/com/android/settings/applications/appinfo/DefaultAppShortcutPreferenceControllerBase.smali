.class public abstract Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DefaultAppShortcutPreferenceControllerBase.java"


# instance fields
.field private mAppVisible:Z

.field protected final mPackageName:Ljava/lang/String;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private final mRoleManager:Landroid/app/role/RoleManager;

.field private final mRoleName:Ljava/lang/String;

.field private mRoleVisible:Z


# direct methods
.method public static synthetic $r8$lambda$99ipONgjzKT6T1Y14XD15xfGz-Q(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYS-CUh7ApzWtVChkV56sBkFqM4(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    .line 60
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    .line 62
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;)V

    invoke-virtual {p1, p3, p2, v0}, Landroid/app/role/RoleManager;->isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 67
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;)V

    invoke-virtual {p1, p3, p4, p2, v0}, Landroid/app/role/RoleManager;->isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isDefaultApp()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleVisible:Z

    .line 65
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->refreshAvailability()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mAppVisible:Z

    .line 70
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->refreshAvailability()V

    return-void
.end method

.method private refreshAvailability()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleVisible:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mAppVisible:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
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
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleManager:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/applications/AppUtils;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_no_default_app:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mRoleName:Ljava/lang/String;

    const-string v1, "android.intent.extra.ROLE_NAME"

    .line 121
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
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

    .line 140
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 141
    instance-of p0, p1, Landroidx/preference/SecPreference;

    if-eqz p0, :cond_0

    .line 142
    check-cast p1, Landroidx/preference/SecPreference;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
