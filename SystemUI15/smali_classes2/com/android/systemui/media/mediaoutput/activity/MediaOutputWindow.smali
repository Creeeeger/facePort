.class public final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final isNightMode$delegate:Lkotlin/Lazy;

.field public job:Lkotlinx/coroutines/Job;

.field public final mediaOutputViewProvider:Ljavax/inject/Provider;

.field public final params$delegate:Lkotlin/Lazy;

.field public popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->Companion:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->mediaOutputViewProvider:Ljavax/inject/Provider;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$params$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->params$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$isNightMode$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$isNightMode$2;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->isNightMode$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;-><init>()V

    const-string v1, "extra_from"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    iput v1, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    new-instance v1, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$3;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    iput-object v1, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->dismissCallback:Lkotlin/jvm/functions/Function0;

    const-string v1, "extra_device_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Selector;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$TV;

    :goto_1
    iput-object v3, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object v2

    iput-object p1, v2, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->deviceIds:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/Screen$Phone;

    iput-object v2, p1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Builder;->getFeature()Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->popupWindow:Landroid/widget/PopupWindow;

    const-string v2, "MediaOutputWindow"

    if-eqz v0, :cond_3

    const-string/jumbo p0, "show() - already shown"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3
    const-string/jumbo v0, "show()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->mediaOutputViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaOutputView;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iput-object p1, v0, Lcom/android/systemui/media/MediaOutputView;->feature:Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-eqz p1, :cond_5

    new-instance p1, Landroid/view/SemBlurInfo$Builder;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->isNightMode$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x87

    goto :goto_3

    :cond_4
    const/16 v2, 0x84

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_4

    :cond_5
    const-string p1, "#5D5D5D"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_4
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->popupWindow:Landroid/widget/PopupWindow;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$2;-><init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->job:Lkotlinx/coroutines/Job;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->popupWindow:Landroid/widget/PopupWindow;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, p1

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->params$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->semShowPopupWindow(Landroid/view/WindowManager$LayoutParams;)V

    :goto_6
    return-void
.end method
