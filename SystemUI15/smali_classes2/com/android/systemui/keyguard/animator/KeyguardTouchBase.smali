.class public abstract Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

.field public static final DEBUG:Z


# instance fields
.field public final context:Landroid/content/Context;

.field public distance:F

.field public hasDozeAmount:Z

.field public intercepting:Z

.field public isDraggingDownStarted:Z

.field public isMultiTouch:Z

.field public isTouching:Z

.field public isUnlockExecuted:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lastMovePos:Landroid/graphics/PointF;

.field public lockEditorTouchSlop:I

.field public longPressAllowHeight:I

.field public swipeUnlockRadius:I

.field public final touchDownPos:Landroid/graphics/PointF;

.field public touchSlop:I

.field public updateDistanceCount:I

.field public userActivityInvokedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    const-string v0, "KeyguardTouchBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lastMovePos:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final getCanBeUnlock()Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_0

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    const-string v5, "canBeUnlock touchStart=("

    const-string v6, ", "

    const-string v7, "), multiTouch="

    invoke-static {v5, v2, v6, v1, v7}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unlockExecuted="

    const-string v5, ", deviceInteractive="

    invoke-static {v1, v4, v2, p0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardTouchBase"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v3
.end method

.method public final initDimens$5()V
    .locals 4

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateAffordace(Landroid/view/DisplayInfo;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b97

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->longPressAllowHeight:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40900000    # 4.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40600000    # 3.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const v2, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const v1, 0x3f333333    # 0.7f

    :goto_0
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    const v2, 0x7f070752

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lockEditorTouchSlop:I

    return-void
.end method

.method public final setDraggingDownStarted(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isDraggingDownStarted:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "setDraggingDownIntercept "

    const-string v1, "KeyguardTouchBase"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isDraggingDownStarted:Z

    return-void
.end method

.method public final setIntercept(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "setIntercept "

    const-string v1, "KeyguardTouchBase"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    return-void
.end method

.method public final setTouch(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "setTouch "

    const-string v1, "KeyguardTouchBase"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    return-void
.end method

.method public updateAffordace(Landroid/view/DisplayInfo;)V
    .locals 0

    return-void
.end method

.method public final updateDistance(Landroid/view/MotionEvent;Z)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->lastMovePos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    sget-boolean v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    const-string/jumbo v1, "updateDistance curX="

    const-string v2, " curY="

    const-string v3, " distance="

    invoke-static {v1, v0, v2, p1, v3}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " fullScreen="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTouchBase"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final userActivityForMove(Ljava/lang/Runnable;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x9c4

    int-to-long v2, v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-wide v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    :cond_0
    return-void
.end method
