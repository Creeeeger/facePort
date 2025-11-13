.class public Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ASPECT_RATIO_VALUE_APP_DEFAULT:I = 0x0

.field public static final ASPECT_RATIO_VALUE_CUTOUT_OFF:I = 0x4

.field public static final ASPECT_RATIO_VALUE_FIXED_OFF:I = 0x3

.field public static final ASPECT_RATIO_VALUE_FIXED_ON:I = 0x2

.field public static final ASPECT_RATIO_VALUE_FULL_SCREEN:I = 0x1

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PREFERENCE_KEY:Ljava/lang/String; = "full_screen_apps"

.field private static final TAG:Ljava/lang/String; = "com.samsung.android.settings.display.controller.FullScreenAppsPreferenceController"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mResult:Ljava/lang/String;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "full_screen_apps"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "launcherapps"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method private collectData()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, " launchable activities:"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    sget-object v2, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->loadAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;

    move-result-object v1

    iget v3, v1, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Finish getting ApplicationInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getMaxAspectRatioPolicy(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "getMaxAspectRatioPolicy() : "

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/IWindowManager;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result v1

    sget-object p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "getMaxAspectRatioPolicy() RemoteException"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private loadAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;->mPackage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->getMaxAspectRatioPolicy(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;->mType:I

    return-object v0
.end method

.method private setMaxAspectRatioPolicy(Ljava/lang/String;IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMaxAspectPackage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v0, -0x1

    invoke-interface {p0, p1, p2, p3, v0}, Landroid/view/IWindowManager;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setMaxAspectPackage() RemoteException"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private writeJSONData()V
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

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

    check-cast v2, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "package"

    iget-object v5, v2, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "value"

    iget v2, v2, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;->mType:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/view/SemWindowManager;->isSupportAspectRatioMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/display/AspectRatioFragmentUserSelect;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v2, 0x7f141047

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 p0, 0x64

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const p0, 0x10008000

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->collectData()V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->writeJSONData()V

    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    const-string v1, "full_screen_apps"

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "device_type"

    invoke-static {}, Lcom/samsung/android/settings/display/DeviceTypeConstant;->getDeviceType()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttributeInt(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setControlId(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f141043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSummary:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

    invoke-super {p0, p1}, Lcom/android/settings/core/SecCustomPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 7

    const-string/jumbo v0, "package"

    if-eqz p1, :cond_4

    const-string v1, "full_screen_apps"

    iget-object v2, p1, Lcom/samsung/android/settings/cube/ControlValue;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "device_type"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/cube/ControlValue;->getAttributeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/display/DeviceTypeConstant;->getDeviceType()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->collectData()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mRows:Landroid/util/ArrayMap;

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

    check-cast v2, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->mResult:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, v5, v2, v4}, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->setMaxAspectRatioPolicy(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_4
    sget-object v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "device settings cannot be transferred on this device due to different device type"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object v0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->DEPENDENT_SETTING:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iput-object v0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14306f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p0

    :cond_4
    :goto_5
    new-instance p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    iput-object p0, p1, Lcom/samsung/android/settings/cube/ControlResult$Builder;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    new-instance p0, Lcom/samsung/android/settings/cube/ControlResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/ControlResult;-><init>(Lcom/samsung/android/settings/cube/ControlResult$Builder;)V

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
