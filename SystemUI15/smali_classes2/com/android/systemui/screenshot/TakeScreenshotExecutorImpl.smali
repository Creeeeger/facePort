.class public final Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/TakeScreenshotExecutor;


# static fields
.field public static final ALLOWED_DISPLAY_TYPES:Ljava/util/List;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final displays:Lkotlinx/coroutines/flow/Flow;

.field public final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field public screenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final screenshotControllerFactory:Lcom/android/systemui/screenshot/ScreenshotController$Factory;

.field public final screenshotRequestProcessor:Lcom/android/systemui/screenshot/ScreenshotRequestProcessor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-string v0, "Screenshot"

    sput-object v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->ALLOWED_DISPLAY_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController$Factory;Lcom/android/systemui/display/data/repository/DisplayRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/screenshot/ScreenshotRequestProcessor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;Lcom/android/systemui/screenshot/HeadlessScreenshotHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotControllerFactory:Lcom/android/systemui/screenshot/ScreenshotController$Factory;

    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotRequestProcessor:Lcom/android/systemui/screenshot/ScreenshotRequestProcessor;

    iput-object p5, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    check-cast p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iget-object p1, p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displays:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->displays:Lkotlinx/coroutines/flow/Flow;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchToController(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p5

    instance-of v3, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;

    iget v4, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    iget-object v2, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v4, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/screenshot/ScreenshotData;

    iget-object v5, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/screenshot/ScreenshotHandler;

    iget-object v3, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v7, v2

    move-object v1, v3

    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v7, v2

    move-object v1, v3

    move-object v2, v4

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotRequestProcessor:Lcom/android/systemui/screenshot/ScreenshotRequestProcessor;

    iput-object v1, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$0:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v5, p1

    :try_start_2
    iput-object v5, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$2:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v7, p3

    :try_start_3
    iput-object v7, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$3:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v8, p4

    :try_start_4
    iput-object v8, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->L$4:Ljava/lang/Object;

    iput v6, v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$dispatchToController$1;->label:I

    check-cast v0, Lcom/android/systemui/screenshot/RequestProcessor;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/screenshot/RequestProcessor;->process(Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_3

    return-object v4

    :cond_3
    :goto_1
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotData;

    sget v3, Lkotlin/Result;->$r8$clinit:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v8, p4

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_3
    move-object/from16 v7, p3

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_3

    :goto_4
    sget v3, Lkotlin/Result;->$r8$clinit:I

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    sget-object v9, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->TAG:Ljava/lang/String;

    const-string v10, "Failed to process screenshot request!"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v9, v2, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    invoke-static {v9}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v4, v10}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->onFailedScreenshotRequest(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    :cond_4
    instance-of v2, v0, Lkotlin/Result$Failure;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    move-object v0, v3

    :cond_5
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotData;

    if-nez v2, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget v9, v2, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    invoke-static {v9}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v4, v10}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Screenshot request: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_5
    sget-boolean v10, Lcom/android/systemui/screenshot/ScreenshotController;->mIsAnimationRunning:Z

    if-eqz v10, :cond_7

    const-string v10, "Screenshot"

    const-string v11, "handleRequest: isAnimationRunning"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_6
    sget-boolean v10, Lcom/android/systemui/screenshot/ScreenshotController;->mIsAnimationRunning:Z

    monitor-exit v9

    if-ne v10, v6, :cond_8

    goto :goto_a

    :goto_7
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :cond_8
    iget-object v9, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    sget-boolean v10, Lcom/android/systemui/screenshot/ScreenshotController;->mIsSnackBarShowing:Z

    if-eqz v10, :cond_9

    const-string v10, "Screenshot"

    const-string v11, "handleRequest: isSnackBarShowing"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_6
    move-exception v0

    goto :goto_9

    :cond_9
    :goto_8
    sget-boolean v10, Lcom/android/systemui/screenshot/ScreenshotController;->mIsSnackBarShowing:Z

    monitor-exit v9

    if-ne v10, v6, :cond_a

    goto :goto_a

    :goto_9
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    :cond_a
    iget v9, v2, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_b

    iget-object v9, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz v9, :cond_b

    iget-object v9, v9, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b

    :goto_a
    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->onFailedScreenshotRequest(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_b
    iget-object v9, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v11, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz v11, :cond_d

    if-nez v9, :cond_c

    move-object v9, v3

    :cond_c
    iput-object v9, v11, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    :cond_d
    if-eqz v11, :cond_f

    iget-object v9, v11, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    if-eqz v9, :cond_e

    const-string v9, "Screenshot"

    const-string v11, "initSemScreenshotLayout: SemScreenshotLayout is already initialized."

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    iget-object v9, v11, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v9, v9, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    new-instance v12, Landroid/view/ContextThemeWrapper;

    const v13, 0x7f14055b

    invoke-direct {v12, v9, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v9, "layout_inflater"

    invoke-virtual {v12, v9}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v12, 0x7f0d01a2

    invoke-virtual {v9, v12, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iput-object v9, v11, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    const v12, 0x7f0a0494

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    iput-object v9, v11, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    invoke-virtual {v9, v6}, Landroid/view/View;->setFocusable(Z)V

    iget-object v9, v11, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    invoke-virtual {v9, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_f
    :goto_b
    iget v9, v2, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    if-ne v9, v10, :cond_15

    const-string v5, "Partial screenshot"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz v0, :cond_14

    iget-object v1, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    if-nez v1, :cond_10

    move-object v1, v3

    :cond_10
    iget-object v1, v1, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$sam$java_util_function_Consumer$0;

    invoke-direct {v5, v7}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$sam$java_util_function_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    iget-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_11

    goto/16 :goto_c

    :cond_11
    iget-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    iget-object v7, v7, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const v16, 0x5080500

    const/16 v17, -0x3

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7f4

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v4, "ScreenshotSelectorView"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object v4, v4, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mScreenshotImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_12

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const-string v6, "Screenshot"

    if-eqz v4, :cond_13

    const-string/jumbo v0, "setPartialScreenshotSelector semScreenshot view window token is not null"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_13
    :try_start_7
    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    invoke-interface {v7, v4, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$10;

    move-object/from16 p0, v4

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v8

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/screenshot/ScreenshotController$10;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/Bundle;Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/sep/ScreenshotSelectorView;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$11;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotController$11;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$12;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotController$12;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPartialScreenshotSelector "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_15
    :try_start_8
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$sam$java_util_function_Consumer$0;

    invoke-direct {v0, v7}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$sam$java_util_function_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v5, v2, v0, v8}, Lcom/android/systemui/screenshot/ScreenshotHandler;->handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->TAG:Ljava/lang/String;

    const-string v4, "Error while ScreenshotController was handling ScreenshotData!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v2, v8}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->onFailedScreenshotRequest(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final executeScreenshots(Lcom/android/internal/util/ScreenshotRequest;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;

    iget v3, v2, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->label:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    iget-object v3, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v5, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/util/ScreenshotRequest;

    iget-object v6, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v0

    move-object v0, v6

    move-object v6, v3

    move-object v3, v5

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/ScreenshotRequest;->getType()I

    move-result v1

    iput-object v0, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$0:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$2:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$3:Ljava/lang/Object;

    iput v5, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->label:I

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->getDisplaysToScreenshot(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    iget-object v5, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotControllerFactory:Lcom/android/systemui/screenshot/ScreenshotController$Factory;

    const/4 v9, 0x0

    invoke-interface {v5, v1, v9}, Lcom/android/systemui/screenshot/ScreenshotController$Factory;->create(Landroid/view/Display;Z)Lcom/android/systemui/screenshot/ScreenshotController;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v5

    :goto_3
    iput-object v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotData;->Companion:Lcom/android/systemui/screenshot/ScreenshotData$Companion;

    iget-object v9, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    const/4 v10, 0x0

    if-nez v9, :cond_6

    move-object v9, v10

    :cond_6
    iget v9, v9, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getType()I

    move-result v12

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getSource()I

    move-result v13

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getUserId()I

    move-result v11

    if-ltz v11, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getUserId()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v11

    move-object v14, v11

    goto :goto_4

    :cond_7
    move-object v14, v10

    :goto_4
    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getTaskId()I

    move-result v17

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getInsets()Landroid/graphics/Insets;

    move-result-object v18

    invoke-virtual {v3}, Lcom/android/internal/util/ScreenshotRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    const/16 v24, 0xe00

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v11, v5

    move/from16 v20, v9

    invoke-direct/range {v11 .. v25}, Lcom/android/systemui/screenshot/ScreenshotData;-><init>(IILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/graphics/Rect;ILandroid/graphics/Insets;Landroid/graphics/Bitmap;ILandroid/net/Uri;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$0:Ljava/lang/Object;

    iput-object v10, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$1:Ljava/lang/Object;

    iput-object v10, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$2:Ljava/lang/Object;

    iput-object v10, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->L$3:Ljava/lang/Object;

    iput v4, v8, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$executeScreenshots$1;->label:I

    move-object v3, v0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->dispatchToController(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    return-object v2

    :cond_8
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final getDisplaysToScreenshot(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;

    iget v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl$getDisplaysToScreenshot$1;->label:I

    iget-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->displays:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/Set;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :cond_7
    iget v3, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->builtInDisplayId:I

    if-ne v2, v3, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/view/Display;

    sget-object v1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->ALLOWED_DISPLAY_TYPES:Ljava/util/List;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    return-object p0
.end method

.method public final onFailedScreenshotRequest(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    check-cast p2, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->reportError()V

    return-void
.end method
