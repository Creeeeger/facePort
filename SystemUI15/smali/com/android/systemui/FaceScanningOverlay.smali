.class public final Lcom/android/systemui/FaceScanningOverlay;
.super Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public cameraProtectionAnimator:Landroid/animation/ValueAnimator;

.field public cameraProtectionColor:I

.field public faceScanningAnimColor:I

.field public hideOverlayRunnable:Ljava/lang/Runnable;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public rimAnimator:Landroid/animation/AnimatorSet;

.field public final rimPaint:Landroid/graphics/Paint;

.field public rimProgress:F

.field public final rimRect:Landroid/graphics/RectF;

.field public showScanningAnim:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/FaceScanningOverlay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/FaceScanningOverlay$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/FaceScanningOverlay;->Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/FaceScanningOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/systemui/FaceScanningOverlay;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iput-object p7, p0, Lcom/android/systemui/FaceScanningOverlay;->authController:Lcom/android/systemui/biometrics/AuthController;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionColor:I

    const/4 p2, 0x0

    const p3, 0x11200c1

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/FaceScanningOverlay;->faceScanningAnimColor:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final createRimDisappearAnimator(FJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;
    .locals 3

    iget v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/FaceScanningOverlay$createRimDisappearAnimator$1$2;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public final drawCutoutProtection(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    invoke-direct {v0, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    sget-object v2, Lcom/android/systemui/FaceScanningOverlay;->Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

    iget v3, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    invoke-static {v2, v0, v3}, Lcom/android/systemui/FaceScanningOverlay$Companion;->access$scalePath(Lcom/android/systemui/FaceScanningOverlay$Companion;Landroid/graphics/Path;F)V

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/FaceScanningOverlay;->faceScanningAnimColor:I

    iget-object v5, p0, Lcom/android/systemui/FaceScanningOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v5

    const/4 v6, -0x1

    invoke-static {v5, v4, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    sget-object v1, Lcom/android/systemui/FaceScanningOverlay;->Companion:Lcom/android/systemui/FaceScanningOverlay$Companion;

    iget v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    invoke-static {v1, v0, v2}, Lcom/android/systemui/FaceScanningOverlay$Companion;->access$scalePath(Lcom/android/systemui/FaceScanningOverlay$Companion;Landroid/graphics/Path;F)V

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "FaceScanningOverlay:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->dump(Ljava/io/PrintWriter;)V

    iget v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rimProgress="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rimRect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final enableShowProtection(Z)V
    .locals 14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/FaceScanningOverlay;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    move-result v4

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    if-ne v1, v5, :cond_3

    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-object v6, p0, Lcom/android/systemui/FaceScanningOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v7

    iget-object v6, p0, Lcom/android/systemui/FaceScanningOverlay;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v6}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    move-result v8

    iget-boolean v11, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    move v6, v1

    move v9, v4

    move v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/log/ScreenDecorationsLogger;->cameraProtectionShownOrHidden(ZZZZZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    invoke-virtual {p0}, Lcom/android/systemui/FaceScanningOverlay;->updateProtectionBoundingPath()V

    iget-boolean p1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_3
    new-array v6, v0, [F

    aput p1, v6, v3

    aput v1, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x190

    if-eqz v1, :cond_7

    const-wide/16 v10, 0x0

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    move-wide v10, v8

    goto :goto_4

    :cond_8
    move-wide v10, v6

    :goto_4
    invoke-virtual {p1, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-boolean v1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    const-wide/16 v10, 0xfa

    if-eqz v1, :cond_9

    move-wide v12, v10

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    const-wide/16 v12, 0x1f4

    goto :goto_5

    :cond_a
    const-wide/16 v12, 0x12c

    :goto_5
    invoke-virtual {p1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-boolean v1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/app/animation/Interpolators;->STANDARD_ACCELERATE:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    sget-object v1, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_c
    sget-object v1, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$1$2;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    if-eqz p1, :cond_e

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v0, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    aput-object v4, v1, v3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/FaceScanningOverlay$createRimAppearAnimator$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/FaceScanningOverlay$createRimAppearAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_7

    :cond_e
    if-eqz v4, :cond_f

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v0, [Landroid/animation/Animator;

    sget-object v4, Lcom/android/app/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v5, v8, v9, v4}, Lcom/android/systemui/FaceScanningOverlay;->createRimDisappearAnimator(FJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v4, 0xff

    filled-new-array {v4, v3}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/FaceScanningOverlay$createSuccessOpacityAnimator$1$2;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    aput-object v4, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object p1, v1

    goto :goto_7

    :cond_f
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    sget-object v1, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v5, v6, v7, v1}, Lcom/android/systemui/FaceScanningOverlay;->createRimDisappearAnimator(FJLandroid/animation/TimeInterpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionAnimator:Landroid/animation/ValueAnimator;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_7
    iput-object p1, p0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/FaceScanningOverlay$enableShowProtection$2$1;-><init>(Lcom/android/systemui/FaceScanningOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_10
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f900000    # 1.125f
    .end array-data
.end method

.method public final onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBounds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->onMeasure(II)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/FaceScanningOverlay;->showScanningAnim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->union(IIII)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-object v3, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    const-string v4, "onMeasure: Face scanning animation"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/log/ScreenDecorationsLogger;->boundingRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const-string v3, "onMeasure: Display cutout view bounding rect"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/log/ScreenDecorationsLogger;->boundingRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mTotalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const-string v3, "onMeasure: TotalBounds"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/log/ScreenDecorationsLogger;->boundingRect(Landroid/graphics/RectF;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/FaceScanningOverlay;->logger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/systemui/log/ScreenDecorationsLogger;->onMeasureDimensions(IIII)V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->mBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public final setColor$1(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/FaceScanningOverlay;->cameraProtectionColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateProtectionBoundingPath()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/android/systemui/FaceScanningOverlay;->rimProgress:F

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->scale(F)V

    return-void
.end method
