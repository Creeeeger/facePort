.class public final Lcom/android/systemui/ScreenDecorations$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v0, v0, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "ScreenDecorationsLog"

    const-string v3, "onApplyCameraProtection"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->blockUpdateStatusIconContainerLayout:Z

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean p1, p1, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v2, v0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ScreenDecorations;ZI)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iput-boolean v2, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iput-boolean v2, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/ScreenDecorations;->showCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onHideCameraProtection()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v0, v0, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "ScreenDecorationsLog"

    const-string v3, "onHideCameraProtection"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->blockUpdateStatusIconContainerLayout:Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v0, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ScreenDecorations;ZI)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iput-boolean v1, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iput-boolean v1, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hideCameraProtection()V

    return-void
.end method
