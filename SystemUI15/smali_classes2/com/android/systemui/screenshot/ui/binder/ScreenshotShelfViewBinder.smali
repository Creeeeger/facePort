.class public final Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buttonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;->buttonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

    return-void
.end method

.method public static final access$setScreenshotBitmap(Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c73

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz p0, :cond_1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public static final access$updateActions(Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;Ljava/util/List;Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;Landroid/view/LayoutInflater;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0a3f

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    iget-boolean v4, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->visible:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;->ENTRANCE_COMPLETE:Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;

    if-eq p2, v4, :cond_1

    sget-object v4, Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;->ENTRANCE_REVEAL:Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;

    if-eq p2, v4, :cond_1

    iget-boolean v3, v3, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->showDuringEntrance:Z

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const p1, 0x7f0a00a4

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {v1, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    iget v2, v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p3

    invoke-static {p3}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p3, p2

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;->buttonViewBinder:Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;

    if-eqz v3, :cond_8

    iget v5, v2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->id:I

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;->bind(Landroid/view/View;Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V

    goto :goto_5

    :cond_8
    :goto_4
    const v3, 0x7f0d043a

    invoke-virtual {p4, v3, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder;->bind(Landroid/view/View;Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V

    :goto_5
    move p3, v1

    goto :goto_3

    :cond_9
    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 16

    move-object/from16 v13, p1

    move-object/from16 v0, p5

    new-instance v1, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;

    new-instance v2, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$2;

    move-object/from16 v4, p3

    invoke-direct {v3, v4}, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$swipeGestureListener$2;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V

    invoke-direct {v1, v13, v2, v3}, Lcom/android/systemui/screenshot/ui/SwipeGestureListener;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    new-instance v2, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$1;-><init>(Lcom/android/systemui/screenshot/ui/SwipeGestureListener;)V

    iput-object v2, v13, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->onTouchInterceptListener:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p6

    iput-object v1, v13, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->userInteractionCallback:Lkotlin/jvm/functions/Function0;

    const v1, 0x7f0a0a4c

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    const v1, 0x7f0a0a4d

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const v1, 0x7f0a0a4e

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    const v1, 0x7f0a0a3f

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0a44

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v2, p2

    iget-object v6, v2, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0a51

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f0a0a50

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const v0, 0x7f0a0a40

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v14

    new-instance v15, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$3;

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$3;-><init>(Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v14, v15}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void
.end method
