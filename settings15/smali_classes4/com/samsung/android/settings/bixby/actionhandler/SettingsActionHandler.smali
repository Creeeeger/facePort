.class public final Lcom/samsung/android/settings/bixby/actionhandler/SettingsActionHandler;
.super Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 113

    const-string v111, "bixby.settingsApp.SetOnOff_SmartStay"

    const-string v112, "bixby.settingsApp.GOTO_SmartStaySetting"

    const-string v0, "bixby.settingsApp.GetOnOff_AdaptiveColorTone"

    const-string v1, "bixby.settingsApp.SetOnOff_AdaptiveColorTone"

    const-string v2, "bixby.settingsApp.Goto_AdaptiveColorToneSetting"

    const-string v3, "bixby.settingsApp.GetOnOff_NoDisturb"

    const-string v4, "bixby.settingsApp.SetOnOff_NoDisturb"

    const-string v5, "bixby.settingsApp.Goto_NoDisturbSetting"

    const-string v6, "bixby.settingsApp.GetOnOff_MobileData"

    const-string v7, "bixby.settingsApp.SetOnOff_MobileData"

    const-string v8, "bixby.settingsApp.Goto_MobileDataSetting"

    const-string v9, "bixby.settingsApp.Enable_MobileData"

    const-string v10, "bixby.settingsApp.Disable_MobileData"

    const-string v11, "bixby.settingsApp.Goto_DataUsageSetting"

    const-string v12, "bixby.settingsApp.GetOnOff_Airplane"

    const-string v13, "bixby.settingsApp.SetOnOff_Airplane"

    const-string v14, "bixby.settingsApp.Goto_AirplaneSetting"

    const-string v15, "bixby.settingsApp.Enable_Airplane"

    const-string v16, "bixby.settingsApp.Disable_Airplane"

    const-string v17, "bixby.settingsApp.GetOnOff_BlueLight"

    const-string v18, "bixby.settingsApp.SetOnOff_BlueLight"

    const-string v19, "bixby.settingsApp.Goto_BlueLightSetting"

    const-string v20, "bixby.settingsApp.GetOnOff_AutoBrightness"

    const-string v21, "bixby.settingsApp.SetOnOff_AutoBrightness"

    const-string v22, "bixby.settingsApp.Goto_AutoBrightnessSetting"

    const-string v23, "bixby.settingsApp.GetOnOff_NightTheme"

    const-string v24, "bixby.settingsApp.SetOnOff_NightTheme"

    const-string v25, "bixby.settingsApp.Goto_NightThemeSetting"

    const-string v26, "bixby.settingsApp.GetOnOff_Location"

    const-string v27, "bixby.settingsApp.SetOnOff_Location"

    const-string v28, "bixby.settingsApp.Goto_LocationSetting"

    const-string v29, "bixby.settingsApp.Get_JumpToAppResult"

    const-string v30, "bixby.settingsApp.Goto_JumpToAppMenu"

    const-string v31, "bixby.settingsApp.GetOnOff_Synchronize"

    const-string v32, "bixby.settingsApp.Goto_SynchronizeSetting"

    const-string v33, "bixby.settingsApp.SetOn_Synchronize"

    const-string v34, "bixby.settingsApp.SetOff_Synchronize"

    const-string v35, "bixby.settingsApp.GetOnOff_PinWindows"

    const-string v36, "bixby.settingsApp.SetOnOff_PinWindows"

    const-string v37, "bixby.settingsApp.Goto_PinWindowsSetting"

    const-string v38, "bixby.settingsApp.GetOnOff_ScreenSaver"

    const-string v39, "bixby.settingsApp.SetOnOff_ScreenSaver"

    const-string v40, "bixby.settingsApp.Goto_ScreenSaverSetting"

    const-string v41, "bixby.settingsApp.Get_FontSize"

    const-string v42, "bixby.settingsApp.ChangeFontSize"

    const-string v43, "bixby.settingsApp.Goto_FontSetting"

    const-string v44, "bixby.settingsApp.Get_WhiteBalance"

    const-string v45, "bixby.settingsApp.ChangeWhiteBalance"

    const-string v46, "bixby.settingsApp.Goto_WhiteBalanceSetting"

    const-string v47, "bixby.settingsApp.Get_ScreenZoom"

    const-string v48, "bixby.settingsApp.ChangeScreenZoom"

    const-string v49, "bixby.settingsApp.Goto_ScreenZoomSetting"

    const-string v50, "bixby.settingsApp.Get_SoundMode"

    const-string v51, "bixby.settingsApp.Set_SoundMode"

    const-string v52, "bixby.settingsApp.Goto_SoundModeSetting"

    const-string v53, "bixby.settingsApp.Get_ScreenTimeOut"

    const-string v54, "bixby.settingsApp.Set_ScreenTimeOut"

    const-string v55, "bixby.settingsApp.Goto_ScreenTimeOutSetting"

    const-string v56, "bixby.settingsApp.Goto_LockScreenSetting"

    const-string v57, "bixby.settingsApp.Goto_RingtoneScreenSetting"

    const-string v58, "bixby.settingsApp.Goto_MainSetting"

    const-string v59, "bixby.settingsApp.Goto_SoundVibrateSetting"

    const-string v60, "bixby.settingsApp.Goto_VibratePatternSetting"

    const-string v61, "bixby.settingsApp.Goto_DisplaySetting"

    const-string v62, "bixby.settingsApp.Goto_ScreenModeSetting"

    const-string v63, "bixby.settingsApp.Goto_FullScreenAppsSetting"

    const-string v64, "bixby.settingsApp.Goto_StatusBarSetting"

    const-string v65, "bixby.settingsApp.Goto_NavigationBarSetting"

    const-string v66, "bixby.settingsApp.Goto_AdvancedFeaturesSetting"

    const-string v67, "bixby.settingsApp.Goto_OneHandModeSetting"

    const-string v68, "bixby.settingsApp.Goto_FingerSensorGesturesSetting"

    const-string v69, "bixby.settingsApp.Goto_SwipeToCaptureSetting"

    const-string v70, "bixby.settingsApp.Goto_SmartAlertSetting"

    const-string v71, "bixby.settingsApp.Goto_SmartCaptureSetting"

    const-string v72, "bixby.settingsApp.Goto_EasyMuteSetting"

    const-string v73, "bixby.settingsApp.Goto_DualMessengerSetting"

    const-string v74, "bixby.settingsApp.Goto_SwipeToCallOrSendMessagesSetting"

    const-string v75, "bixby.settingsApp.Goto_SendSOSMessagesSetting"

    const-string v76, "bixby.settingsApp.Goto_DirectShareSetting"

    const-string v77, "bixby.settingsApp.Goto_VideoEnhancerSetting"

    const-string v78, "bixby.settingsApp.Goto_ApplicationMenuSetting"

    const-string v79, "bixby.settingsApp.Goto_CloudAndAccountsSetting"

    const-string v80, "bixby.settingsApp.Goto_AccountSetting"

    const-string v81, "bixby.settingsApp.Goto_GeneralManagementSetting"

    const-string v82, "bixby.settingsApp.Goto_LanguageSetting"

    const-string v83, "bixby.settingsApp.Goto_ChangeLanguage"

    const-string v84, "bixby.settingsApp.Goto_ScreenKeyboardSetting"

    const-string v85, "bixby.settingsApp.Goto_ResetSetting"

    const-string v86, "bixby.settingsApp.Goto_AboutDeviceSetting"

    const-string v87, "bixby.settingsApp.Goto_BiometricsAndSecuritySetting"

    const-string v88, "bixby.settingsApp.Goto_StatusSetting"

    const-string v89, "bixby.settingsApp.Goto_FingerprintsSetting"

    const-string v90, "bixby.settingsApp.Goto_SimStatusSetting"

    const-string v91, "bixby.settingsApp.Goto_FaceRecognitionSetting"

    const-string v92, "bixby.settingsApp.Goto_IrisSetting"

    const-string v93, "bixby.settingsApp.Goto_FactoryDataResetSetting"

    const-string v94, "bixby.settingsApp.Goto_ResetAllSettingsToDefaultSetting"

    const-string v95, "bixby.settingsApp.Goto_HardPressSetting"

    const-string v96, "bixby.settingsApp.Goto_NotificationSoundsSetting"

    const-string v97, "bixby.settingsApp.Goto_FontStyleSetting"

    const-string v98, "bixby.settingsApp.Goto_SideKeySetting"

    const-string v99, "bixby.settingsApp.Goto_SoftwareUpdateSetting"

    const-string v100, "bixby.settingsApp.Goto_SamsungKeyboardSetting"

    const-string v101, "bixby.settingsApp.Goto_VolumeSetting"

    const-string v102, "bixby.settingsApp.Goto_ScreenResolutionSetting"

    const-string v103, "bixby.settingsApp.Set_ScreenResolution"

    const-string v104, "bixby.settingsApp.Get_MuteDuration"

    const-string v105, "bixby.settingsApp.Set_MuteDuration"

    const-string v106, "bixby.settingsApp.Goto_MuteDurationSetting"

    const-string v107, "bixby.settingsApp.Open_UserManual"

    const-string v108, "bixby.settingsApp.CheckColorSettings"

    const-string v109, "bixby.settingsApp.RecoverColorSettings"

    const-string v110, "bixby.settingsApp.GetOnOff_SmartStay"

    filled-new-array/range {v0 .. v112}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixby/actionhandler/SettingsActionHandler;->ACTIONS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/SettingsActionParam;

    iget-object v1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string v1, "bixby.settingsApp.SetOnOff_NightTheme"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "value"

    if-eqz v1, :cond_2

    iget-object p1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object v3, v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->value:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    iput-object p1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->value:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v1, "bixby.settingsApp.Set_ScreenTimeOut"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object v3, v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->value:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_1

    :catch_0
    const-string v2, "fail to convert value : "

    const-string v3, "SettingsActionParam"

    invoke-static {v2, p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->value:Ljava/lang/String;

    :cond_4
    :goto_2
    sget-object p1, Lcom/samsung/android/settings/bixby/control/ControlFactory$LazyHolder;->sControlFactory:Lcom/samsung/android/settings/bixby/control/ControlFactory;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/control/ControlFactory;->createControl(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Lcom/samsung/android/settings/bixby/control/Control;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    instance-of v1, p1, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string v2, "bixby.settingsApp.Goto_SendSOSMessagesSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.sec.android.app.safetyassurance.command"

    goto :goto_3

    :cond_5
    const-string v1, "com.android.settings.command"

    :goto_3
    invoke-interface {p1, v1}, Lcom/samsung/android/settings/bixby/control/Control;->execute(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/samsung/android/settings/bixby/control/Control;->execute(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    iget-object v0, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convert(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
