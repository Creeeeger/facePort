.class public final Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mIWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/IWindowManager;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mIWindowManager:Landroid/view/IWindowManager;

    return-void
.end method


# virtual methods
.method public final createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    const/16 v1, 0x7f0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v4

    new-instance v10, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v10, p0, p1, v0}, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;Landroid/view/Display;I)V

    const p1, 0x7f140600

    invoke-virtual {v4, p1}, Landroid/content/Context;->setTheme(I)V

    new-instance p1, Lcom/android/systemui/accessibility/FullscreenMagnificationController;

    iget-object v6, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mExecutor:Ljava/util/concurrent/Executor;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    iget-object v9, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;->mHandler:Landroid/os/Handler;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/accessibility/FullscreenMagnificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/accessibility/AccessibilityManager;Landroid/view/WindowManager;Landroid/view/IWindowManager;Ljava/util/function/Supplier;)V

    return-object p1
.end method
