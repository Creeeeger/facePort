.class public final Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;
.super Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;-><init>(Landroid/hardware/display/DisplayManager;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iput-object p5, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iput-object p6, p0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    return-void
.end method


# virtual methods
.method public final createInstance(Landroid/view/Display;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/Flags;->createWindowlessWindowMagnifier()V

    const/16 v3, 0x7f0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v6

    const v2, 0x7f140600

    invoke-virtual {v6, v2}, Landroid/content/Context;->setTheme(I)V

    new-instance v14, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;Landroid/view/Display;I)V

    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationController;

    new-instance v8, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    invoke-direct {v8, v6}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v10}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v15, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v15}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    new-instance v16, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier$$ExternalSyntheticLambda1;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iget-object v11, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    iget-object v7, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v13, v0, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/android/systemui/accessibility/WindowMagnificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;Lcom/android/systemui/accessibility/MirrorWindowControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/function/Supplier;Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;Ljava/util/function/Supplier;)V

    return-object v1
.end method
