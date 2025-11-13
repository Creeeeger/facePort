.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIdle()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    :cond_0
    return-void
.end method

.method public final onTurnOver(Z)V
    .locals 5

    const-string v0, "EdgeLightingScheduler"

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-boolean v2, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    xor-int/2addr v2, v1

    const/4 v3, -0x2

    const-string v4, "edge_lighting_show_condition"

    invoke-static {p1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_0

    const-string p0, "onTurnOver: calling not available with screen on setting"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "startCallingEffect"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-direct {p1}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    const v2, -0x984ab5

    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    iput-boolean v1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    const/4 v2, -0x1

    iput v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mWidthDepth:I

    iput-boolean v1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mInfiniteLighting:Z

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v2, v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EdgeLightingEventStyleInfo,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->effectInfoToString(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v2, p1, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-nez v2, :cond_2

    const-string p0, "onTurnOver: noti info empty"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 v0, 0x1770

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->extendLightingDuration(IZ)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    if-eqz p1, :cond_6

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-nez p1, :cond_5

    new-instance p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    :cond_5
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    if-eqz p1, :cond_6

    invoke-static {p0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onTurnRight()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    const-string v1, "EdgeLightingScheduler"

    if-nez v0, :cond_0

    const-string p0, "onTurnRight: noti info empty"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string v4, "keyguard"

    iget-object v2, v2, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v2, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "onTurnRight: keyguard + screenon"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    :cond_2
    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    if-eqz v0, :cond_5

    invoke-static {p0, v3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    :cond_4
    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    if-eqz v0, :cond_5

    invoke-static {p0, v3}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    :cond_5
    :goto_0
    return-void
.end method
