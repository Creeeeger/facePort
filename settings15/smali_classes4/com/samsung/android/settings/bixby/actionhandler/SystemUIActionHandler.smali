.class public final Lcom/samsung/android/settings/bixby/actionhandler/SystemUIActionHandler;
.super Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 99

    const-string v97, "Rewind"

    const-string v98, "FindAppInfo"

    const-string v0, "SetVolumeLevel"

    const-string v1, "SetVolumeLevelRingtones"

    const-string v2, "SetVolumeLevelMedia"

    const-string v3, "SetVolumeLevelSystem"

    const-string v4, "SetVolumeLevelNoti"

    const-string v5, "SetVolumeLevelBixby"

    const-string v6, "SetVolumeLevelBluetooth"

    const-string v7, "GetVolumeLevel"

    const-string v8, "GetVolumeLevelRingtones"

    const-string v9, "GetVolumeLevelMedia"

    const-string v10, "GetVolumeLevelSystem"

    const-string v11, "GetVolumeLevelNoti"

    const-string v12, "GetVolumeLevelBixby"

    const-string v13, "GetVolumeLevelBluetooth"

    const-string v14, "MuteVolume"

    const-string v15, "MuteVolumeAll"

    const-string v16, "MuteVolumeRingtones"

    const-string v17, "MuteVolumeMedia"

    const-string v18, "MuteVolumeNoti"

    const-string v19, "MuteVolumeSystem"

    const-string v20, "MuteVolumeBixby"

    const-string v21, "MuteVolumeBluetooth"

    const-string v22, "UnMuteVolume"

    const-string v23, "UnMuteVolumeAll"

    const-string v24, "UnMuteVolumeRingtones"

    const-string v25, "UnMuteVolumeMedia"

    const-string v26, "UnMuteVolumeNoti"

    const-string v27, "UnMuteVolumeSystem"

    const-string v28, "UnMuteVolumeBixby"

    const-string v29, "UnMuteVolumeBluetooth"

    const-string v30, "CaptureScreen"

    const-string v31, "ShareScreenshot"

    const-string v32, "ShareScreenshotUri"

    const-string v33, "GoToHomeScreen"

    const-string v34, "Back"

    const-string v35, "IncreaseBrightness"

    const-string v36, "DecreaseBrightness"

    const-string v37, "SetBrightness"

    const-string v38, "bixby.settingsApp.GetOnOff_AutoBrightnessCover"

    const-string v39, "bixby.settingsApp.SetOnOff_AutoBrightnessCover"

    const-string v40, "bixby.settingsApp.Goto_AutoBrightnessCover"

    const-string v41, "ScrollUp"

    const-string v42, "ScrollDown"

    const-string v43, "ScrollLeft"

    const-string v44, "ScrollRight"

    const-string v45, "Goto_EdgeLighting"

    const-string v46, "DummySystem"

    const-string v47, "PowerOff"

    const-string v48, "Reboot"

    const-string v49, "TurnOnFlashlight"

    const-string v50, "TurnOffFlashlight"

    const-string v51, "SetFlashLightLevel"

    const-string v52, "GoToFlashLightSetting"

    const-string v53, "TurnOffScreen"

    const-string v54, "TurnOnAutoRotate"

    const-string v55, "TurnOffAutoRotate"

    const-string v56, "SetLandscapeMode"

    const-string v57, "SetPortraitMode"

    const-string v58, "CoverFlexDoubleTab"

    const-string v59, "DeleteNotification"

    const-string v60, "OpenNotificationPanel"

    const-string v61, "CloseQuickPanelScreen"

    const-string v62, "ReadNotificationWithID"

    const-string v63, "ReplyNotification"

    const-string v64, "AppNotificationPermissionSetting"

    const-string v65, "AppNotificationPermissionSettingOff"

    const-string v66, "AppNotificationSoundSetting"

    const-string v67, "DiagnoseTroubleShooting"

    const-string v68, "LaunchApplication"

    const-string v69, "CloseApplication"

    const-string v70, "CloseForegroundApplication"

    const-string v71, "CloseAllApplications"

    const-string v72, "CloseAllBackgroundApps"

    const-string v73, "CloseAllAppsExceptSpecificOnes"

    const-string v74, "StartMultiWindow"

    const-string v75, "OpenRecentsApp"

    const-string v76, "AppResizable"

    const-string v77, "LaunchMostRecentApplication"

    const-string v78, "CloseMultipleApplications"

    const-string v79, "StartAppSplitPosition"

    const-string v80, "ExchangePositionOfSplitScreen"

    const-string v81, "ChangeLayoutOfSplitScreen"

    const-string v82, "ReplaceAppOfSplitScreen"

    const-string v83, "MaximizeApp"

    const-string v84, "CheckOrientation"

    const-string v85, "CheckSplitType"

    const-string v86, "CheckSplitState"

    const-string v87, "CheckLauncherVisible"

    const-string v88, "GetPackageInSplit"

    const-string v89, "PlayMusic"

    const-string v90, "StopMusic"

    const-string v91, "SkipSong"

    const-string v92, "PreviousSong"

    const-string v93, "ReplayCurrentSong"

    const-string v94, "MoveFromCurrentPosition"

    const-string v95, "SeekTo"

    const-string v96, "FastForward"

    filled-new-array/range {v0 .. v98}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixby/actionhandler/SystemUIActionHandler;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public static getValueAsJSON(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "template"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->createTemplateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    check-cast p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p0, p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;->mJSONString:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "fail"

    return-object p0
.end method


# virtual methods
.method public final executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;->mResultConverter:Lcom/samsung/android/settings/bixby/converter/ResultConverter;

    new-instance v0, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;-><init>(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)V

    iget-object v6, v0, Lcom/samsung/android/settings/bixby/control/actionparam/SystemUIActionParam;->mVolumeType:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string v8, "DummySystem"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const-string/jumbo v8, "success"

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v7, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string v9, "Volume"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    :cond_1
    sget-object v7, Lcom/samsung/android/settings/bixby/control/ControlFactory$LazyHolder;->sControlFactory:Lcom/samsung/android/settings/bixby/control/ControlFactory;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/bixby/control/ControlFactory;->createControl(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Lcom/samsung/android/settings/bixby/control/Control;

    move-result-object v7

    const-string v10, "com.android.systemui.command"

    invoke-interface {v7, v10}, Lcom/samsung/android/settings/bixby/control/Control;->execute(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v10, "fail"

    const-string v11, "SystemUIActionHandler"

    if-nez v7, :cond_2

    const-string v0, "executeActionInternal() extras bundle is null"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    goto/16 :goto_8

    :cond_2
    iget-object v12, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string v13, "FindAppInfo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "ReadNotificationWithID"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const/4 v9, 0x3

    goto/16 :goto_7

    :cond_4
    iget-object v12, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string/jumbo v13, "result"

    const-string/jumbo v14, "response_code"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "response_message"

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "status"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "status_code"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v14, v4, :cond_5

    if-ne v2, v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v8, v10

    :goto_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v15, v3

    :cond_6
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "already_set"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v8, v15

    :cond_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v2, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "description"

    if-eqz v3, :cond_c

    :try_start_1
    const-string/jumbo v3, "volumeLevelUnit"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    const-string/jumbo v3, "template"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->createTemplateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/template/CommandTemplate;->getTemplateType()I

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x3

    if-ne v7, v9, :cond_a

    :try_start_2
    check-cast v3, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    iget v7, v3, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mCurrentValue:F

    if-eqz v0, :cond_8

    iget v8, v3, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMinValue:F

    sub-float/2addr v7, v8

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v7, v10

    iget v3, v3, Lcom/samsung/android/sdk/command/template/SliderTemplate;->mMaxValue:F

    sub-float/2addr v3, v8

    div-float/2addr v7, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    goto :goto_1

    :cond_8
    float-to-int v3, v7

    goto :goto_1

    :cond_9
    const/4 v9, 0x3

    :cond_a
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_b

    const-string/jumbo v0, "percentage"

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    const-string v0, "level"

    :goto_2
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "volumeType"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v10, v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    const/4 v9, 0x3

    goto :goto_5

    :cond_c
    const/4 v9, 0x3

    const-string v0, "AutoBrightnessCover"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "DiagnoseTroubleShooting"

    invoke-static {v12, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "contentIdx"

    invoke-virtual {v2, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_e
    invoke-virtual {v2, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    invoke-static {v7}, Lcom/samsung/android/settings/bixby/actionhandler/SystemUIActionHandler;->getValueAsJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_10

    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :catch_2
    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :goto_5
    const-string v3, "convertResult() failed to convertResult : "

    const-string v6, ", reason : "

    invoke-static {v3, v12, v6}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_7
    invoke-static {v7}, Lcom/samsung/android/settings/bixby/actionhandler/SystemUIActionHandler;->getValueAsJSON(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    :goto_8
    iget-object v0, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    iget-object v1, v5, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, v5, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_b

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_9
    move v2, v1

    goto :goto_a

    :sswitch_0
    const-string v2, "bixby.settingsApp.GetOnOff_BlueLight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_9

    :cond_12
    const/4 v2, 0x5

    goto :goto_a

    :sswitch_1
    const-string v2, "bixby.settingsApp.Set_ScreenTimeOut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_9

    :cond_13
    const/4 v2, 0x4

    goto :goto_a

    :sswitch_2
    const-string v2, "bixby.settingsApp.SetOnOff_NightTheme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_9

    :cond_14
    move v2, v9

    goto :goto_a

    :sswitch_3
    const-string v2, "bixby.settingsApp.SetOnOff_AutoBrightness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_9

    :cond_15
    const/4 v2, 0x2

    goto :goto_a

    :sswitch_4
    const-string v2, "bixby.settingsApp.GetOnOff_AutoBrightness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_9

    :cond_16
    move v2, v4

    goto :goto_a

    :sswitch_5
    const-string v2, "bixby.settingsApp.GetOnOff_NightTheme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_9

    :cond_17
    const/4 v2, 0x0

    :goto_a
    packed-switch v2, :pswitch_data_0

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_c

    :catch_3
    :try_start_6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    :pswitch_0
    invoke-static {v0, v10}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convertSpecificActionResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :catch_4
    :goto_b
    invoke-static {v10}, Lcom/samsung/android/settings/bixby/converter/ResultConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_c
    return-object v10

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b3df320 -> :sswitch_5
        -0x56cecbd1 -> :sswitch_4
        0x2384633b -> :sswitch_3
        0x28bea1ec -> :sswitch_2
        0x7320fca2 -> :sswitch_1
        0x7899daad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isAffectedByKnoxPolicy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
