.class public final Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public actionsContainer:Landroid/view/View;

.field public actionsContainerBackground:Landroid/view/View;

.field public dismissButton:Landroid/view/View;

.field public final displayMetrics:Landroid/util/DisplayMetrics;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public onTouchInterceptListener:Lkotlin/jvm/functions/Function1;

.field public screenshotPreview:Landroid/widget/ImageView;

.field public screenshotStatic:Landroid/view/ViewGroup;

.field public final tmpRect:Landroid/graphics/Rect;

.field public userInteractionCallback:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->displayMetrics:Landroid/util/DisplayMetrics;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->tmpRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$gestureDetector$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static varargs max(II[I)I
    .locals 2

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    aget v1, p2, v0

    if-le v1, p0, :cond_1

    move p0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return p0
.end method


# virtual methods
.method public final addInsetView(Landroid/graphics/Region;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->tmpRect:Landroid/graphics/Rect;

    sget-object p2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    const v0, 0x7f0a0a4c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a0a4d

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f0a0a53

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotStatic:Landroid/view/ViewGroup;

    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->actionsContainerBackground:Landroid/view/View;

    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->actionsContainer:Landroid/view/View;

    const v0, 0x7f0a0a44

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->dismissButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->actionsContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView$onFinishInflate$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->userInteractionCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->userInteractionCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->onTouchInterceptListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final updateInsets(Landroid/view/WindowInsets;)V
    .locals 8

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070f1f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070c67

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const/4 v5, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotStatic:Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, p0

    :goto_1
    iget p0, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v5, v1, v1, v1, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v6

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotStatic:Landroid/view/ViewGroup;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, p0

    :goto_2
    iget p0, v6, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iget v7, v6, Landroid/graphics/Insets;->top:I

    new-array v1, v1, [I

    invoke-static {v2, v7, v1}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->max(II[I)I

    move-result v1

    iget v2, v6, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p1, v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    add-int/2addr v0, v3

    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v6, v3

    filled-new-array {v6, v4}, [I

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->max(II[I)I

    move-result p1

    invoke-virtual {v5, p0, v1, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotStatic:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, p0

    :goto_3
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    iget v2, v6, Landroid/graphics/Insets;->left:I

    new-array v7, v1, [I

    invoke-static {p0, v2, v7}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->max(II[I)I

    move-result p0

    iget v2, v6, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    iget v7, v6, Landroid/graphics/Insets;->right:I

    new-array v1, v1, [I

    invoke-static {v0, v7, v1}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->max(II[I)I

    move-result v0

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p1, v3

    iget v1, v6, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v1, v3

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->max(II[I)I

    move-result p1

    invoke-virtual {v5, p0, v2, v0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_4
    return-void
.end method
