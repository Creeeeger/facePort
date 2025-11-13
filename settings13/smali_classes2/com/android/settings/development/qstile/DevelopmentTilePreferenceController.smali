.class public Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DevelopmentTilePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DevTilePrefController"

.field private static final mDenyListQstile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final META_DATA_DEXMODE_QUICK_PANEL:Ljava/lang/String;

.field private final mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.samsung.android.settings.bluetooth.BluetoothCastTile"

    const-string v1, "com.samsung.android.settings.qstile.NightThemeTiles"

    .line 52
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mDenyListQstile:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "android.service.quicksettings.SEM_DEFAULT_TILE_DEXMODE_ONLY"

    .line 57
    iput-object p2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->META_DATA_DEXMODE_QUICK_PANEL:Ljava/lang/String;

    .line 63
    new-instance p2, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    invoke-direct {p2, p1}, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x280

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 82
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 83
    iget-object v3, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    if-nez v3, :cond_1

    .line 85
    iget-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 90
    :cond_2
    :goto_1
    sget-object v3, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mDenyListQstile:Ljava/util/List;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v4, "com.samsung.android.settings.qstile.NightThemeTiles"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v5, :cond_0

    .line 92
    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 93
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_3
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    const-string v6, "android.service.quicksettings.SEM_DEFAULT_TILE_DEXMODE_ONLY"

    .line 100
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 107
    :cond_4
    new-instance v3, Landroidx/preference/SwitchPreference;

    invoke-direct {v3, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget v4, v2, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setIcon(I)V

    .line 121
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;->mOnChangeHandler:Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
