.class public Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;
.super Lcom/samsung/android/lib/episode/EpisodeProvider;
.source "SettingsEpisodeProvider.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsUserBuild:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/lib/episode/EpisodeProvider;-><init>()V

    const-string v0, "SettingsEpisodeProvider"

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->TAG:Ljava/lang/String;

    .line 55
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->mIsUserBuild:Z

    return-void
.end method

.method public static getOneUIVersion(Landroid/content/Context;)D
    .locals 2

    .line 503
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSemAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 504
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x15f90

    sub-int/2addr p0, v0

    .line 506
    div-int/lit16 v0, p0, 0x2710

    .line 507
    rem-int/lit16 p0, p0, 0x2710

    div-int/lit8 p0, p0, 0x64

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0
.end method

.method private getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 479
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 480
    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 481
    aget-object p1, p1, v2

    .line 484
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 486
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getValueViaEternal(Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 5

    const-string v0, "SettingsEpisodeProvider"

    const-string v1, "/"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 104
    array-length v3, v1

    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 105
    aget-object v1, v1, v4

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_1

    .line 114
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValues() currentSceneBuilder is null / Key :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, p0

    goto :goto_1

    :catch_1
    move-exception p2

    .line 118
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValueViaEternal() exception "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method private setValueViaEternal(Lcom/samsung/android/lib/episode/SourceInfo;Ljava/util/List;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/lib/episode/SourceInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/SceneResult;",
            ">;",
            "Lcom/samsung/android/lib/episode/Scene;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_2

    .line 141
    array-length v0, p5

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 142
    aget-object p5, p5, v1

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p5

    if-nez p5, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5, p3, p1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v0, p4}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 154
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEFAULT_VALUE:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 155
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p5, p0, p4, p3, p1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 164
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setValueViaEternal() exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsEpisodeProvider"

    .line 168
    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/utils/SettingsEpisodeFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getKeySet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "/Settings/Connections/Location"

    .line 191
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/LocationMethod"

    .line 192
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/LocationWifiScan"

    .line 193
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/LocationBluetoothScan"

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    .line 195
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    .line 196
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    .line 197
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    .line 198
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/WifiPowerSavingMode"

    .line 199
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    .line 200
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/ShowNetworkInfo/Enabled"

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Advanced/WIPS"

    .line 202
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Intelligent/SwitchToBetterWifi"

    .line 203
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/WiFi/Intelligent/RealtimeDataPriorityMode"

    .line 204
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/Nfc"

    .line 205
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/Uwb"

    .line 206
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/NearbyScanning"

    .line 207
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/PrivateDnsMode"

    .line 208
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Connections/PrivateDnsSpecifier"

    .line 209
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AppIconBadge"

    .line 212
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AppIconBadgeStyle"

    .line 213
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AppIconBadgeShowNotifications"

    .line 214
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/ShowSnoozeOption"

    .line 215
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/DndDuration"

    .line 216
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AdvancedSettings/NotificationHistory"

    .line 217
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AdvancedSettings/FloatingIcons"

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AdvancedSettings/NetworkSpeed"

    .line 219
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/NotificationPopUpStyle"

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/ShowEvenWhileScreenIsOff"

    .line 221
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/ColorByKeyword"

    .line 222
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/Effect"

    .line 223
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorType"

    .line 224
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorIndex"

    .line 225
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorCustom"

    .line 226
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorRecent"

    .line 227
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedThickness"

    .line 228
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedTransparency"

    .line 229
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedDuration"

    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowReminderTime"

    .line 231
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowVibration"

    .line 232
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/AdvancedSettings/NotificationReminderSelectable"

    .line 233
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Notifications/LockscreenSettings/ShowContentWhenUnlocked"

    .line 234
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/AutoScreenOn"

    .line 237
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SmartStay"

    .line 238
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/PalmSwipeToCapture"

    .line 239
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/DirectCall"

    .line 240
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SmartAlert"

    .line 241
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/EasyMute"

    .line 242
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SwipeToCallOrSendMessage"

    .line 243
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/DirectShare"

    .line 244
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LiftToWake"

    .line 245
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/DoubleTapToWake"

    .line 246
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/DoubleTapToSleep"

    .line 247
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/PalmTouchToSleep"

    .line 248
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/OneHandedMode"

    .line 249
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/FingerSensorGestures"

    .line 250
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/CoverTextDirection"

    .line 251
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/VideoEnhancerSwitch"

    .line 252
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/VideoEnhancerApp"

    .line 253
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/ActiveKeyShortPress"

    .line 254
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/ActiveKeyLongPress"

    .line 255
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/ActiveKeyOnLockScreen"

    .line 256
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/XcoverKeyPtt"

    .line 257
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/XcoverKeyDedicatedApp"

    .line 258
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SideKeyDoublePressSwitch"

    .line 259
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    .line 260
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SideKeyDoublePressType"

    .line 261
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SideKeyDoublePress"

    .line 262
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SideKeyLongPressType"

    .line 263
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/XcoverTopKeyShortPress"

    .line 264
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/XcoverTopKeyLongPress"

    .line 265
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    .line 266
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    .line 267
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/ContinueAppsOnOtherDevices"

    .line 268
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/SmartPopupView"

    .line 270
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsMultiWindowAllApps"

    .line 272
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsRotateAllApps"

    .line 273
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsRotateApps"

    .line 274
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsLandScapeAllApps"

    .line 275
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    .line 276
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsAspectRatioApps"

    .line 277
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsAppSplitView"

    .line 278
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsFlexModePanel"

    .line 279
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsFullScreenInSplitView"

    .line 280
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    .line 281
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsSwipePopupView"

    .line 282
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Advanced/LabsSwipeSplitView"

    .line 283
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/NotificationSound"

    .line 286
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/NotificationSoundSim2"

    .line 287
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/ChargingSound"

    .line 288
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/KeyboardSound"

    .line 289
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VibrationWhileRinging"

    .line 290
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/UseVolumeKeyForMedia"

    .line 291
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VoipExtraVolume"

    .line 292
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VibrationPattern"

    .line 293
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/NotificationVibrationPattern"

    .line 295
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/TouchSound"

    .line 297
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/ScreenLockSound"

    .line 298
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VibrationFeedback"

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/DialingKeypadTone"

    .line 300
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/KeyboardVibration"

    .line 301
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/DialingKeypadVibration"

    .line 302
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/NavigationGesturesVibration"

    .line 303
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/CameraFeedbackVibration"

    .line 304
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/ChargingVibration"

    .line 305
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/RingerMode"

    .line 306
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SeparateAppSoundName"

    .line 307
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SeparateAppSoundDevice"

    .line 308
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SeparateMultiAppsSoundName"

    .line 309
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SeparateMultiAppSoundDevice"

    .line 310
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VibrationSoundEnabled"

    .line 311
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VibrationPatternSim2"

    .line 313
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SyncWithRingtone"

    .line 314
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SyncWithRingtoneSim2"

    .line 315
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/SyncWithNotification"

    .line 316
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VolumeLimiterLevel"

    .line 318
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Sound/VolumeLimiterPassword"

    .line 319
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/FontSize"

    .line 322
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/FontStyle"

    .line 323
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/FontBold"

    .line 324
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/AutoBrightness"

    .line 325
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/BluelightFilter"

    .line 326
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ShowRecentNotificationOnly"

    .line 327
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ShowBatteryPercentage"

    .line 328
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ButtonLayout"

    .line 329
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ScreenTimeout"

    .line 330
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/BlockAccidentalTouches"

    .line 331
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ScreenZoom"

    .line 332
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/NightMode"

    .line 333
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/RefreshRate"

    .line 334
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ScreenMode"

    .line 335
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ScreenResolution"

    .line 336
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/NavigationTypes"

    .line 337
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/NavigationGestureHint"

    .line 338
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ScreenSaver"

    .line 339
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/TouchSensetivity"

    .line 340
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ShowChargingInformation"

    .line 341
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ShowButtonToHideKeyboard"

    .line 342
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/BlockGesturesWithSPen"

    .line 343
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/ButtonPosition"

    .line 344
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/SwitchAppsWhenHintHidden"

    .line 345
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/SwitchAppsToFrontScreen"

    .line 346
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/RotateSuggestionEnabled"

    .line 347
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/EasyModeSwitch"

    .line 348
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Display/TaskBar"

    .line 349
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/RoamingClock"

    .line 352
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/RoamingClockPosition"

    .line 353
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/RoamingClockHomeCity"

    .line 354
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/FaceWidget"

    .line 355
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/FaceWidgetPosition"

    .line 356
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/ShowNotification"

    .line 357
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/HideContent"

    .line 358
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/NotificationIconOnly"

    .line 359
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/Transparency"

    .line 360
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/ShowOnAOD"

    .line 361
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/Shortcut"

    .line 362
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/ShortcutLayout"

    .line 363
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/LunarCalendar"

    .line 364
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/HijriCalendar"

    .line 365
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/AutoReverseTextColor"

    .line 366
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/ContactInformation"

    .line 367
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/NotificationsToShow"

    .line 368
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/FaceWidgetCover"

    .line 369
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/ShowShortcut"

    .line 370
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/VisiblePattern"

    .line 373
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/LockAfterTimeout"

    .line 374
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/PowerInstantlyLocks"

    .line 375
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/LockInstantlyWithFolding"

    .line 376
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/AutoFactoryReset"

    .line 377
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/LockNetworkAndSecurity"

    .line 378
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/LockScreen/ShowLockDownOption"

    .line 379
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Security/MakePasswordVisible"

    .line 382
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Security/PinWindows"

    .line 383
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Accessibility/PreferredEngine"

    .line 386
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Accessibility/Rate"

    .line 387
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Accessibility/Pitch"

    .line 388
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/ShowKeyboardButton"

    .line 391
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/ChangeLanguageShortcut"

    .line 392
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/ShowOnScreenKeyboard"

    .line 393
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/Autofill"

    .line 394
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/TimeFormat"

    .line 395
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/AutoTime"

    .line 396
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/AutoTimeZone"

    .line 397
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/RedirectVibration"

    .line 398
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/LocationTimeZoneDetection"

    .line 399
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/SystemLocale"

    .line 400
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/PrimaryMouseKey"

    .line 401
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/MouseSecondaryKey"

    .line 402
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/MouseMiddleKey"

    .line 403
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/AdditionalKey1"

    .line 404
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/AdditionalKey2"

    .line 405
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/PointerSpeed"

    .line 406
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/WheelScrollingSpeed"

    .line 407
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/EnhancePointerPrecision"

    .line 408
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/PointerSize"

    .line 409
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/General/PointerColor"

    .line 410
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Accounts/SamsungAccountID"

    .line 413
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Accounts/GoogleAccountID"

    .line 414
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Accounts/GoogleCoreControl"

    .line 415
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FaceOpenEyes"

    .line 418
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FaceStayOnLockScreen"

    .line 419
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FaceBrightenScreen"

    .line 420
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FaceRecognizeMask"

    .line 421
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FingerShowIconAod"

    .line 422
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FingerTapToShowIcon"

    .line 423
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/Settings/Biometrics/FingerShowAnimation"

    .line 424
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getTestScenes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    .line 448
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getUID()Ljava/lang/String;
    .locals 0

    const-string p0, "Settings"

    return-object p0
.end method

.method protected getValues(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getValues(Ljava/util/List;Lcom/samsung/android/lib/episode/SourceInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/lib/episode/SourceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getValueViaEternal(Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/lib/episode/Scene;->isDefaultNotSet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    invoke-static {}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->getInstance()Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->isSystemDefault(Lcom/samsung/android/lib/episode/Scene;)Z

    move-result v2

    .line 80
    new-instance v3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Lcom/samsung/android/lib/episode/Scene;)V

    .line 81
    invoke-virtual {v3, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    .line 83
    invoke-virtual {v3, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefaultType(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 85
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v1

    .line 89
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 2

    .line 472
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getOneUIVersion(Landroid/content/Context;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected isOpenable(Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 1

    .line 439
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 462
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 1

    .line 431
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->open(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setValues(Lcom/samsung/android/lib/episode/SourceInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/lib/episode/SourceInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/SceneResult;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/lib/episode/Scene;

    .line 131
    invoke-virtual {v3}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v0, "/"

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->setValueViaEternal(Lcom/samsung/android/lib/episode/SourceInfo;Ljava/util/List;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method protected verifyCallingPackage(Ljava/lang/String;)Z
    .locals 2

    .line 494
    iget-boolean v0, p0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->mIsUserBuild:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 497
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/lib/episode/EpisodeProvider;->verifyCallingPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
