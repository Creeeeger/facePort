.class public final Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, v1, Landroid/os/Message;->what:I

    const v7, 0x7f080d10

    const/high16 v9, -0x1000000

    const/16 v10, 0x10

    const v11, 0x7f0a0380

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eqz v2, :cond_16

    if-eq v2, v13, :cond_0

    goto/16 :goto_28

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    if-eqz v2, :cond_7

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v7

    iget v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    const-string v9, "NotificationLightingScheduler"

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeLighting: invalid param "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_1
    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "releaseWakeLockPackage : "

    invoke-virtual {v10, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "DeviceWakeLockManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v5, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    if-ne v1, v6, :cond_4

    invoke-virtual {v5, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "removeLighting: return by reason"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_4
    iget-object v6, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v8

    :cond_5
    const-string v6, "removeLighting: "

    const-string v10, " reason="

    const-string v11, " cur="

    invoke-static {v1, v6, v2, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iput v13, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v5, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_28

    :cond_6
    invoke-virtual {v5, v12, v7}, Landroid/os/Handler;->hasEqualMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v5, v12, v7}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    invoke-virtual {v5, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_28

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-eqz v0, :cond_6b

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v2, "ApplicationLightingScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removeLighting: invalid param "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v2

    :try_start_0
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    if-nez v1, :cond_9

    const-string v0, "ApplicationLightingScheduler"

    const-string v1, "removeLighting: no listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto/16 :goto_28

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iput-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0, v12}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_15

    iput-boolean v12, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_a

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    :cond_a
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_c

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v6, :cond_b

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v8, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    :cond_b
    new-instance v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    iput-object v6, v5, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    :cond_c
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v1, :cond_d

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v6, v1

    if-lez v6, :cond_d

    aget v6, v1, v12

    or-int v8, v6, v9

    aget v1, v1, v13

    if-eqz v1, :cond_e

    iget-object v6, v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iput v1, v6, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    goto :goto_1

    :cond_d
    const v8, -0xf0551d

    :cond_e
    :goto_1
    iget-object v1, v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    invoke-virtual {v1, v8}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setMainColor(I)V

    iget-object v1, v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iput-boolean v12, v1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v1, :cond_f

    goto/16 :goto_2

    :cond_f
    iput-boolean v13, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    iget-wide v5, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    iget-wide v6, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    invoke-static {v1, v5, v6, v7}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    iget v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    if-eqz v1, :cond_15

    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_12
    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "repeat Color Animation from : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " toColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v5, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_13
    iput-object v8, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0, v12}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v1, :cond_14

    const-string v0, "EdgeLightingDialog"

    const-string/jumbo v3, "stopApplication"

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    goto :goto_2

    :cond_14
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    :cond_15
    :goto_2
    monitor-exit v2

    goto/16 :goto_28

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_16
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    if-eqz v2, :cond_5f

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_17

    iget v3, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    invoke-virtual {v2, v3, v6}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeToTakeAction time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LightingScheduleInfo"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v3

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v7

    if-eqz v7, :cond_19

    :cond_18
    move v0, v13

    goto :goto_4

    :cond_19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "don\'t need keep notificaton ("

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "EdgeLightingScheduler"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    :goto_4
    const-string v4, "NotificationLightingScheduler"

    iget-object v7, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v7, :cond_1a

    iget-object v7, v7, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    goto :goto_5

    :cond_1a
    move-object v7, v8

    :goto_5
    iget-object v9, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    move v10, v13

    goto :goto_7

    :cond_1b
    iget-object v10, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mEdgeLightingDataKeeper:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, " getOldLightingInfo "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v10, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    iget-object v10, v10, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;

    iget-object v10, v10, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;->mEdgeLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    goto :goto_6

    :cond_1c
    move-object v10, v8

    :goto_6
    invoke-static {v10}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v10

    :goto_7
    const-string v11, "putLighting: "

    const-string v14, " reason="

    invoke-static {v11, v9, v14}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v14, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " cur="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isNeedKeepPackage="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isNeedKeepNoti="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    if-nez v0, :cond_1d

    const-string v0, "putLighting: no listener"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_1d
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    :cond_1e
    iget-boolean v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    if-eqz v0, :cond_2c

    if-nez v3, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "putLighting: mCurrentLightingScheduleInfo= "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",new="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_20

    iget-object v3, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    if-eqz v3, :cond_20

    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    if-nez v3, :cond_1f

    goto :goto_8

    :cond_1f
    iget-object v3, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_9

    :cond_20
    :goto_8
    move v3, v12

    :goto_9
    if-nez v3, :cond_21

    goto :goto_a

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_a
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    if-nez v0, :cond_23

    :cond_22
    :goto_b
    move v0, v12

    goto :goto_c

    :cond_23
    iget-object v0, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_b

    :cond_24
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iget-object v3, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    if-nez v0, :cond_26

    if-nez v3, :cond_26

    :cond_25
    move v0, v13

    goto :goto_c

    :cond_26
    if-eqz v0, :cond_22

    if-nez v3, :cond_27

    goto :goto_b

    :cond_27
    const-string/jumbo v7, "tickerText"

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    goto :goto_b

    :cond_28
    const-string/jumbo v7, "text"

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_29

    goto :goto_b

    :cond_29
    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2a

    goto :goto_b

    :cond_2a
    const-string/jumbo v7, "subText"

    invoke-static {v0, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v7}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->getText(Lcom/samsung/android/edge/SemEdgeLightingInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_b

    :goto_c
    if-eqz v0, :cond_2b

    const-string v0, "putLighting: skip by isDuplicatedOnGoing"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_2b
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "putLighting: skip by isOnGoing notification showing"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_2c
    iget v0, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    iget-object v3, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mNotificationScheduleHandler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;

    if-eq v0, v6, :cond_2e

    const/4 v7, 0x5

    if-eq v0, v7, :cond_2d

    if-eq v0, v5, :cond_2e

    goto :goto_d

    :cond_2d
    invoke-virtual {v3, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_d

    :cond_2e
    invoke-static {}, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->getInstance()Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_2f

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    const-string/jumbo v7, "setWakeLockPackage : "

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "DeviceWakeLockManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/device/DeviceWakeLockManager;->mWakeLockMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-virtual {v3, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_30
    :goto_d
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    goto :goto_e

    :cond_31
    move-object v0, v8

    :goto_e
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "EdgeLightingScheduler"

    sget-boolean v10, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    if-nez v0, :cond_37

    if-eqz v10, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "replaceToNewNoti : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-eqz v0, :cond_33

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->expireNotiLighting(Ljava/lang/String;)V

    :cond_33
    iput-object v1, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "startNotification: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    invoke-static {v0, v9, v4}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$misNeedToBlockedByPolicy(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, " +isBlockedByPolicy"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mNotificationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->flushNotiNow()V

    goto :goto_10

    :cond_34
    iget-object v4, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v5, v4, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v5}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    move-result v6

    if-eq v6, v13, :cond_35

    const/4 v8, 0x2

    if-eq v6, v8, :cond_36

    iput-object v5, v4, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-static {v0, v12}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    goto :goto_f

    :cond_35
    iput-object v5, v4, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    :cond_36
    const-string v0, " +ShowWithTurnOver"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_28

    :cond_37
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    if-nez v0, :cond_38

    goto/16 :goto_12

    :cond_38
    iget-object v11, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    goto/16 :goto_12

    :cond_39
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v11

    sget-boolean v14, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    const-string v15, "LightingScheduleInfo"

    if-eqz v14, :cond_3a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, " getVisibility : "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " preVisibility : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " getReason : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    if-eqz v11, :cond_3b

    if-ne v11, v13, :cond_3d

    :cond_3b
    iget v8, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    if-eq v8, v13, :cond_3d

    iget-object v8, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_3c

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v12, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v12, v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_3c
    iget-object v8, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v8}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_3d

    const-string v12, "noti_visiblity"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3d
    iget v8, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    if-eq v8, v6, :cond_3e

    if-eq v8, v5, :cond_3e

    goto :goto_11

    :cond_3e
    iput v8, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    :goto_11
    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-virtual {v5, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isTextDirty()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    if-nez v5, :cond_40

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3f

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_3f
    const-string v6, "flag"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    or-int/2addr v8, v11

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v6, v5}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    :cond_40
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_41

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v5

    if-nez v5, :cond_41

    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v5}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_41

    const-string v6, "content_intent"

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_41
    if-eqz v14, :cond_42

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "mergeInfo tick="

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-virtual {v5}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " dirty="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v5, " vis="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_12
    if-eqz v10, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCurrentNoti : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->toString(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iput-object v1, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;

    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$4;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    if-ne v0, v13, :cond_44

    move v0, v13

    goto :goto_13

    :cond_44
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_45

    const-string/jumbo v0, "updateText: restart edge lighting for turn over"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v13}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$mstartNotiEffect(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Z)V

    goto/16 :goto_28

    :cond_45
    iget v0, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    invoke-static {v2, v9, v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->-$$Nest$misNeedToBlockedByPolicy(Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string/jumbo v0, "updateText: skip by Blocking Policy"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :cond_46
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "updateNotiText: isDirty = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isScreenOn()Z

    move-result v0

    new-instance v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    invoke-direct {v5}, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;-><init>()V

    iget-object v6, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v6}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_47

    const-string v8, "noti_actions"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_47

    goto :goto_14

    :cond_47
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_48

    move v6, v13

    goto :goto_15

    :cond_48
    const/4 v6, 0x0

    :goto_15
    iput-boolean v6, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mHasActionButton:Z

    const-string v6, " dur="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v6, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v6}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isSensitiveStateActive()Z

    move-result v6

    iget-object v8, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getUserId()I

    move-result v11

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v12

    invoke-virtual {v8, v11, v12, v10}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isNeedToSanitized(IILjava/lang/String;)Z

    move-result v8

    iget-object v10, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isSupportAppLock()Z

    move-result v10

    if-eqz v10, :cond_49

    iget-object v10, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v10}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isAppLockEnabled()Z

    move-result v10

    goto :goto_16

    :cond_49
    const/4 v10, 0x0

    :goto_16
    if-eqz v10, :cond_4a

    iget-object v10, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v10, v9}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->shouldHideNotiForAppLockByPackage(Ljava/lang/String;)Z

    move-result v10

    goto :goto_17

    :cond_4a
    const/4 v10, 0x0

    :goto_17
    invoke-virtual {v2, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppIcon(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v11, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v11}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "show_small_icon"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v2, v9, v11}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->isSmallIcon(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsSmallIcon:Z

    iget-object v11, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v11, v11, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    iget-boolean v12, v11, Lcom/android/systemui/edgelighting/EdgeLightingService;->mIsUsingAppIcon:Z

    iput-boolean v12, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsUsingAppIcon:Z

    sget-boolean v12, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    const-string v12, "keyguard"

    invoke-virtual {v11, v12}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    if-eqz v11, :cond_4b

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v11

    if-eqz v11, :cond_4b

    move v11, v13

    goto :goto_18

    :cond_4b
    const/4 v11, 0x0

    :goto_18
    if-eqz v11, :cond_55

    const-string v11, "+locked"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v11, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v11, v11, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v11}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_show_notifications"

    const/4 v14, -0x2

    const/4 v15, 0x0

    invoke-static {v11, v12, v15, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v13, :cond_4c

    move v11, v13

    goto :goto_19

    :cond_4c
    const/4 v11, 0x0

    :goto_19
    if-eqz v11, :cond_58

    iget-object v11, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    iget-object v11, v11, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-virtual {v11}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_allow_private_notifications"

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_4d

    move v11, v13

    goto :goto_1a

    :cond_4d
    const/4 v11, 0x0

    :goto_1a
    iget-object v12, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v12}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_4e

    const-string v14, "package_visiblity"

    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1b

    :cond_4e
    const/16 v12, -0x3e8

    :goto_1b
    if-nez v12, :cond_4f

    move v12, v13

    goto :goto_1c

    :cond_4f
    const/4 v12, 0x0

    :goto_1c
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v14

    if-nez v8, :cond_51

    if-eqz v14, :cond_51

    const/4 v8, -0x1

    if-eq v14, v8, :cond_51

    if-nez v11, :cond_51

    if-nez v12, :cond_51

    if-nez v6, :cond_51

    if-eqz v10, :cond_50

    goto :goto_1d

    :cond_50
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    goto :goto_1e

    :cond_51
    :goto_1d
    invoke-virtual {v2, v9}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "Not showing edgelighting because suppressAwakeHeadsUp is true"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    :cond_52
    :goto_1e
    const-string v0, "+notiOn"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " "

    if-eqz v11, :cond_53

    const-string v6, "+hidePriv"

    goto :goto_1f

    :cond_53
    move-object v6, v0

    :goto_1f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v12, :cond_54

    const-string v0, "+hideContentPackageName"

    :cond_54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "notiVisibility : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_55
    if-nez v8, :cond_57

    if-nez v6, :cond_57

    if-eqz v10, :cond_56

    goto :goto_20

    :cond_56
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    goto :goto_21

    :cond_57
    :goto_20
    invoke-virtual {v2, v9}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    :cond_58
    :goto_21
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v6, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v6

    iget-object v8, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsGrayScaled:Z

    iget-object v6, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v6, v6, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotiText()[Ljava/lang/String;

    move-result-object v8

    iget-object v10, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v10}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    move-result-object v10

    invoke-static {v6, v8, v9, v10}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getLightingColor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[I)[I

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    iput-object v0, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v13, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEdgeLightingAction:Z

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mTurnOverEdgeLighting:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    iput-object v9, v5, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->isUIControllerExist()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    invoke-virtual {v0, v6}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    iget-boolean v6, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    iget-object v8, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v8, :cond_5a

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "EdgeLightingDialog"

    const-string/jumbo v5, "updateNotification not showing"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_59
    iget-object v0, v8, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v5}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget-object v0, v8, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v0, v6}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->updateText(Z)V

    iget-object v0, v8, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    invoke-virtual {v0, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_23

    :cond_5a
    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "EffectServiceController"

    const-string v8, "dispatchUpdate"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v0, v6, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    :try_start_1
    const-string v8, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    invoke-static {v8, v13, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_22

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v8, 0x0

    :goto_22
    new-array v0, v13, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v0, v9

    iget-object v5, v5, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v6, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v9, "update"

    invoke-virtual {v6, v8, v9, v0, v5}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    :goto_23
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    int-to-long v5, v0

    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5c

    invoke-virtual {v0, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_5c
    iget-object v0, v2, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5d

    invoke-virtual {v0, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_5d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5e

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_28

    :cond_5e
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_28

    :cond_5f
    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mApplicationLightingScheduler:Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;

    if-eqz v0, :cond_6b

    iget-object v2, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    monitor-enter v2

    :try_start_2
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    iget-object v6, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    if-nez v5, :cond_60

    const-string v0, "ApplicationLightingScheduler"

    const-string v1, "putLighting: no listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto/16 :goto_28

    :catchall_1
    move-exception v0

    goto/16 :goto_27

    :cond_60
    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    iget-object v5, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mLinkedInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    iput-object v1, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mCurrentLightingScheduleInfo:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/ApplicationLightingScheduler;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$3;->this$0:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler;->mRequester:Lcom/android/systemui/edgelighting/EdgeLightingService$4;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/systemui/edgelighting/EdgeLightingService$4;->getUIController(Z)Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    move-result-object v0

    iget-object v1, v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    if-eqz v0, :cond_6a

    iput-boolean v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_61

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    :cond_61
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_63

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v6, :cond_62

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    :cond_62
    new-instance v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    iput-object v6, v5, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    :cond_63
    iget-object v5, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v1, :cond_64

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v6, v1

    if-lez v6, :cond_64

    const/4 v6, 0x0

    aget v8, v1, v6

    or-int/2addr v8, v9

    aget v1, v1, v13

    if-eqz v1, :cond_65

    iget-object v6, v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iput v1, v6, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    goto :goto_25

    :cond_64
    const v8, -0xf0551d

    :cond_65
    :goto_25
    iget-object v1, v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    invoke-virtual {v1, v8}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setMainColor(I)V

    iget-object v1, v5, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->containerAlphaAnimation(FF)V

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    iget-boolean v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    if-eqz v1, :cond_66

    goto/16 :goto_26

    :cond_66
    iput-boolean v13, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_67

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_67
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_68

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_68
    iget-wide v5, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mRotateDuration:J

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->startRotation(J)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mContainer:Landroid/widget/FrameLayout;

    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mStrokeAlpha:F

    iget-wide v6, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->lineDuration:J

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    invoke-static {v1, v5, v6, v7}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    iget v1, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mSubColor:I

    if-eqz v1, :cond_6a

    iget v5, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mMainColor:I

    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_69

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_69
    iget-object v6, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "repeat Color Animation from : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " toColor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v5, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView$1;-><init>(Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6a
    :goto_26
    monitor-exit v2

    goto :goto_28

    :goto_27
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6b
    :goto_28
    return-void
.end method
