.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    const-string v1, "onSystemUiStateChanged"

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    sget-object v13, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    sget-boolean v14, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    const-string v15, "init"

    if-eqz v14, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSupportSplitScreen:Z

    if-eqz v14, :cond_1

    const-string v0, "get settings"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "open_in_split_screen_view"

    const/4 v12, 0x0

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_2

    move v0, v11

    goto :goto_0

    :cond_2
    move v0, v12

    :goto_0
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    const-string v4, "navigation_mode"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "failed to load nav mode="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v12

    :goto_1
    iput v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    const-string v5, "device_provisioned"

    invoke-static {v2, v5, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v11

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    const/4 v0, -0x2

    const-string/jumbo v6, "user_setup_complete"

    invoke-static {v2, v6, v12, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    goto :goto_3

    :cond_4
    move v0, v12

    :goto_3
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    :try_start_1
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mAtm:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    if-eqz v14, :cond_5

    const-string v2, "Failed to get lock task mode."

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->getTalkbackComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    :goto_5
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_6
    new-instance v2, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.accessibility.talkback"

    const-string v8, "com.samsung.android.marvin.talkback.TalkBackService"

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    iput-boolean v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    if-eqz v14, :cond_7

    const-string/jumbo v0, "register observer"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "MultiWindow_twoFingerSplitGesture_TestTouchSlop"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v2, "MultiWindow_twoFingerSplitGesture_TestFlag"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v2, "enabled_accessibility_services"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mHandler:Landroid/os/Handler;

    move-object v2, v4

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 p0, v15

    move-object v15, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    move-object v5, v0

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v10

    move-object/from16 v19, v8

    move-object v8, v9

    move-object/from16 v20, v13

    move-object v13, v9

    move-object/from16 v9, v19

    move/from16 v21, v14

    move-object v14, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v18

    move-object/from16 v22, v13

    move v13, v12

    move-object/from16 v12, v17

    invoke-direct/range {v2 .. v12}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v15, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    invoke-virtual {v2, v0, v13, v3, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    invoke-virtual {v0, v14, v13, v2, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v13, v2, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v13, v2, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    move-object/from16 v3, v16

    invoke-virtual {v0, v3, v13, v2, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    move-object/from16 v3, v18

    invoke-virtual {v0, v3, v13, v2, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

    move-object/from16 v3, v17

    invoke-virtual {v0, v3, v13, v2, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    if-eqz v21, :cond_8

    const-string/jumbo v0, "register broadcast"

    move-object/from16 v2, v20

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;

    invoke-direct {v4, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$4;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const-string v6, "com.samsung.android.permission.LOCK_TASK_MODE"

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SUPPORT_STANDALONE:Z

    if-eqz v2, :cond_9

    iget v0, v0, Landroid/content/res/Configuration;->dexMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    move v12, v2

    goto :goto_7

    :cond_9
    move v12, v13

    :goto_7
    iput-boolean v12, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
