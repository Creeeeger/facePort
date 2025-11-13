.class public final Lcom/android/systemui/media/MediaOutputView;
.super Lcom/android/systemui/media/CustomComposeView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

.field public feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

.field public final onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

.field public final powerManager:Landroid/os/PowerManager;

.field public final serviceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaOutputView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaOutputView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;Lcom/android/systemui/qs/bar/ColoredBGHelper;Landroid/media/AudioManager;Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;Landroid/os/PowerManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/CustomComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;)V

    iput-object p4, p0, Lcom/android/systemui/media/MediaOutputView;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iput-object p6, p0, Lcom/android/systemui/media/MediaOutputView;->serviceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    iput-object p7, p0, Lcom/android/systemui/media/MediaOutputView;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Lcom/android/systemui/media/MediaOutputView$onUnhandledKeyEventListener$2;

    invoke-direct {p1, p5}, Lcom/android/systemui/media/MediaOutputView$onUnhandledKeyEventListener$2;-><init>(Landroid/media/AudioManager;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/MediaOutputView;->onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

    const-string p0, "MediaOutputView"

    const-string p1, "init()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;Lcom/android/systemui/qs/bar/ColoredBGHelper;Landroid/media/AudioManager;Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;Landroid/os/PowerManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/MediaOutputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;Lcom/android/systemui/qs/bar/ColoredBGHelper;Landroid/media/AudioManager;Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;Landroid/os/PowerManager;)V

    return-void
.end method


# virtual methods
.method public final ContentView(ILandroidx/compose/runtime/Composer;)V
    .locals 11

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1465d6a9

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v1

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v3, Landroidx/compose/ui/unit/DensityImpl;

    invoke-direct {v3, v2, v1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalBackgroundColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/android/systemui/media/MediaOutputView;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    iget v1, v1, Lcom/android/systemui/qs/bar/ColoredBGHelper;->actualAppliedColor:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalTransitionInfo:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalDismissCallback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v1, :cond_4

    move-object v2, v1

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSecHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-direct {v1, v2}, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/media/ComposableSingletons$MediaOutputViewKt;->INSTANCE:Lcom/android/systemui/media/ComposableSingletons$MediaOutputViewKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/ComposableSingletons$MediaOutputViewKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/16 v2, 0x38

    invoke-static {v0, v1, p2, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/android/systemui/media/MediaOutputView$ContentView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/MediaOutputView$ContentView$1;-><init>(Lcom/android/systemui/media/MediaOutputView;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/MediaOutputView;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 10

    invoke-super {p0}, Lcom/android/systemui/media/CustomComposeView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnUnhandledKeyEventListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->serviceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceBindStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bindMediaSdkSupportService"

    const-string v4, "MediaSdkSupportServiceClient"

    const-string v5, " | bindStateEmitted: true"

    const-string v6, "bindResult: "

    :try_start_0
    sget v7, Lkotlin/Result;->$r8$clinit:I

    sget-object v7, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    const-string v8, ""

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3, v8}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.oneconnect.mediaoutput.START_MEDIA_OUTPUT_SERVICE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.oneconnect"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->serviceConnection:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v0, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "bindMediaSdkSupportService.onFailure"

    invoke-static {v4, v2, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    new-instance v2, Lcom/android/systemui/media/MediaOutputView$onAttachedToWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/MediaOutputView$onAttachedToWindow$1;-><init>(Lcom/android/systemui/media/MediaOutputView;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->setAnchorRectCallback(Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/Screen;->Companion:Lcom/android/systemui/media/mediaoutput/compose/Screen$Companion;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    iget-object v3, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;->getSelectedScreen(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/compose/Screen$Companion;->toScreen(Ljava/lang/String;)Lcom/android/systemui/media/mediaoutput/compose/Screen;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchMediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchMediaOutput;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen$MediaOutput;

    new-instance v4, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$From;

    iget-object v5, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v5, :cond_3

    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    iget v6, v6, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    const-string v1, "Lockscreen"

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    move-object v1, v5

    :cond_5
    iget v1, v1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v5, 0x1e

    if-ne v1, v5, :cond_6

    const-string v1, "SmartThings"

    goto :goto_4

    :cond_6
    const-string v1, "Quickpanel"

    :goto_4
    invoke-direct {v4, v1}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$From;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Lock;

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->keyguardManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Lock"

    goto :goto_5

    :cond_7
    const-string p0, "Unlock"

    :goto_5
    invoke-direct {v1, p0}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Lock;-><init>(Ljava/lang/String;)V

    filled-new-array {v4, v1}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, p0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    goto :goto_6

    :cond_8
    sget-object p0, Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchTvCard;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$LaunchTvCard;

    invoke-static {p0, v0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V

    goto :goto_6

    :cond_9
    sget-object p0, Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ChooseADevicePage;->$r8$clinit:I

    :cond_a
    :goto_6
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 6

    invoke-super {p0}, Lcom/android/systemui/media/CustomComposeView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->serviceClient:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->_serviceBindStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MediaSdkSupportServiceClient"

    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    iget-object v4, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->serviceConnection:Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient$serviceConnection$1;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/service/MediaSdkSupportServiceClient;->emitMediaSdkServiceDisconnectedState()V

    sget-object v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    const-string/jumbo v2, "unbindMediaSdkSupportService"

    const-string/jumbo v4, "unbindStateEmitted: true"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, v4}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "unbindMediaSdkSupportService.onFailure"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputView;->onUnhandledKeyEventListener$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnUnhandledKeyEventListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.systemui.action.MEDIA_PANEL_CLOSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    iget-object v2, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->setAnchorRectCallback(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
