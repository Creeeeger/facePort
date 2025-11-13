.class public Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "CameraCutoutPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;
    }
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PREFERENCE_KEY:Ljava/lang/String; = "camera_cutout"

.field private static final TAG:Ljava/lang/String; = "com.samsung.android.settings.display.controller.CameraCutoutPreferenceController"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

.field private mResult:Ljava/lang/String;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "camera_cutout"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    .line 66
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "launcherapps"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method private collectData()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, " launchable activities:"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 153
    sget-object v2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 156
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.settings"

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->loadAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;

    move-result-object v1

    .line 165
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Finish getting ApplicationInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCutoutPolicy(Ljava/lang/String;I)I
    .locals 2

    const/4 p0, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroid/app/IActivityTaskManager;->getCutoutPolicy(ILjava/lang/String;)I

    move-result p0

    .line 249
    sget-object p2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraCutoutPackage() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    sget-object p1, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    const-string p2, "getCameraCutoutPackage() RemoteException"

    invoke-static {p1, p2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0
.end method

.method private loadAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;
    .locals 2

    .line 172
    new-instance v0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;-><init>()V

    .line 173
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;->mPackage:Ljava/lang/String;

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->getCutoutPolicy(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;->mType:I

    return-object v0
.end method

.method private setCutoutPolicy(Ljava/lang/String;II)V
    .locals 2

    .line 237
    sget-object p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCutoutPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Landroid/app/IActivityTaskManager;->setCutoutPolicy(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    sget-object p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "setCameraCutoutPackage() RemoteException"

    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updatePreferenceState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setEnabledAppearance(Z)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->camera_cutout_toast_message_for_cover_screen:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->setToastMsg(Ljava/lang/String;)V

    .line 207
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private writeJSONData()V
    .locals 6

    .line 133
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;

    .line 136
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "package"

    .line 138
    iget-object v5, v2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    .line 139
    iget v2, v2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;->mType:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 141
    sget-object v4, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x5

    return p0

    :cond_2
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

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 228
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/CameraCutoutFragmentUserSelect;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->full_screen_apps_camera_cutout:I

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x64

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

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

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->collectData()V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->writeJSONData()V

    .line 79
    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v1

    const-string v2, "camera_cutout"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/display/DeviceTypeConstant;->getDeviceType()I

    move-result v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->getAvailabilityStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 82
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->full_screen_apps_summary_for_camera_cutout:I

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mResult:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldSupportCameraCutout(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x5

    .line 90
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mPreference:Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;->isEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 7

    const-string v0, "package"

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera_cutout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->getAvailabilityStatus()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "device_type"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/display/DeviceTypeConstant;->getDeviceType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mResult:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->collectData()V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;

    .line 104
    iget-object v2, v2, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->mResult:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 109
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 110
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 111
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v5, v2, v4}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->setCutoutPolicy(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 116
    sget-object v0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 119
    :cond_2
    sget-object p1, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "device settings cannot be transferred on this device due to different device type"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 121
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 122
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unsupported_setting_summary:I

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0

    .line 127
    :cond_3
    :goto_2
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 128
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 193
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldSupportCameraCutout(Landroid/content/Context;)Z

    move-result p1

    .line 195
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;->updatePreferenceState(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
