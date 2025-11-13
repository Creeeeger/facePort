.class public final Lcom/android/systemui/screenshot/ScreenshotController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotHandler;


# static fields
.field public static mIsAnimationRunning:Z

.field public static mIsSnackBarShowing:Z

.field public static final mShutterEffectLock:Ljava/lang/Object;


# instance fields
.field public final mActionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

.field public final mActionIntentExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

.field public final mActionsController:Lcom/android/systemui/screenshot/ScreenshotActionsController;

.field public final mAnnouncementResolver:Lcom/android/systemui/screenshot/AnnouncementResolver;

.field public final mAssistContentRequester:Lcom/android/systemui/screenshot/AssistContentRequester;

.field public mAttachRequested:Z

.field public final mBgExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/window/WindowContext;

.field public final mCopyBroadcastReceiver:Lcom/android/systemui/screenshot/ScreenshotController$1;

.field public mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

.field public mDetachRequested:Z

.field public final mDisplay:Landroid/view/Display;

.field public mDisplayContextWindowManager:Landroid/view/WindowManager;

.field public final mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

.field public final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field public mNotifiedApps:Ljava/util/List;

.field public mPackageName:Ljava/lang/String;

.field public mPresentation:Landroid/app/Presentation;

.field public mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field public mScreenBitmap:Landroid/graphics/Bitmap;

.field public mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public final mScreenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

.field public final mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

.field public final mScreenshotNotificationSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

.field public mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

.field public final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field public final mScreenshotSoundController:Lcom/android/systemui/screenshot/ScreenshotSoundController;

.field public final mScrollCaptureExecutor:Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;

.field public mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

.field public final mSepImageCaptureImpl:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

.field public mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

.field public final mWindow:Lcom/android/internal/policy/PhoneWindow;

.field public final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ScreenshotViewProxy$Factory;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ImageCapture;Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;Lcom/android/systemui/screenshot/ScreenshotDetectionController;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;Lcom/android/systemui/screenshot/TimeoutHandler;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;Lcom/android/systemui/screenshot/ScreenshotActionsController$Factory;Lcom/android/systemui/screenshot/ActionIntentExecutor;Lcom/android/systemui/screenshot/ActionExecutor$Factory;Landroid/os/UserManager;Lcom/android/systemui/screenshot/AssistContentRequester;Lcom/android/systemui/screenshot/MessageContainerController;Ljavax/inject/Provider;Lcom/android/systemui/screenshot/AnnouncementResolver;Landroid/view/Display;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/screenshot/ScreenshotViewProxy$Factory;",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/screenshot/ImageExporter;",
            "Lcom/android/systemui/screenshot/ImageCapture;",
            "Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;",
            "Lcom/android/systemui/screenshot/ScreenshotDetectionController;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;",
            "Lcom/android/systemui/screenshot/TimeoutHandler;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;",
            "Lcom/android/systemui/screenshot/ScreenshotActionsController$Factory;",
            "Lcom/android/systemui/screenshot/ActionIntentExecutor;",
            "Lcom/android/systemui/screenshot/ActionExecutor$Factory;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/screenshot/AssistContentRequester;",
            "Lcom/android/systemui/screenshot/MessageContainerController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/screenshot/AnnouncementResolver;",
            "Landroid/view/Display;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p14

    move-object/from16 v3, p23

    move-object/from16 v4, p26

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v5, ""

    iput-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    new-instance v5, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v6, -0x7fffdc7c

    invoke-direct {v5, v6}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotifiedApps:Ljava/util/List;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    invoke-virtual/range {p26 .. p26}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;->create(I)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v6, p8

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureExecutor:Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotNotificationSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    const/16 v7, 0x1770

    iput v7, v2, Lcom/android/systemui/screenshot/TimeoutHandler;->mDefaultTimeout:I

    iput-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplay:Landroid/view/Display;

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    move-object v7, p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v8

    const/16 v9, 0x7f4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/window/WindowContext;

    iput-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v9, p19

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mActionIntentExecutor:Lcom/android/systemui/screenshot/ActionIntentExecutor;

    move-object/from16 v9, p21

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUserManager:Landroid/os/UserManager;

    iput-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

    move-object/from16 v9, p22

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mAssistContentRequester:Lcom/android/systemui/screenshot/AssistContentRequester;

    move-object/from16 v9, p25

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mAnnouncementResolver:Lcom/android/systemui/screenshot/AnnouncementResolver;

    invoke-virtual/range {p26 .. p26}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v11, p4

    invoke-interface {v11, v9, v8}, Lcom/android/systemui/screenshot/ScreenshotViewProxy$Factory;->getProxy(ILandroid/content/Context;)Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    new-instance v11, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    iput-object v11, v2, Lcom/android/systemui/screenshot/TimeoutHandler;->mOnTimeout:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->getFloatingWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v11, "ScreenshotAnimation"

    invoke-virtual {v2, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, v8}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const/16 v11, 0xd

    invoke-virtual {v2, v11}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    const v11, 0x106000d

    invoke-virtual {v2, v11}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawableResource(I)V

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, p2, v10, v10}, Lcom/android/internal/policy/PhoneWindow;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    invoke-interface {v9}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x7f0a0a49

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v3, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    const v5, 0x7f0a04ce

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    iput-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->guideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move-object v1, v10

    :cond_0
    const v5, 0x7f0a0ed6

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    iget-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    move-object v1, v10

    :cond_1
    const v5, 0x7f0a0a42

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    iget-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    move-object v1, v10

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->guideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v1, :cond_3

    move-object v1, v10

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    iget-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    move-object v1, v10

    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v3, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    move-object v1, v10

    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-interface {v9, v1}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->setCallbacks(Lcom/android/systemui/screenshot/ScreenshotController$3;)V

    invoke-interface {v9}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    move-object/from16 v3, p20

    invoke-interface {v3, v2, v9, v1}, Lcom/android/systemui/screenshot/ActionExecutor$Factory;->create(Landroid/view/Window;Lcom/android/systemui/screenshot/ScreenshotViewProxy;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/screenshot/ActionExecutor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mActionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

    move-object/from16 v2, p18

    invoke-interface {v2, v1}, Lcom/android/systemui/screenshot/ScreenshotActionsController$Factory;->getController(Lcom/android/systemui/screenshot/ActionExecutor;)Lcom/android/systemui/screenshot/ScreenshotActionsController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mActionsController:Lcom/android/systemui/screenshot/ScreenshotActionsController;

    invoke-virtual/range {p26 .. p26}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface/range {p24 .. p24}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotSoundController;

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSoundController:Lcom/android/systemui/screenshot/ScreenshotSoundController;

    :goto_0
    move-object/from16 v1, p10

    goto :goto_1

    :cond_6
    iput-object v10, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSoundController:Lcom/android/systemui/screenshot/ScreenshotSoundController;

    goto :goto_0

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSepImageCaptureImpl:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    new-instance v1, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    invoke-direct {v1, v8}, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    sput-boolean v7, Lcom/android/systemui/screenshot/ScreenshotController;->mIsAnimationRunning:Z

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotController$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iput-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCopyBroadcastReceiver:Lcom/android/systemui/screenshot/ScreenshotController$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.COPY"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string v5, "com.android.systemui.permission.SELF"

    move-object/from16 p0, p16

    move-object p1, v1

    move-object p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-virtual/range {p0 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final attachSemScreenshotLayoutToWindow()V
    .locals 8

    const-string v0, "mScreenshotLayout "

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "Screenshot"

    const-string v3, "attachSemScreenshotLayoutToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-static {v2}, Lcom/android/systemui/screenshot/sep/ScreenshotViewUtils;->getLayoutParams(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "ScreenshotAnimation"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v4, v4, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenDegrees:F

    const v5, 0x7f0a0eae

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v4, v3, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenDegrees:F

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    invoke-static {v3}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-virtual {v4, v5}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->addCaptureEffectViewInLayout(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/app/Presentation;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    const/16 v6, 0x968

    const v7, 0x7f14055b

    invoke-direct {v4, v5, v3, v7, v6}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    iput-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v4}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x4200588

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    or-int/lit16 v5, v5, 0x402

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v3, v4, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->show()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-virtual {v3, v4}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->addCaptureEffectViewInLayout(Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayContextWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v3, "Screenshot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final detachSemScreenshotLayoutToWindow()V
    .locals 2

    const-string v0, "Screenshot"

    const-string v1, "detachSemScreenshotLayoutToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayContextWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final finishDismiss()V
    .locals 5

    const-string v0, "finishDismiss"

    const-string v1, "Screenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mActionsController:Lcom/android/systemui/screenshot/ScreenshotActionsController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScrollCaptureExecutor:Lcom/android/systemui/screenshot/scroll/ScrollCaptureExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    sget-boolean v3, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ignored remote exception"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    invoke-interface {v0}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "handleScreenshot: screenshot.getType()="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    const-string v8, "Screenshot"

    invoke-static {v7, v8, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, v2, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    const/4 v9, 0x0

    if-ne v0, v4, :cond_3

    iget-boolean v10, v2, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    if-nez v10, :cond_0

    iget-boolean v10, v2, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    if-eqz v10, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "handleScreenshot: disable screenshot on managed profile., disableCapture="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", secureLayer="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v2, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v2, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    if-eqz v0, :cond_1

    const/16 v7, 0x20

    goto :goto_0

    :cond_1
    const/16 v7, 0x10

    :goto_0
    new-instance v0, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    invoke-direct {v0, v9, v7, v9, v9}, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenshot/ScreenshotController;->showScreenshotErrorMessage(Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    :cond_2
    return-void

    :cond_3
    const/16 v10, 0x64

    if-eq v0, v6, :cond_5

    if-eq v0, v3, :cond_5

    if-eq v0, v10, :cond_5

    const/16 v11, 0x65

    if-ne v0, v11, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v1

    move-object v1, v2

    move-object v3, v8

    goto/16 :goto_11

    :cond_5
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v11, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v11, v5, v5, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    if-nez v0, :cond_7

    const-string v0, "handleScreenshot: mScreenCaptureHelper was null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    :cond_6
    return-void

    :cond_7
    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v12, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v13, v1, Lcom/android/systemui/screenshot/ScreenshotController;->mSepImageCaptureImpl:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    iget-object v14, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    if-eqz v14, :cond_a

    invoke-static {v14}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->isEdgePanelPresent(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->HANDLER_TRANSPARENCY_CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_b

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_9
    move v15, v5

    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a
    sget-object v14, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->HANDLER_TRANSPARENCY_CONTENT_URI:Landroid/net/Uri;

    :cond_b
    :goto_4
    move v15, v5

    :goto_5
    iget-object v14, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->isEdgePanelPresent(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_c

    const-string v9, "Hide edge panel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v14}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->resetEdgeTransparency(ILandroid/content/Context;)V

    const-wide/16 v16, 0x64

    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    const-string v9, "InterruptedException occurred"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    const-string/jumbo v9, "semCaptureDisplay: takeScreenshot result, bitmapIsNull="

    iget v14, v12, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    iget v7, v12, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    invoke-virtual {v12}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    move-result-object v10

    iget v3, v12, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget v4, v12, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    iget-object v6, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v1, -0x2

    const-string v2, "any_screen_running"

    invoke-static {v6, v2, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    iget-object v1, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reduce_screen_running_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getOneHandModeInfo() reduce_screen_running_info :"

    invoke-static {v2, v1, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, ";"

    invoke-direct {v2, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    move v1, v5

    move v6, v1

    :goto_7
    int-to-float v1, v1

    int-to-float v6, v6

    move-object/from16 v27, v8

    move/from16 v26, v15

    const/4 v15, 0x3

    new-array v8, v15, [F

    aput v1, v8, v5

    const/4 v1, 0x1

    aput v6, v8, v1

    const/4 v6, 0x2

    aput v2, v8, v6

    aget v2, v8, v5

    float-to-int v2, v2

    aget v15, v8, v1

    float-to-int v1, v15

    int-to-float v15, v3

    aget v8, v8, v6

    mul-float/2addr v15, v8

    float-to-int v6, v15

    add-int/2addr v6, v2

    int-to-float v15, v4

    mul-float/2addr v15, v8

    float-to-int v8, v15

    add-int/2addr v8, v1

    invoke-virtual {v10, v2, v1, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0xa28

    const/4 v2, 0x1

    :goto_8
    const/16 v6, 0x64

    goto :goto_9

    :cond_e
    move-object/from16 v27, v8

    move/from16 v26, v15

    const/16 v1, 0x7df

    move v2, v5

    goto :goto_8

    :goto_9
    if-ne v7, v6, :cond_f

    const/4 v1, 0x1

    :cond_f
    const-string/jumbo v6, "semCaptureDisplay: takeScreenshot param, builtInDisplayId="

    const-string v7, ", targetWindowType="

    const-string v8, ", containTargetWindow="

    invoke-static {v14, v1, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", rectToCapture="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v6, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->windowManager:Landroid/view/IWindowManager;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v23, 0x0

    move-object/from16 v16, v6

    move/from16 v17, v14

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-interface/range {v16 .. v25}, Landroid/view/IWindowManager;->takeScreenshotToTargetWindowFromCapture(IIZLandroid/graphics/Rect;IIZZZ)Lcom/samsung/android/view/ScreenshotResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getFailedReason()I

    move-result v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getSecuredWindowName()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v1}, Lcom/samsung/android/view/ScreenshotResult;->getTargetWindowName()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v2, :cond_10

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    move v6, v5

    :goto_a
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", failedReason="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", resultSecuredWindowName="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", resultTargetWindowName="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x20

    if-ne v3, v6, :cond_12

    iget-object v6, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string/jumbo v0, "semCaptureDisplay: screenshot disabled by dpm."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_11
    iget-object v6, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/screenshot/sep/EdmUtils;->isScreenCaptureEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v13, v0, v11}, Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureDisplay(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    :catch_1
    const/4 v1, 0x0

    goto :goto_d

    :catch_2
    :goto_b
    const/4 v1, 0x0

    :goto_c
    const/4 v4, 0x0

    goto :goto_d

    :catch_3
    move v3, v5

    goto :goto_b

    :catch_4
    move v3, v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_c

    :catch_5
    :goto_d
    const-string v0, "RemoteException is occurred."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_e
    const-string/jumbo v0, "useIdentityTransform=false"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_13

    invoke-virtual {v12, v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    :goto_f
    new-instance v2, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->isEdgePanelPresent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "Show edge panel"

    move-object/from16 v3, v27

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v15, v26

    invoke-static {v15, v0}, Lcom/android/systemui/screenshot/sep/AliveShotImageUtils;->resetEdgeTransparency(ILandroid/content/Context;)V

    goto :goto_10

    :cond_14
    move-object/from16 v3, v27

    :goto_10
    iget-object v0, v2, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_16

    const-string v0, "handleScreenshot: Screenshot bitmap was null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    invoke-virtual {v4, v2}, Lcom/android/systemui/screenshot/ScreenshotController;->showScreenshotErrorMessage(Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    if-eqz v0, :cond_15

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    :cond_15
    return-void

    :cond_16
    move-object/from16 v4, p0

    iput-object v11, v1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    :goto_11
    const-string v0, "on getWebData()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ScreenshotController_getWebData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    const-string v0, "on getSmartClipWebData()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    :try_start_7
    new-instance v2, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v0

    const-string v2, "isMultiWindowStyleAppExist : mode = "

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_23

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    iget-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v6, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenWidth:I

    iget v2, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenHeight:I

    const/4 v7, 0x2

    div-int/2addr v6, v7

    div-int/2addr v2, v7

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x1

    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-direct {v7, v6, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string/jumbo v2, "spengestureservice"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v8, v8}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "getWebData : Failed to extract the SmartClip data"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_12
    move-object v2, v9

    goto/16 :goto_18

    :cond_18
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getWebData : content Rect w="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->size()I

    move-result v6

    if-lez v6, :cond_17

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "https://"

    const-string v8, "http://"

    if-eqz v6, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_13

    :cond_1b
    move-object v6, v9

    :cond_1c
    :goto_13
    new-instance v2, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v6, v2, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    if-nez v6, :cond_1d

    goto :goto_16

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_14

    :cond_1e
    const-string v0, "isValidWebData : Not valid url"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_1f
    :goto_14
    sget-object v0, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor;->mWhiteWebAppList:[Ljava/lang/String;

    move v7, v5

    :goto_15
    const/4 v8, 0x3

    if-ge v7, v8, :cond_21

    aget-object v8, v0, v7

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_20

    goto :goto_18

    :cond_20
    add-int/2addr v7, v10

    goto :goto_15

    :cond_21
    const-string v0, "isValidWebData : Not white app"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_22
    :goto_16
    const-string v0, "isValidWebData : url or appPkgName is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    const-string v0, "getWebData : Invalid web data"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :goto_18
    if-eqz v2, :cond_27

    const-string v0, "handleScreenshot: mWebData is extracted from SmartClip"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_23
    const/4 v2, 0x1

    const/4 v9, 0x0

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_24

    const-string v2, "isMultiWindowStyleAppExist : MODE_FREEFORM"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_25

    const-string v2, "isMultiWindowStyleAppExist : MODE_PICTURE_IN_PICTURE"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_26

    const-string v0, "isMultiWindowStyleAppExist : MODE_SPLIT_SCREEN"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-string v0, "canExtractWebData : MultiWindow style app exists"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_6
    move-exception v0

    const/4 v9, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "isSupportSmartClip, exxception occurred : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "canExtractWebData : SmartClip is not supported"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_19
    move-object v2, v9

    :goto_1a
    iput-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    if-nez v2, :cond_29

    iget v0, v1, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    if-gez v0, :cond_28

    goto :goto_1b

    :cond_28
    const-string v0, "on getAssistContentWebData"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget v2, v1, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;-><init>(Ljava/util/concurrent/CompletableFuture;Lcom/android/systemui/screenshot/ScreenshotData;)V

    iget-object v7, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mAssistContentRequester:Lcom/android/systemui/screenshot/AssistContentRequester;

    iget-object v8, v7, Lcom/android/systemui/screenshot/AssistContentRequester;->mSystemInteractionExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7, v6, v2}, Lcom/android/systemui/screenshot/AssistContentRequester$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/AssistContentRequester;Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda10;I)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-object v9, v0

    goto :goto_1b

    :catch_7
    move-exception v0

    const-string v2, "exception on getAssistContentWebData"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    iput-object v9, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    :cond_29
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotDetectionController;->maybeNotifyOfScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mNotifiedApps:Ljava/util/List;

    iget-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.systemui.SCREENSHOT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v6, v2}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast$1(Landroid/content/Intent;)V

    iget-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {v2}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;

    const/4 v6, 0x1

    invoke-direct {v2, v4, v1, v6}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V

    iget-object v6, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->run()V

    goto :goto_1c

    :cond_2a
    invoke-virtual {v6}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/screenshot/ScreenshotController$5;

    invoke-direct {v8, v4, v6, v2}, Lcom/android/systemui/screenshot/ScreenshotController$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :goto_1c
    iget-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    invoke-interface {v2}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->reset()V

    invoke-interface {v2}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v2}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->isDismissing()Z

    move-result v6

    if-nez v6, :cond_2b

    iget-object v6, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v7, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v6, v7, v5, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_2b
    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->setPackageName(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->updateOrientation(Landroid/view/WindowInsets;)V

    iget-object v2, v1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    :try_start_9
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object v0

    const-string/jumbo v6, "restriction_property_screencapture_save_to_owner"

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "Save screenshot to owner policy is enabled!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_1d

    :catch_8
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_1d
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    const/4 v6, 0x2

    invoke-direct {v0, v4, v6}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    const/4 v7, 0x3

    invoke-direct {v6, v4, v7}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    new-instance v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    invoke-direct {v13}, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;-><init>()V

    iget-object v7, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v7, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v7, p2

    iput-object v7, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    iput-object v0, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    iput-object v6, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mQuickShareActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    iput-object v2, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->owner:Landroid/os/UserHandle;

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->displayId:I

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iput-object v0, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->captureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWebData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    iput-object v0, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/sep/SmartClipDataExtractor$WebData;

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mNotifiedApps:Ljava/util/List;

    iput-object v0, v13, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->notifiedApps:Ljava/util/List;

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    if-eqz v0, :cond_2d

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iput-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    :cond_2d
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object v9, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    iget-object v12, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object v14, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotNotificationSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    iget-object v10, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v11, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)V

    iput-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v2, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isShowScreenshotAnimation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachSemScreenshotLayoutToWindow()V

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v4, v1, v5}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    :cond_2e
    const-string v0, "Animation is disabled or not applicable"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->semPlayCameraSound()V

    :goto_1e
    iget-object v0, v4, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-static {}, Lcom/android/systemui/Flags;->screenshotShelfUi2()V

    return-void
.end method

.method public final logSuccessOnActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->owner:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    const p1, 0x7f131007

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDetachRequested:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mAttachRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDetachRequested:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mDetachRequested:Z

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/screenshot/ScreenshotController$5;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mViewProxy:Lcom/android/systemui/screenshot/ScreenshotViewProxy;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScreenshotViewProxy;->stopInputListening()V

    return-void
.end method

.method public final showScreenshotErrorMessage(Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/systemui/screenshot/ScreenshotController;->mIsSnackBarShowing:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->attachSemScreenshotLayoutToWindow()V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    :goto_0
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/view/View;Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
