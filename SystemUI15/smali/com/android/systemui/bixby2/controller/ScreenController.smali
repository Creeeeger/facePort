.class public Lcom/android/systemui/bixby2/controller/ScreenController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final ACTION_BIXBY_STATE:Ljava/lang/String; = "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

.field private static final ACTION_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.ScreenshotExecutor"

.field private static final ACTION_SCREENSHOT_URI:Ljava/lang/String; = "com.samsung.android.systemui.screenshot.SCREENSHOT_URI"

.field private static final BIXBY_3_0_MIN_VERSION_CODE:I = 0x15752a00

.field private static final BIXBY_CLIENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final BIXBY_VIEW_ATTACHED:I = 0x1

.field private static final BIXBY_VIEW_DETACHED:I = 0x0

.field public static final EXTRA_BIXBY_VIEW_STATE:Ljava/lang/String; = "com.samsung.android.bixby.intent.extra.VIEW_STATE"

.field private static final EXTRA_CONTENT_URI:Ljava/lang/String; = "contentUri"

.field private static final MAX_WAIT_COUNT:I = 0xa

.field private static final PERMISSION_CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field private static final PERMISSION_RECEIVE_SCREENSHOT_URI:Ljava/lang/String; = "com.samsung.android.systemui.screenshot.permission.RECEIVE_SCREENSHOT_URI"

.field private static final SCREENSHOT_ORIGIN_BIXBY:I = 0x5

.field private static final SCROLL_OFFSET:F = 1600.0f

.field private static final SEND_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ScreenController"

.field private static final TRY_COUNT:I = 0xf

.field private static final TRY_DELAY_TIME:I = 0x1f4

.field private static final TRY_INTERVAL:I = 0x12c

.field private static final WAIT_INTERVAL:I = 0x1f4


# instance fields
.field private final mBrightnessHandler:Landroid/os/Handler;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCurBixbyState:I

.field private final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private mIsScreenshotUriReceived:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenCaptureHandler:Landroid/os/Handler;

.field private final mScreenScrollHandler:Landroid/os/Handler;

.field private mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

.field private mScreenshotUri:Ljava/lang/String;

.field private mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

.field private final mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field private mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

.field private mTryCount:I

.field private mWinodwManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$1st-2vsW79iYGTsLxcUb1rfk1ZQ(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->lambda$sendScreenShotBroadcast$0(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessMirrorController(Lcom/android/systemui/bixby2/controller/ScreenController;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mCurBixbyState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstrumentation(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/app/Instrumentation;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mInstrumentation:Landroid/app/Instrumentation;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenScrollHandler(Lcom/android/systemui/bixby2/controller/ScreenController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenshotUri(Lcom/android/systemui/bixby2/controller/ScreenController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenshotUri:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurBixbyState(Lcom/android/systemui/bixby2/controller/ScreenController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mCurBixbyState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsScreenshotUriReceived(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mIsScreenshotUriReceived:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenScrollRunnable(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenshotUri(Lcom/android/systemui/bixby2/controller/ScreenController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenshotUri:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTryCount(Lcom/android/systemui/bixby2/controller/ScreenController;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$misFolderClosed(Lcom/android/systemui/bixby2/controller/ScreenController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mscrollTo(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;FII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/bixby2/controller/ScreenController;->scrollTo(Landroid/content/Context;FII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendBackKey(Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenCaptureHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenshotUri:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mIsScreenshotUriReceived:Z

    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$5;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p3, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p4, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->registerBroadCastReceiver()V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ScreenCaptureThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenCaptureHandler:Landroid/os/Handler;

    return-void
.end method

.method private getBrightnessSeekBar()Landroid/widget/SeekBar;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SecBrightnessMirrorControllerProvider;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mSecBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p0

    return-object p0
.end method

.method private getDisplaySizeInPixels(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_0
    return-object p0
.end method

.method private getScreenshotResponse(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->isSupportedBixby3(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo p1, "success"

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mIsScreenshotUriReceived:Z

    if-nez v1, :cond_1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getScreenshotResponse() : Exception : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenshotUri:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method private injectMotionEvent(Landroid/content/Context;FFJI)V
    .locals 18

    const/4 v0, 0x2

    new-array v7, v0, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    iput v15, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aput-object v1, v7, v15

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v1, p2

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v1, p3

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v5, p6

    if-ne v5, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    aput-object v0, v8, v15

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d4c0

    const/high16 v14, 0x800000

    if-ge v0, v1, :cond_1

    const/high16 v0, -0x80000000

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    move/from16 v16, v14

    :goto_1
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x4

    const/16 v17, 0x0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v14, v17

    move v15, v0

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setFlags(I)V

    const-string v1, "input"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private isDesktopMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ScreenController"

    const-string v0, "It is dex mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isFolderClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isPanelBarExpanded(Landroid/content/Context;)Z
    .locals 0

    const-class p0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedBixby3(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.samsung.android.bixby.agent"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x15752a00

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSupportedBixby3() : e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method private static synthetic lambda$sendScreenShotBroadcast$0(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.samsung.permission.CAPTURE"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private lerp(FFF)F
    .locals 0

    invoke-static {p2, p1, p3, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p0

    return p0
.end method

.method private registerBroadCastReceiver()V
    .locals 10

    const-string v0, "com.samsung.android.bixby.intent.action.CLIENT_VIEW_STATE_UPDATED"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string p0, "com.samsung.android.systemui.screenshot.SCREENSHOT_URI"

    invoke-direct {v5, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    const-string v9, "com.samsung.android.systemui.screenshot.permission.RECEIVE_SCREENSHOT_URI"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    return-void
.end method

.method private scrollTo(Landroid/content/Context;FII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v8, p3

    move/from16 v9, p4

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getDisplaySizeInPixels(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    const/4 v10, 0x5

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v9, v10, :cond_0

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float v1, v1

    div-float/2addr v1, v2

    move v11, v1

    move v12, v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v11

    move-wide v5, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bixby2/controller/ScreenController;->injectMotionEvent(Landroid/content/Context;FFJI)V

    int-to-long v1, v8

    add-long v15, v13, v1

    if-ge v9, v10, :cond_1

    add-float v1, v11, p2

    move v10, v1

    move v9, v12

    :goto_2
    move-wide v5, v13

    goto :goto_3

    :cond_1
    add-float v1, v12, p2

    move v9, v1

    move v10, v11

    goto :goto_2

    :goto_3
    cmp-long v1, v5, v15

    if-gez v1, :cond_2

    sub-long v1, v5, v13

    long-to-float v1, v1

    int-to-float v2, v8

    div-float/2addr v1, v2

    invoke-direct {v0, v12, v9, v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->lerp(FFF)F

    move-result v3

    invoke-direct {v0, v11, v10, v1}, Lcom/android/systemui/bixby2/controller/ScreenController;->lerp(FFF)F

    move-result v4

    const/4 v7, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bixby2/controller/ScreenController;->injectMotionEvent(Landroid/content/Context;FFJI)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/bixby2/controller/ScreenController;->injectMotionEvent(Landroid/content/Context;FFJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private sendBackKey(I)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/bixby2/controller/ScreenController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController$3;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "ScreenController"

    const-string v1, "start screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenCaptureHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/bixby2/controller/ScreenController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startScreenScrollRunnable(Landroid/content/Context;FII)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mTryCount:I

    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/content/Context;FII)V

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollRunnable:Lcom/android/systemui/bixby2/controller/ScreenController$ScreenScrollRunnable;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mScreenScrollHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "ScreenController"

    const-string p1, "Another ScreenScroll is doing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startSubHomeActivity(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$1;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public closePanelScreen(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->isPanelBarExpanded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/bixby2/controller/ScreenController$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/bixby2/controller/ScreenController$4;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Lcom/android/internal/statusbar/IStatusBarService;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public getBrightnessBarInfo(Landroid/content/Context;)[I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessSeekBar()Landroid/widget/SeekBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p0

    sub-int/2addr v1, p0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    const/4 v0, 0x5

    :goto_0
    filled-new-array {p1, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public goToHomeScreen(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    const-string v1, "ScreenController"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "goToSubHomeScreen()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->startSubHomeActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "goToHomeScreen()"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_close_all_open_views"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "sub_screen_brightness_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string p1, "SUB_SCREEN_BRIGHTNESS_MODE = "

    const-string v1, "ScreenController"

    invoke-static {p0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public pressBackKey(Landroid/content/Context;)V
    .locals 1

    const-string p1, "ScreenController"

    const-string v0, "pressBackKey()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isFolderClosed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendBackKey(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/bixby2/controller/ScreenController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/controller/ScreenController$2;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public screenScroll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "direction"

    const-string v1, "level"

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    move-object v4, v2

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge p2, v5, :cond_2

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_0
    :goto_1
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    move-object p2, v2

    move-object v2, v4

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v4, v2

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move-object p2, v2

    :goto_4
    const-string/jumbo v0, "up"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const-string v0, "down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_5

    :cond_5
    const-string v0, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_5

    :cond_6
    const-string v0, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    :goto_5
    const-string v1, "max"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/lit8 v0, v0, 0x2

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getDisplaySizeInPixels(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p2, v1

    const v1, 0x481c4000    # 160000.0f

    const v2, -0x37e3c000    # -160000.0f

    const/16 v3, 0x190

    const/16 v4, 0x3e8

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    invoke-direct {p0, p1, v2, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_1
    invoke-direct {p0, p1, v1, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_2
    neg-float p2, p2

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_3
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_4
    invoke-direct {p0, p1, v2, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_5
    invoke-direct {p0, p1, v1, v4, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_6
    neg-float p2, p2

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    goto :goto_6

    :pswitch_7
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->startScreenScrollRunnable(Landroid/content/Context;FII)V

    :goto_6
    return-void

    :cond_8
    const-string p0, "ScreenController"

    const-string p1, "No valid direction"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoBrightnessCover(Landroid/content/Context;Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAutoBrightnessCover enable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z

    move-result p0

    if-ne p0, p2, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x2

    const-string p2, "already_set"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "sub_screen_brightness_mode"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x1

    const-string/jumbo p2, "success"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public setBrightness(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 6

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "ScreenController"

    if-eqz p1, :cond_0

    const-string p0, "setBrightness - Cover is closed so return"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "setBrightness - Brightness seekbar is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setBrightness - current = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMin()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    invoke-static {v3, p2, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-ne p2, v3, :cond_2

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string p1, "already_set"

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "expand panel RemoteException "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/bixby2/controller/ScreenController$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/bixby2/controller/ScreenController$6;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/widget/SeekBar;I)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mBrightnessHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/bixby2/controller/ScreenController$7;

    invoke-direct {p2, p0, v1}, Lcom/android/systemui/bixby2/controller/ScreenController$7;-><init>(Lcom/android/systemui/bixby2/controller/ScreenController;Lcom/android/internal/statusbar/IStatusBarService;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 p1, 0x1

    const-string/jumbo p2, "success"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0

    :catch_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mIsScreenshotUriReceived:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "capturedOrigin"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getScreenshotResponse(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0
.end method

.method public takeScreenShot(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mIsScreenshotUriReceived:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "capturedOrigin"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getScreenshotResponse(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0
.end method

.method public takeScreenShotUri(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController;->mIsScreenshotUriReceived:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "capturedOrigin"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->getScreenshotResponse(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    return-object p0
.end method
