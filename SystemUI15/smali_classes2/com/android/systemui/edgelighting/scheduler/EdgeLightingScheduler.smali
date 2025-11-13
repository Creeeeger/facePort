.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

.field public mContext:Landroid/content/Context;

.field public mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mEdgeLightingObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

.field public final mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

.field public final mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

.field public mIsScreenOnReceived:Z

.field public mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

.field public mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

.field public mPm:Landroid/os/PowerManager;

.field public mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

.field public mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

.field public mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$misNeedToBlockedByPolicy(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    const-string v3, "EdgeLightingScheduler"

    if-eqz v0, :cond_1

    const-string p0, "isNeedToBlockedByPolicy: not work on statusbar"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v4, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    xor-int/2addr v4, v2

    const/4 v5, -0x2

    const-string v6, "edge_lighting_show_condition"

    invoke-static {v0, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "com.samsung.android.messaging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isNeedToBlockedByPolicy: skip by screen on order policy "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    if-nez p0, :cond_3

    const-string p0, "isNeedToBlockedByPolicy: not work when cover"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method public static -$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "startNotiEffect:  dur="

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const-string v4, "EdgeLightingScheduler"

    if-nez v3, :cond_0

    const-string/jumbo v0, "startNotiEffect: noti info empty"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_0
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v5, v6}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->requestDozeStateSubScreen(Z)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v7, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_2
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v5

    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v8, v8, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    invoke-virtual {v8, v10}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v9, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    :cond_3
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    if-nez v8, :cond_4

    new-instance v8, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v0, v10}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Landroid/os/Handler;)V

    iput-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    :cond_4
    iget-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v8, v8, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "any_screen_running"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mOneHandOperationObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$7;

    invoke-virtual {v8, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-direct {v8}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    iget-object v10, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v10}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_5

    const-string v11, "noti_actions"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_5
    move-object v10, v9

    :goto_0
    if-eqz v10, :cond_6

    move v10, v6

    goto :goto_1

    :cond_6
    move v10, v7

    :goto_1
    iput-boolean v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v10, v10, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v11

    iget-object v12, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v12}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    move-result-object v12

    iget-object v13, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11, v13, v12}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getLightingColor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v10

    iput-object v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    iput-boolean v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    if-nez v5, :cond_7

    new-instance v10, Landroid/content/Intent;

    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v11, v11, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v11, v11, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_7
    const/4 v10, -0x1

    const/4 v11, -0x2

    const-string v12, " +TurnOver"

    if-nez v5, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v14, 0x1770

    iput-wide v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    iget-object v14, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v14, v14, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0703a8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    iput v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    iput v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    goto :goto_2

    :cond_8
    iget-object v14, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v14, v14, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "edge_lighting_transparency"

    invoke-static {v14, v15, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v14

    iput v15, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    iget-object v14, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v14, v14, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v15

    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v10, v10, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v15, "edge_lighting_thickness"

    invoke-static {v10, v15, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    invoke-static {v10, v14}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(ILandroid/content/Context;)F

    move-result v10

    iget-object v14, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v14, v14, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v15, v7, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    iput v10, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    iput v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    iget-object v10, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v10, v10, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v10

    int-to-long v14, v10

    iput-wide v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    if-eqz v5, :cond_9

    const-string v10, " +On"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    const-string v10, " +Off"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    const-string v10, "EdgeLightingEventStyleInfo,"

    if-eqz v1, :cond_b

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v1, v6}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v5, v1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_a
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_21

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_11

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isSensitiveStateActive()Z

    move-result v1

    iget-object v12, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v15

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v11

    invoke-virtual {v12, v15, v11, v14}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isNeedToSanitized(IILjava/lang/String;)Z

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v12}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isSupportAppLock()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v12}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isAppLockEnabled()Z

    move-result v12

    goto :goto_3

    :cond_c
    move v12, v7

    :goto_3
    if-eqz v12, :cond_d

    iget-object v12, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v12, v13}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->shouldHideNotiForAppLockByPackage(Ljava/lang/String;)Z

    move-result v12

    goto :goto_4

    :cond_d
    move v12, v7

    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppIcon(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v14, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v14}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "show_small_icon"

    invoke-virtual {v14, v15, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isSmallIcon(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSmallIcon:Z

    iget-object v14, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v14, v14, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-boolean v14, v14, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsUsingAppIcon:Z

    iput-boolean v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsUsingAppIcon:Z

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v14

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v15

    iget-object v9, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v9, v9, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result v9

    iget-object v14, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v14, v14, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "remove_animations"

    invoke-static {v14, v15, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v6, :cond_e

    move v14, v6

    goto :goto_5

    :cond_e
    move v14, v7

    :goto_5
    const-string v15, "content://com.samsung.android.systemui.edgelighting.plus.provider"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    if-eqz v7, :cond_f

    const/16 v16, 0x0

    aget-object v7, v7, v16

    move/from16 p1, v9

    const-string/jumbo v9, "title"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v7, v7, v9

    const-string v9, "description"

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move/from16 p1, v9

    :goto_6
    iget-object v7, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "getData()"

    move-object/from16 v17, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v15, v9, v10, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPlusEffectBundle:Landroid/os/Bundle;

    goto :goto_7

    :cond_10
    move/from16 p1, v9

    move-object/from16 v17, v10

    :goto_7
    iget-object v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPlusEffectBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_11

    const-string v7, "isUsingCustomEffect"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0x64

    iput v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_12

    const/4 v9, 0x0

    goto :goto_8

    :cond_12
    move/from16 v9, p1

    :goto_8
    iput v9, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    :goto_9
    iput-object v13, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    iput-boolean v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    iput-boolean v6, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v7, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string v7, "keyguard"

    iget-object v6, v6, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v6, v7}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_a

    :cond_13
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_1c

    const-string v6, "+locked"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v6}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v6, v7, v9, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    move v6, v7

    goto :goto_b

    :cond_14
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_1e

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v6}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "lock_screen_allow_private_notifications"

    invoke-static {v6, v9, v7, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_15

    move v6, v7

    goto :goto_c

    :cond_15
    const/4 v6, 0x0

    :goto_c
    iget-object v9, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v9}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_16

    const-string v10, "package_visiblity"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_d

    :cond_16
    const/16 v9, -0x3e8

    :goto_d
    if-nez v9, :cond_17

    goto :goto_e

    :cond_17
    const/4 v7, 0x0

    :goto_e
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v9

    if-nez v11, :cond_18

    if-eqz v9, :cond_18

    const/4 v10, -0x1

    if-eq v9, v10, :cond_18

    if-nez v6, :cond_18

    if-nez v7, :cond_18

    if-nez v1, :cond_18

    if-eqz v12, :cond_19

    :cond_18
    invoke-virtual {v0, v13}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v1

    if-nez v1, :cond_19

    const-string v0, "Not showing edgelighting because suppressAwakeHeadsUp is true"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_19
    const-string v1, "+notiOn"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    if-eqz v6, :cond_1a

    const-string v5, "+hideContent"

    goto :goto_f

    :cond_1a
    move-object v5, v1

    :goto_f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_1b

    const-string v1, "+hideContentPackageName"

    :cond_1b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "notiVisibility: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_1c
    if-nez v11, :cond_1d

    if-nez v1, :cond_1d

    if-eqz v12, :cond_1e

    :cond_1d
    invoke-virtual {v0, v13}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    :cond_1e
    :goto_10
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1f

    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_1f
    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v1

    add-int/lit16 v1, v1, 0x7d0

    int-to-long v5, v1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_20

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_20
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_21

    invoke-virtual {v1, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_21
    :goto_11
    iget-object v1, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const-string v3, "component"

    invoke-static {v1, v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v3

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_22

    if-eqz v3, :cond_22

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/edge/SemEdgeManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mHandler:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;-><init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeLightingObserver:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$2;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    return-void
.end method


# virtual methods
.method public final getAppIcon(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x402080

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "show_small_icon"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isSmallIcon(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v4, v4, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-boolean v4, v4, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsColorThemeEnabled:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    const-class v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-object v1
.end method

.method public final getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2200

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p1
.end method

.method public final isSmallIcon(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x402080

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.systemui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsUsingAppIcon:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_2
    return v0
.end method

.method public final notifyEdgeLightingPackageList(Z)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "EdgeLightingScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyEdgeLightingPackageList :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", empty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mEdgeManager:Lcom/samsung/android/edge/SemEdgeManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/edge/SemEdgeManager;->updateEdgeLightingPackageList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final notifyScreenOff()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    :cond_1
    return-void
.end method

.method public final notifyScreenOn()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mIsScreenOnReceived:Z

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mScreenStatusChecker:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;

    if-eqz v1, :cond_0

    const-string v1, "EdgeLightingScreenStatus"

    const-string v2, "reset"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget v1, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    if-ne v1, v0, :cond_1

    const-string p0, "EdgeLightingScheduler"

    const-string v0, "notifyScreenOn: isUpsideDown is true"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public final releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method
