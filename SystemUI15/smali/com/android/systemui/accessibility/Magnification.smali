.class public final Lcom/android/systemui/accessibility/Magnification;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field static final DELAY_SHOW_MAGNIFICATION_TIMEOUT_MS:I = 0x12c


# instance fields
.field public final mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field mFullscreenMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/systemui/accessibility/Magnification$1;

.field public mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

.field final mMagnificationSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

.field mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;"
        }
    .end annotation
.end field

.field public final mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field mUsersScales:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;"
        }
    .end annotation
.end field

.field final mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/accessibility/ModeSwitchesController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/DisplayTracker;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/accessibility/AccessibilityLogger;Landroid/view/IWindowManager;)V
    .locals 13

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/accessibility/Magnification;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/accessibility/ModeSwitchesController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/DisplayTracker;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/accessibility/AccessibilityLogger;Landroid/view/IWindowManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/accessibility/ModeSwitchesController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/DisplayTracker;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/accessibility/AccessibilityLogger;Landroid/view/IWindowManager;)V
    .locals 14

    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mUsersScales:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/systemui/accessibility/Magnification$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/accessibility/Magnification$3;-><init>(Lcom/android/systemui/accessibility/Magnification;)V

    iput-object v4, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnifierCallback:Lcom/android/systemui/accessibility/WindowMagnifierCallback;

    new-instance v10, Lcom/android/systemui/accessibility/Magnification$4;

    invoke-direct {v10, p0}, Lcom/android/systemui/accessibility/Magnification$4;-><init>(Lcom/android/systemui/accessibility/Magnification;)V

    iput-object v10, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsControllerCallback:Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;

    new-instance v11, Lcom/android/systemui/accessibility/Magnification$1;

    move-object/from16 v1, p2

    invoke-direct {v11, p0, v1}, Lcom/android/systemui/accessibility/Magnification$1;-><init>(Lcom/android/systemui/accessibility/Magnification;Landroid/os/Looper;)V

    iput-object v11, v0, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    move-object/from16 v12, p3

    iput-object v12, v0, Lcom/android/systemui/accessibility/Magnification;->mExecutor:Ljava/util/concurrent/Executor;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v9, v0, Lcom/android/systemui/accessibility/Magnification;->mModeSwitchesController:Lcom/android/systemui/accessibility/ModeSwitchesController;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/systemui/accessibility/Magnification;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mA11yLogger:Lcom/android/systemui/accessibility/AccessibilityLogger;

    new-instance v13, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;

    move-object v1, v13

    move-object v2, p1

    move-object v3, v11

    move-object/from16 v5, p10

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/accessibility/Magnification$WindowMagnificationControllerSupplier;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/WindowMagnifierCallback;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/util/settings/SecureSettings;)V

    iput-object v13, v0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    new-instance v7, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;

    move-object v1, v7

    move-object/from16 v3, p10

    move-object v4, v11

    move-object/from16 v5, p3

    move-object/from16 v6, p12

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/accessibility/Magnification$FullscreenMagnificationControllerSupplier;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/IWindowManager;)V

    iput-object v7, v0, Lcom/android/systemui/accessibility/Magnification;->mFullscreenMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    new-instance v1, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;

    move-object/from16 v2, p8

    invoke-direct {v1, p1, v10, v3, v2}, Lcom/android/systemui/accessibility/Magnification$SettingsSupplier;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/MagnificationSettingsController$Callback;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/settings/SecureSettings;)V

    iput-object v1, v0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    new-instance v1, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/Magnification;)V

    iput-object v1, v9, Lcom/android/systemui/accessibility/ModeSwitchesController;->mClickListenerDelegate:Lcom/android/systemui/accessibility/MagnificationModeSwitch$ClickListener;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, "Magnification"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mWindowMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    new-instance p2, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/accessibility/Magnification$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final requestMagnificationConnection(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification;->mHandler:Lcom/android/systemui/accessibility/Magnification$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;-><init>(Lcom/android/systemui/accessibility/Magnification;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/Magnification;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mMagnificationConnectionImpl:Lcom/android/systemui/accessibility/MagnificationConnectionImpl;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/accessibility/Magnification;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    new-instance v0, Lcom/android/systemui/accessibility/Magnification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/Magnification$2;-><init>(Lcom/android/systemui/accessibility/Magnification;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/Magnification;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method
