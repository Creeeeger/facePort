.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final effect:Landroid/os/VibrationEffect;

.field public final mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field public final mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mVibrator:Landroid/os/Vibrator;

    const/16 p1, 0x1b

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const/4 p2, -0x1

    sget-object v0, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->effect:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final alphaAnimatedMainView(JLandroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 8

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;Landroid/view/View;J)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p5, v1, v2

    const/4 p5, 0x1

    aput p6, v1, p5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-object p1
.end method

.method public final performDismissAllAnimations(Ljava/lang/Runnable;)V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "performDismissAllAnimations() dismiss list size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubscreenSubRoomNotificaitonAnimatorManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v3, -0x1

    const/16 v6, 0x8c

    const/16 v7, 0xb4

    move v8, v0

    :goto_0
    if-ltz v4, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v4, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid dismiss position. size = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-eqz v4, :cond_2

    add-int/lit8 v10, v3, -0x5

    if-ne v4, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isHapticFeedbackEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mVibrator:Landroid/os/Vibrator;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v8, v10}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_3
    move-object v10, p1

    move v8, v1

    :goto_2
    iget-object v11, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/lit8 v12, v12, 0x64

    int-to-float v12, v12

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeCleared(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v12, 0x0

    :cond_4
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v13, v1, [F

    aput v12, v13, v0

    invoke-static {v11, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    sget-object v11, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v11}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0xc8

    invoke-virtual {v9, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-lez v7, :cond_5

    int-to-long v11, v7

    invoke-virtual {v9, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_5
    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$1;

    invoke-direct {v11, p0, v10}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    add-int/lit8 v6, v6, -0xa

    const/16 v9, 0x32

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v7, v6

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final replyButtonAnimated(Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0;FFFF)V
    .locals 6

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v4, 0x1

    aput p4, v2, v4

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput p3, v5, v3

    aput p4, v5, v4

    invoke-static {p1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v1, [F

    aput p5, v2, v3

    aput p6, v2, v4

    invoke-static {p1, p4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p4, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p5, 0x3

    new-array p5, p5, [Landroid/animation/Animator;

    aput-object v0, p5, v3

    aput-object p3, p5, v4

    aput-object p1, p5, v1

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p5, 0xc8

    invoke-virtual {p4, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 p5, 0x0

    invoke-virtual {p4, p5, p6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$4;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
