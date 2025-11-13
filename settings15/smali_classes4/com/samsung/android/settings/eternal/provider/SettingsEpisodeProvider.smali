.class public Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mIsUserBuild:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->mIsUserBuild:Z

    return-void
.end method

.method public static getErrorSceneList(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/episode/SceneResult;

    iget-object v2, v1, Lcom/samsung/android/lib/episode/SceneResult;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v3, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/samsung/android/lib/episode/Scene$Builder;

    iget-object v3, v1, Lcom/samsung/android/lib/episode/SceneResult;->mKey:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/lib/episode/SceneResult;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, "UNSUPPORTED_DEVICE_TYPE"

    goto :goto_1

    :cond_2
    const-string v1, "PERMISSION"

    goto :goto_1

    :cond_3
    const-string v1, "FEATURE"

    goto :goto_1

    :cond_4
    const-string v1, "UNKNOWN"

    goto :goto_1

    :cond_5
    const-string v1, "STORAGE_FULL"

    goto :goto_1

    :cond_6
    const-string v1, "INVALID_DATA"

    :goto_1
    const-string v3, "errorType"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static getKeySet()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/Settings/Connections/Location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/Settings/Connections/LocationMethod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/Settings/Connections/LocationWifiScan"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/Settings/Connections/LocationBluetoothScan"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    const-string v2, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    const-string v3, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    const-string v4, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Connections/WiFi/Advanced/AllowWepNetworks"

    const-string v2, "/Settings/Connections/WiFi/Advanced/WIPS"

    const-string v3, "/Settings/Connections/WiFi/Advanced/WifiOffload"

    const-string v4, "/Settings/Connections/WiFi/Advanced/WifiNotifications"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Connections/WiFi/Intelligent/SwitchToBetterWifi"

    const-string v2, "/Settings/Connections/WiFi/Intelligent/SwitchToBetterWifiWhileScreenIsOn"

    const-string v3, "/Settings/Connections/WiFi/Intelligent/RealtimeDataPriorityMode"

    const-string v4, "/Settings/Connections/Nfc"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Connections/Uwb"

    const-string v2, "/Settings/Connections/NearbyScanning"

    const-string v3, "/Settings/Connections/PrivateDnsMode"

    const-string v4, "/Settings/Connections/PrivateDnsSpecifier"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Connections/VpnProfiles"

    const-string v2, "/Settings/Connections/Bluetooth/Advanced/MusicShare"

    const-string v3, "/Settings/Connections/Bluetooth/Advanced/RingtoneSync"

    const-string v4, "/Settings/Connections/Bluetooth/Moremenu/Auracast"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/AppIconBadge"

    const-string v2, "/Settings/Notifications/AppIconBadgeStyle"

    const-string v3, "/Settings/Notifications/AppIconBadgeShowNotifications"

    const-string v4, "/Settings/Notifications/ShowSnoozeOption"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/DndDuration"

    const-string v2, "/Settings/Notifications/AdvancedSettings/NotificationHistory"

    const-string v3, "/Settings/Notifications/AdvancedSettings/FloatingIcons"

    const-string v4, "/Settings/Notifications/AdvancedSettings/NetworkSpeed"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/NotificationPopUpStyle"

    const-string v2, "/Settings/Notifications/BriefPopupSettings/ShowEvenWhileScreenIsOff"

    const-string v3, "/Settings/Notifications/BriefPopupSettings/ColorByKeyword"

    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/Effect"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorType"

    const-string v2, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorIndex"

    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorCustom"

    const-string v4, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/ColorRecent"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedThickness"

    const-string v2, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedTransparency"

    const-string v3, "/Settings/Notifications/BriefPopupSettings/EdgeLightingStyle/AdvancedDuration"

    const-string v4, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowReminderTime"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/AdvancedSettings/NotificationReminder/ShowVibration"

    const-string v2, "/Settings/Notifications/AdvancedSettings/NotificationReminderSelectable"

    const-string v3, "/Settings/Notifications/LockscreenSettings/ShowContentWhenUnlocked"

    const-string v4, "/Settings/Notifications/SortNotifications"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/AdvancedSettings/ShowAppIcon"

    const-string v2, "/Settings/Notifications/AdvancedSettings/ShowNotificationCategorySettings"

    const-string v3, "/Settings/Notifications/AppNotification/FavoriteAppNotifications"

    const-string v4, "Settings/Notifications/StatusbarNotificationStyle"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/GalaxyAI/ChatAssist/SuggestResponses"

    const-string v2, "/Settings/Notifications/AdvancedSettings/FilterNotifications/Advertisements"

    const-string v3, "/Settings/Notifications/AdvancedSettings/FilterNotifications/OldNotifications"

    const-string v4, "/Settings/Notifications/AdvancedSettings/FilterNotifications/BackgroundActivites"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Notifications/AdvancedSettings/FilterNotifications/MinimisedNotifications"

    const-string v2, "/Settings/Advanced/AutoScreenOn"

    const-string v3, "/Settings/Advanced/SmartStay"

    const-string v4, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/DirectCall"

    const-string v2, "/Settings/Advanced/SmartAlert"

    const-string v3, "/Settings/Advanced/EasyMute"

    const-string v4, "/Settings/Advanced/SwipeToCallOrSendMessage"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/DirectShare"

    const-string v2, "/Settings/Advanced/LiftToWake"

    const-string v3, "/Settings/Advanced/DoubleTapToWake"

    const-string v4, "/Settings/Advanced/DoubleTapToSleep"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/PalmTouchToSleep"

    const-string v2, "/Settings/Advanced/OneHandedMode"

    const-string v3, "/Settings/Advanced/FingerSensorGestures"

    const-string v4, "/Settings/Advanced/CoverTextDirection"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/VideoEnhancerSwitch"

    const-string v2, "/Settings/Advanced/VideoEnhancerApp"

    const-string v3, "/Settings/Advanced/ActiveKeyShortPress"

    const-string v4, "/Settings/Advanced/ActiveKeyLongPress"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/ActiveKeyOnLockScreen"

    const-string v2, "/Settings/Advanced/XcoverKeyPtt"

    const-string v3, "/Settings/Advanced/XcoverKeyDedicatedApp"

    const-string v4, "/Settings/Advanced/SideKeyDoublePressSwitch"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/SideKeyDoublePressOpenAppValue"

    const-string v2, "/Settings/Advanced/SideKeyDoublePressType"

    const-string v3, "/Settings/Advanced/SideKeyDoublePress"

    const-string v4, "/Settings/Advanced/SideKeyLongPressType"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/XcoverTopKeyShortPress"

    const-string v2, "/Settings/Advanced/XcoverTopKeyLongPress"

    const-string v3, "/Settings/Advanced/XcoverTopKeyOnLockScreen"

    const-string v4, "/Settings/Advanced/XcoverTopKeyDedicatedApp"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/ContinueAppsOnOtherDevices"

    const-string v2, "/Settings/Advanced/SmartPopupView"

    const-string v3, "/Settings/Advanced/LabsMultiWindowAllApps"

    const-string v4, "/Settings/Advanced/LabsRotateAllApps"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/LabsRotateApps"

    const-string v2, "/Settings/Advanced/LabsLandScapeAllApps"

    const-string v3, "/Settings/Advanced/LabsLandScapeViewForPortraitApps"

    const-string v4, "/Settings/Advanced/LabsAspectRatioApps"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/LabsAppSplitView"

    const-string v2, "/Settings/Advanced/FlexModePanelEnabled"

    const-string v3, "/Settings/Advanced/FlexModeScrollWheelPosition"

    const-string v4, "/Settings/Advanced/LabsFlexModePanel"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/LabsFullScreenInSplitView"

    const-string v2, "/Settings/Advanced/LabsMultiWindowMenuInFullScreen"

    const-string v3, "/Settings/Advanced/LabsSwipePopupView"

    const-string v4, "/Settings/Advanced/SwipePopupViewCornerAreaLevel"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/LabsSwipeSplitView"

    const-string v2, "/Settings/Advanced/PreventOnlineProcessing"

    const-string v3, "/Settings/Advanced/LabsSynchronizingMainNavigationStyleOnWidget"

    const-string v4, "/Settings/Advanced/LabsAppAllowedOnCoverScreen"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Advanced/DarkModeApps"

    const-string v2, "/Settings/Sound/NotificationSound"

    const-string v3, "/Settings/Sound/NotificationSoundSim2"

    const-string v4, "/Settings/Sound/ChargingSound"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/KeyboardSound"

    const-string v2, "/Settings/Sound/VibrationWhileRinging"

    const-string v3, "/Settings/Sound/UseVolumeKeyForMedia"

    const-string v4, "/Settings/Sound/VoipExtraVolume"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/VibrationPattern"

    const-string v2, "/Settings/Sound/NotificationVibrationPattern"

    const-string v3, "/Settings/Sound/TouchSound"

    const-string v4, "/Settings/Sound/ScreenLockSound"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/VibrationFeedback"

    const-string v2, "/Settings/Sound/DialingKeypadTone"

    const-string v3, "/Settings/Sound/KeyboardVibration"

    const-string v4, "/Settings/Sound/DialingKeypadVibration"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/NavigationGesturesVibration"

    const-string v2, "/Settings/Sound/CameraFeedbackVibration"

    const-string v3, "/Settings/Sound/ChargingVibration"

    const-string v4, "/Settings/Sound/RingerMode"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/SeparateAppSoundName"

    const-string v2, "/Settings/Sound/SeparateAppSoundDevice"

    const-string v3, "/Settings/Sound/SeparateMultiAppsSoundName"

    const-string v4, "/Settings/Sound/SeparateMultiAppSoundDevice"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/VibrationSoundEnabled"

    const-string v2, "/Settings/Sound/VibrationPatternSim2"

    const-string v3, "/Settings/Sound/SyncWithRingtone"

    const-string v4, "/Settings/Sound/SyncWithRingtoneSim2"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/SyncWithNotification"

    const-string v2, "/Settings/Sound/VolumeLimiterLevel"

    const-string v3, "/Settings/Sound/VolumeLimiterPassword"

    const-string v4, "/Settings/Sound/SystemSoundTheme"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/RingVolume"

    const-string v2, "/Settings/Sound/MediaVolume"

    const-string v3, "/Settings/Sound/NotificationVolume"

    const-string v4, "/Settings/Sound/SystemVolume"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/BixbyVolume"

    const-string v2, "/Settings/Sound/WaitingToneVolume"

    const-string v3, "/Settings/Sound/AccessibilityVolume"

    const-string v4, "/Settings/Sound/AlarmVolume"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/CallVibrationMagnitude"

    const-string v2, "/Settings/Sound/NotificationVibrationMagnitude"

    const-string v3, "/Settings/Sound/TouchVibrationMagnitude"

    const-string v4, "/Settings/Sound/HardPressVibrationMagnitude"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Sound/MediaVibrationMagnitude"

    const-string v2, "/Settings/Sound/ChromeCastModeEnabled"

    const-string v3, "/Settings/Display/FontSize"

    const-string v4, "/Settings/Display/FontStyle"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/FontBold"

    const-string v2, "/Settings/Display/AutoBrightness"

    const-string v3, "/Settings/Display/BluelightFilter"

    const-string v4, "/Settings/Display/AdaptiveColorTone"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/ShowRecentNotificationOnly"

    const-string v2, "/Settings/Display/ShowBatteryPercentage"

    const-string v3, "/Settings/Display/ButtonLayout"

    const-string v4, "/Settings/Display/ScreenTimeout"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/BlockAccidentalTouches"

    const-string v2, "/Settings/Display/ScreenZoom"

    const-string v3, "/Settings/Display/NightMode"

    const-string v4, "/Settings/Display/RefreshRate"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/ScreenMode"

    const-string v2, "/Settings/Display/ScreenResolution"

    const-string v3, "/Settings/Display/NavigationTypes"

    const-string v4, "/Settings/Display/NavigationGestureHint"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/ScreenSaver"

    const-string v2, "/Settings/Display/TouchSensetivity"

    const-string v3, "/Settings/Display/ShowChargingInformation"

    const-string v4, "/Settings/Display/ShowButtonToHideKeyboard"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/BlockGesturesWithSPen"

    const-string v2, "/Settings/Display/ButtonPosition"

    const-string v3, "/Settings/Display/SwitchAppsWhenHintHidden"

    const-string v4, "/Settings/Display/SwitchAppsToFrontScreen"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/RotateSuggestionEnabled"

    const-string v2, "/Settings/Display/EasyModeSwitch"

    const-string v3, "/Settings/Display/TaskBar"

    const-string v4, "/Settings/Display/TaskbarRecentAppsCount"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Display/TaskbarRecentApps"

    const-string v2, "/Settings/Display/TaskbarType"

    const-string v3, "/Settings/Display/FullScreenApps"

    const-string v4, "/Settings/Display/CameraCutout"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/RoamingClock"

    const-string v2, "/Settings/LockScreen/RoamingClockPosition"

    const-string v3, "/Settings/LockScreen/RoamingClockHomeCity"

    const-string v4, "/Settings/LockScreen/FaceWidget"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/FaceWidgetPosition"

    const-string v2, "/Settings/LockScreen/ShowNotification"

    const-string v3, "/Settings/LockScreen/ShowNotificationOnKeyguard"

    const-string v4, "/Settings/LockScreen/HideContent"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/NotificationIconOnly"

    const-string v2, "/Settings/LockScreen/Transparency"

    const-string v3, "/Settings/LockScreen/TransparencyDarkMode"

    const-string v4, "/Settings/LockScreen/ShowOnAOD"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/Shortcut"

    const-string v2, "/Settings/LockScreen/ShortcutLayout"

    const-string v3, "/Settings/LockScreen/LunarCalendar"

    const-string v4, "/Settings/LockScreen/HijriCalendar"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/AutoReverseTextColor"

    const-string v2, "/Settings/LockScreen/ContactInformation"

    const-string v3, "/Settings/LockScreen/NotificationsToShow"

    const-string v4, "/Settings/LockScreen/FaceWidgetCover"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/ShowShortcut"

    const-string v2, "/Settings/LockScreen/VisiblePattern"

    const-string v3, "/Settings/LockScreen/LockAfterTimeout"

    const-string v4, "/Settings/LockScreen/PowerInstantlyLocks"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/LockScreen/LockInstantlyWithFolding"

    const-string v2, "/Settings/LockScreen/AutoFactoryReset"

    const-string v3, "/Settings/LockScreen/LockNetworkAndSecurity"

    const-string v4, "/Settings/LockScreen/ShowLockDownOption"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Security/MakePasswordVisible"

    const-string v2, "/Settings/Security/PinWindows"

    const-string v3, "/Settings/Security/AskPinBeforeUnpinning"

    const-string v4, "/Settings/Security/GalaxySystemAppUpdate"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Security/GalaxySystemAppUpdateUseWiFiOnly"

    const-string v2, "/Settings/Accessibility/PreferredEngine"

    const-string v3, "/Settings/Accessibility/Rate"

    const-string v4, "/Settings/Accessibility/Pitch"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/ShowKeyboardButton"

    const-string v2, "/Settings/General/ChangeLanguageShortcut"

    const-string v3, "/Settings/General/ShowOnScreenKeyboard"

    const-string v4, "/Settings/General/Autofill"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/CredentialServicePrimary"

    const-string v2, "/Settings/General/CredentialServices"

    const-string v3, "/Settings/General/TimeFormat"

    const-string v4, "/Settings/General/AutoTime"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/AutoTimeZone"

    const-string v2, "/Settings/General/RedirectVibration"

    const-string v3, "/Settings/General/LocationTimeZoneDetection"

    const-string v4, "/Settings/General/SystemLocale"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/PrimaryMouseKey"

    const-string v2, "/Settings/General/MouseSecondaryKey"

    const-string v3, "/Settings/General/MouseMiddleKey"

    const-string v4, "/Settings/General/AdditionalKey1"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/AdditionalKey2"

    const-string v2, "/Settings/General/PointerSpeed"

    const-string v3, "/Settings/General/WheelScrollingSpeed"

    const-string v4, "/Settings/General/EnhancePointerPrecision"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/PointerSize"

    const-string v2, "/Settings/General/PointerColor"

    const-string v3, "/Settings/General/AppShortcutsCommandA"

    const-string v4, "/Settings/General/AppShortcutsCommandB"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/AppShortcutsCommandC"

    const-string v2, "/Settings/General/AppShortcutsCommandD"

    const-string v3, "/Settings/General/AppShortcutsCommandE"

    const-string v4, "/Settings/General/AppShortcutsCommandF"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/AppShortcutsCommandH"

    const-string v2, "/Settings/General/AppShortcutsCommandI"

    const-string v3, "/Settings/General/AppShortcutsCommandJ"

    const-string v4, "/Settings/General/AppShortcutsCommandK"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/AppShortcutsCommandM"

    const-string v2, "/Settings/General/AppShortcutsCommandP"

    const-string v3, "/Settings/General/AppShortcutsCommandR"

    const-string v4, "/Settings/General/AppShortcutsCommandS"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/General/AppShortcutsCommandZ"

    const-string v2, "/Settings/General/AppLanguage"

    const-string v3, "/Settings/General/EnabledInputMethods"

    const-string v4, "/Settings/Accounts/SamsungAccountID"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Accounts/GoogleAccountID"

    const-string v2, "/Settings/Accounts/GoogleCoreControl"

    const-string v3, "/Settings/Accounts/AutoSyncData"

    const-string v4, "/Settings/Biometrics/FaceOpenEyes"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Biometrics/FaceStayOnLockScreen"

    const-string v2, "/Settings/Biometrics/FaceBrightenScreen"

    const-string v3, "/Settings/Biometrics/FaceRecognizeMask"

    const-string v4, "/Settings/Biometrics/FingerShowIconAod"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Biometrics/FingerTapToShowIcon"

    const-string v2, "/Settings/Biometrics/FingerShowIconLockscreen"

    const-string v3, "/Settings/Biometrics/FingerShowAnimation"

    const-string v4, "/Settings/Biometrics/FingerStayOnLockScreen"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/Settings/Biometrics/UnlockTransitionEffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/Settings/ManageStorage/UnusedApps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSceneListFromBundle(Landroid/os/Bundle;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "compressedEternalItems"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/samsung/android/lib/episode/Scene;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v2, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iput-object v4, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    iput-object v3, v5, Lcom/samsung/android/lib/episode/Scene;->mIsDefault:Ljava/lang/Boolean;

    const/4 v2, 0x0

    iput-byte v2, v5, Lcom/samsung/android/lib/episode/Scene;->mDefaultType:B

    move-object v3, v5

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getSourceInfoFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/lib/episode/SourceInfo;
    .locals 6

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "deviceType"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    iput-object v2, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    iput-object v4, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    const/4 v3, 0x2

    const/4 v6, 0x0

    const-string v7, "Eternal/EpisodeProvider"

    if-nez v2, :cond_0

    const-string v0, "[Settings] method is null"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-boolean v8, v1, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->mIsUserBuild:Z

    const-string v9, "]"

    const-string v10, "["

    if-nez v8, :cond_1

    const-string v8, "com.samsung.android.settings.test"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3d

    sget-object v11, Lcom/samsung/android/lib/episode/EternalContract;->WELL_KNOWN_CALLING_PACKAGES:[Ljava/lang/String;

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v3, :cond_3c

    aget-object v13, v11, v12

    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3b

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v13, 0x0

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v13
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    const/high16 v8, 0x40000000    # 2.0f

    cmpg-float v8, v13, v8

    if-gez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const-string v13, " count = "

    const-string/jumbo v14, "value"

    const-string/jumbo v15, "sceneResult"

    const-string/jumbo v6, "version"

    const-string v4, "dtd_version"

    const-string/jumbo v5, "sceneList"

    const-string v3, "[Settings]"

    move-wide/from16 v16, v11

    const-string v11, "keyList"

    const-string v12, "Settings"

    const/16 v18, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v19

    move-object/from16 p2, v15

    sparse-switch v19, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v15, "get_dtd_ver"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto/16 :goto_5

    :cond_4
    const/16 v15, 0xe

    goto/16 :goto_4

    :sswitch_1
    const-string v15, "get_value"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto/16 :goto_5

    :cond_5
    const/16 v15, 0xd

    goto/16 :goto_4

    :sswitch_2
    const-string v15, "get_label"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_5

    :cond_6
    const/16 v15, 0xc

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v15, "set_value"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto/16 :goto_5

    :cond_7
    const/16 v15, 0xb

    goto/16 :goto_4

    :sswitch_4
    const-string v15, "get_test_value"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto/16 :goto_5

    :cond_8
    const/16 v15, 0xa

    goto :goto_4

    :sswitch_5
    const-string/jumbo v15, "set_value_all"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_5

    :cond_9
    const/16 v15, 0x9

    goto :goto_4

    :sswitch_6
    const-string v15, "get_version"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto/16 :goto_5

    :cond_a
    const/16 v15, 0x8

    goto :goto_4

    :sswitch_7
    const-string/jumbo v15, "open"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto :goto_5

    :cond_b
    const/4 v15, 0x7

    goto :goto_4

    :sswitch_8
    const-string v15, "get_uid"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_5

    :cond_c
    const/4 v15, 0x6

    goto :goto_4

    :sswitch_9
    const-string v15, "get_value_all"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_5

    :cond_d
    const/4 v15, 0x5

    goto :goto_4

    :sswitch_a
    const-string v15, "get_mapping_table"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_5

    :cond_e
    const/4 v15, 0x4

    goto :goto_4

    :sswitch_b
    const-string v15, "is_openable"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_5

    :cond_f
    const/4 v15, 0x3

    :goto_4
    move/from16 v18, v15

    goto :goto_5

    :sswitch_c
    const-string v15, "is_supported"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_5

    :cond_10
    const/16 v18, 0x2

    goto :goto_5

    :sswitch_d
    const-string/jumbo v15, "validate"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_5

    :cond_11
    const/16 v18, 0x1

    goto :goto_5

    :sswitch_e
    const-string v15, "get_entries"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_5

    :cond_12
    const/16 v18, 0x0

    :goto_5
    packed-switch v18, :pswitch_data_0

    const-string v0, "Unsupported method called : "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    :pswitch_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    :pswitch_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getKeySet()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v6, v14, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_2a

    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getKeySet()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v6, v11, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_2a

    :pswitch_2
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v8

    if-eqz v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_14
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_37

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v8, v5, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    goto/16 :goto_2a

    :pswitch_3
    if-nez v0, :cond_15

    const-string v0, " extra is null"

    invoke-static {v3, v2, v0, v7}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_15
    if-eqz v8, :cond_16

    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getSourceInfoFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getSceneListFromBundle(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_16
    const-class v4, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v5, v0}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>(Landroid/os/Bundle;)V

    move-object v0, v4

    move-object v4, v5

    :goto_7
    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->setValues(Lcom/samsung/android/lib/episode/SourceInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_8

    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / result count = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_18

    :try_start_2
    invoke-static {v1}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getErrorSceneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/episode/Scene;

    iget-object v5, v1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v6, v4

    goto :goto_a

    :cond_18
    check-cast v1, Ljava/util/ArrayList;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_23

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a

    :pswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_b
    move-object v6, v0

    goto/16 :goto_2a

    :pswitch_5
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->open(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_6
    const-string/jumbo v0, "uid"

    invoke-static {v0, v12}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto/16 :goto_2a

    :pswitch_7
    new-instance v9, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v9, v0}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>(Landroid/os/Bundle;)V

    if-eqz v0, :cond_1c

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_c

    :cond_1a
    if-eqz v8, :cond_1b

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_d

    :cond_1b
    :try_start_3
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v10, 0x0

    goto :goto_d

    :cond_1c
    :goto_c
    const-string v0, "[Settings] extra is empty"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getKeySet()Ljava/util/List;

    move-result-object v10

    :goto_d
    const-string v0, " keyList size = "

    invoke-static {v3, v2, v0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v10, :cond_1d

    const/4 v11, 0x0

    goto :goto_e

    :cond_1d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    :goto_e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "getValues() "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v10, :cond_1e

    const-string v11, "Empty list"

    goto :goto_f

    :cond_1e
    move-object v11, v10

    :goto_f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "SettingsEpisodeProvider"

    invoke-static {v11, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-nez v10, :cond_1f

    goto/16 :goto_1b

    :cond_1f
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    array-length v15, v0

    move-object/from16 p2, v10

    const/4 v10, 0x2

    if-le v15, v10, :cond_20

    aget-object v0, v0, v10

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v0

    if-nez v0, :cond_21

    :cond_20
    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v0, v10, v9, v14}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    const-string v10, "getValueViaEternal() exception "

    const-string v15, "\n"

    invoke-static {v10, v14, v15}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0, v10, v11}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_11

    :cond_22
    move-object/from16 p2, v10

    goto :goto_11

    :goto_12
    if-nez v0, :cond_23

    const/4 v10, 0x0

    goto :goto_13

    :cond_23
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v0

    move-object v10, v0

    :goto_13
    if-eqz v10, :cond_2e

    iget-object v0, v10, Lcom/samsung/android/lib/episode/Scene;->mIsDefault:Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    sget-object v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager$DefaultValueManagerHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    iget-object v14, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mSystemDefaultHashMap:Ljava/util/HashMap;

    if-nez v14, :cond_24

    iget-object v14, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mJSONManager:Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->getDefaultSceneHashMap()Ljava/util/HashMap;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mSystemDefaultHashMap:Ljava/util/HashMap;

    :cond_24
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->mSystemDefaultHashMap:Ljava/util/HashMap;

    const-string v14, "DefaultValueManager"

    if-nez v0, :cond_25

    const-string v0, "isSystemDefault() default hashmap is empty"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    move-object/from16 v18, v9

    const/4 v0, 0x0

    goto/16 :goto_18

    :cond_25
    iget-object v15, v10, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/episode/Scene;

    if-nez v0, :cond_26

    const-string v0, "isSystemDefault() default scene is empty"

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_26
    iget-object v15, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    move-object/from16 v18, v9

    if-eqz v15, :cond_28

    iget-object v9, v10, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    if-nez v9, :cond_27

    goto :goto_15

    :cond_27
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    iget-object v15, v10, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_29

    :cond_28
    :goto_15
    const/4 v0, 0x0

    goto :goto_17

    :cond_29
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 p3, v9

    :try_start_5
    iget-object v9, v0, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v0, :cond_2a

    goto :goto_15

    :cond_2a
    move-object/from16 v9, p3

    move-object/from16 v0, v19

    goto :goto_16

    :catch_5
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "isDefaultValue() "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9, v14}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_15

    :cond_2b
    const/4 v0, 0x1

    :goto_17
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "isSystemDefault() "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v10, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    new-instance v9, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v9, v10}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Lcom/samsung/android/lib/episode/Scene;)V

    invoke-virtual {v9, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    if-eqz v0, :cond_2c

    const/4 v10, 0x2

    int-to-byte v0, v10

    iput-byte v0, v9, Lcom/samsung/android/lib/episode/Scene$Builder;->mDefaultType:B

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v9, Lcom/samsung/android/lib/episode/Scene$Builder;->mIsDefault:Ljava/lang/Boolean;

    :cond_2c
    invoke-virtual {v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v10

    goto :goto_19

    :cond_2d
    move-object/from16 v18, v9

    :goto_19
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    move-object/from16 v18, v9

    :goto_1a
    move-object/from16 v10, p2

    move-object/from16 v9, v18

    goto/16 :goto_10

    :cond_2f
    :goto_1b
    invoke-static {v3, v2, v13}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz v8, :cond_30

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/lib/episode/Scene;

    iget-object v5, v4, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/lib/episode/Scene;->mSceneValue:Landroid/os/Bundle;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1c

    :cond_30
    invoke-virtual {v0, v5, v12}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v5, 0x1

    if-ge v0, v5, :cond_31

    const-string v0, "getMappingTable() - inputStream is empty"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1d
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_1e
    const/4 v6, 0x0

    goto :goto_22

    :catch_6
    move-exception v0

    goto :goto_21

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_1f

    :cond_31
    :try_start_9
    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "[Settings] getMappingTableData() uidKeyMap is null"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-object v6, v0

    goto :goto_22

    :goto_1f
    if-eqz v1, :cond_33

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_20

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_c
    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_33
    :goto_20
    throw v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    :goto_22
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, " mappingTableData is empty"

    invoke-static {v3, v2, v0, v7}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_34
    invoke-virtual {v4, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    :goto_23
    move-object v6, v4

    goto/16 :goto_2a

    :pswitch_9
    move-object/from16 v5, p2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v6

    if-eqz v6, :cond_36

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v6

    goto :goto_24

    :cond_36
    const/4 v6, 0x0

    :goto_24
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_23

    :pswitch_a
    move-object/from16 v5, p2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v0, v1, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2a

    :pswitch_b
    if-nez v0, :cond_38

    const-string v0, " extra is empty"

    invoke-static {v3, v2, v0, v7}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    :goto_25
    const/4 v6, 0x0

    goto :goto_2a

    :cond_38
    :try_start_d
    const-class v4, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_37

    goto :goto_26

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    goto :goto_29

    :cond_39
    :goto_26
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    const/4 v5, 0x0

    :try_start_e
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/lib/episode/Scene;

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/episode/Scene;

    if-nez v6, :cond_3a

    :goto_27
    const/4 v6, 0x0

    goto :goto_28

    :cond_3a
    iget-object v0, v6, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;->getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    goto :goto_27

    :goto_28
    invoke-virtual {v4, v14, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_23

    :catch_8
    move-exception v0

    move-object v6, v4

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    :pswitch_c
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    :goto_2a
    const-string v0, " took time : "

    invoke-static {v3, v2, v0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3b
    move v5, v3

    const/4 v3, 0x1

    const/4 v6, 0x0

    add-int/2addr v12, v3

    move v3, v5

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3c
    const-string v0, " rejected"

    invoke-static {v10, v8, v9, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_2b

    :cond_3d
    move-object v1, v6

    :goto_2b
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a4dfb59 -> :sswitch_e
        -0x54b6e6ea -> :sswitch_d
        -0x4f541027 -> :sswitch_c
        -0x49de25e7 -> :sswitch_b
        -0x23f6c80c -> :sswitch_a
        -0xeef0fd6 -> :sswitch_9
        -0x4751819 -> :sswitch_8
        0x34264a -> :sswitch_7
        0x19849cef -> :sswitch_6
        0x1f353e36 -> :sswitch_5
        0x32d4f80d -> :sswitch_4
        0x37b05f54 -> :sswitch_3
        0x43ee18cb -> :sswitch_2
        0x447b2b48 -> :sswitch_1
        0x7a1ef2cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getRecoverableItem(Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    aget-object p1, p1, v2

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

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->isSemAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v0, 0x15f90

    sub-int/2addr p0, v0

    div-int/lit16 v0, p0, 0x2710

    rem-int/lit16 p0, p0, 0x2710

    div-int/lit8 p0, p0, 0x64

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
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setValues(Lcom/samsung/android/lib/episode/SourceInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/eternal/provider/SettingsEpisodeProvider;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/episode/Scene;

    iget-object v2, v1, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    aget-object v3, v3, v5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3, v1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v1, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v3, v1, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v3, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->DEFAULT_VALUE:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v3, v1, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v2, v1, p1}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    const-string/jumbo v3, "setValueViaEternal() exception "

    const-string v4, "\n"

    invoke-static {v3, v2, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SettingsEpisodeProvider"

    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
