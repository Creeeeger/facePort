.class public final synthetic Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    sget-boolean v2, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v7, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;

    invoke-direct {v7, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;-><init>(Landroid/os/Messenger;)V

    new-instance v6, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-direct {v6, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;-><init>(Landroid/os/Messenger;)V

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/android/internal/util/ScreenshotRequest;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    const-string v3, "capturedDisplay"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v8, Lcom/android/systemui/screenshot/sep/SemScreenCaptureHelperFactory;->INSTANCE:Lcom/android/systemui/screenshot/sep/SemScreenCaptureHelperFactory;

    iget v9, v1, Landroid/os/Message;->what:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    const/16 v8, 0x64

    const/4 v11, 0x2

    if-eq v9, v10, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v8, :cond_1

    const/16 v2, 0x65

    if-eq v9, v2, :cond_0

    new-instance v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForPartial;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForPartial;-><init>()V

    goto :goto_0

    :cond_3
    const-string v9, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v12, "LARGESCREEN"

    invoke-static {v9, v12}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-ne v2, v10, :cond_4

    new-instance v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    :goto_0
    iput-object v2, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v9, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mContext:Landroid/content/Context;

    iget v12, v1, Landroid/os/Message;->arg1:I

    if-lez v12, :cond_5

    move v12, v10

    goto :goto_1

    :cond_5
    move v12, v4

    :goto_1
    iget v1, v1, Landroid/os/Message;->arg2:I

    if-lez v1, :cond_6

    move v1, v10

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    iget-object v13, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->initializeCaptureType()V

    iput-object v13, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v14, "sweepDirection"

    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureSweepDirection:I

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    const-string v3, "capturedOrigin"

    invoke-virtual {v13, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    const-string/jumbo v14, "safeInsetLeft"

    invoke-virtual {v13, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    const-string/jumbo v14, "safeInsetTop"

    invoke-virtual {v13, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    const-string/jumbo v14, "safeInsetRight"

    invoke-virtual {v13, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    const-string/jumbo v14, "safeInsetBottom"

    invoke-virtual {v13, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    const-string v14, "captureSharedBundle"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    iput-object v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    const-string/jumbo v14, "statusBarHeight"

    invoke-virtual {v13, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    const-string v14, "navigationBarHeight"

    invoke-virtual {v13, v14, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    const-string/jumbo v14, "stackBounds"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iput-object v13, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->stackBounds:Landroid/graphics/Rect;

    iput-boolean v12, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    iput-boolean v1, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    iput v10, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->windowMode:I

    iget v1, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    invoke-static {v1, v9}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->initializeScreenshotVariable()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "initialize: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

    iget-object v2, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    check-cast v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    iput-object v2, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    sget-boolean v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    sput-boolean v10, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    :cond_7
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    const-string v2, "Screenshot"

    if-nez v1, :cond_8

    const-string v1, "Skipping screenshot because storage is locked!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    const v1, 0x7f131009

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    goto/16 :goto_7

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "sys.shutdown.requested"

    invoke-static {v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a

    const-string v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "1"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    const-string v2, "Device is in shutdown state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_a
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    iget-object v9, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-static {v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    if-eqz v1, :cond_1b

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x103012b

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1305c5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v7, 0x7f130356

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const v12, 0x7f131005

    if-eqz v9, :cond_c

    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(ILandroid/content/Context;)V

    goto/16 :goto_6

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    iget-object v9, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    const-string/jumbo v13, "storage"

    invoke-virtual {v9, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v9

    iget-object v14, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    if-eqz v9, :cond_d

    const-string v9, "getCapacityState: Usb mass storage is enabled."

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v9, -0x1

    goto :goto_4

    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_e

    const-string v9, "getCapacityState: an external storage directory is null."

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    :try_start_0
    new-instance v15, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v15, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v16

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v18

    mul-long v12, v18, v16

    const-wide/32 v15, 0x200000

    cmp-long v9, v12, v15

    if-gez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "getCapacityState: availableSpace="

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    goto :goto_4

    :cond_f
    move v9, v10

    goto :goto_4

    :catch_0
    const-string v9, "getCapacityState: IllegalArgumentException occurred."

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_4
    if-ne v9, v10, :cond_18

    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    iget-object v9, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    iget-object v12, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "device_provisioned"

    invoke-static {v12, v13, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v9, v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v4, :cond_10

    if-ne v3, v11, :cond_10

    const-string v2, "isPalmScreenshotInSetupWizard: setUpWizardRunning="

    const-string v7, ", origin="

    invoke-static {v4, v3, v2, v7}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_10
    iget-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureType:I

    iget v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v12, 0x3

    if-eqz v9, :cond_17

    const-string v9, "Dex mode"

    const/4 v13, 0x4

    const-string v14, "900"

    const-string v15, "9001"

    if-ne v4, v10, :cond_14

    if-ne v3, v10, :cond_11

    const-string v3, "TPKE"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "HW key"

    invoke-static {v14, v15, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    if-ne v3, v11, :cond_12

    const-string v3, "TPPL"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Palm swipe"

    invoke-static {v14, v15, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    if-ne v3, v12, :cond_13

    const-string v3, "TPQP"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Quick panel"

    invoke-static {v14, v15, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    if-ne v3, v13, :cond_17

    const-string v3, "KNFU"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v14, v15, v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    if-ne v4, v11, :cond_16

    if-ne v3, v13, :cond_15

    const-string v3, "KNPA"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v14, v15, v9}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    const-string v3, "TPPA"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_16
    if-ne v4, v8, :cond_17

    const-string v3, "TPWI"

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/sep/SemScreenshotSaLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    :goto_5
    const-string v1, "Processing screenshot data"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshotsAsync$1;

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshotsAsync$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;Lcom/android/internal/util/ScreenshotRequest;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Ljava/util/function/Consumer;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_7

    :cond_18
    const/4 v2, -0x1

    if-eq v9, v2, :cond_1a

    if-eqz v9, :cond_19

    goto :goto_6

    :cond_19
    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    const v2, 0x7f13100b

    invoke-static {v2, v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(ILandroid/content/Context;)V

    goto :goto_6

    :cond_1a
    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;->context:Landroid/content/Context;

    const v2, 0x7f131005

    invoke-static {v2, v1}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->showToast(ILandroid/content/Context;)V

    :cond_1b
    :goto_6
    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/TakeScreenshotService;->logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    :goto_7
    return v10
.end method
