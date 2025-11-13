.class public Lcom/google/android/setupdesign/view/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

.field public listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

.field public requiringScroll:Z

.field public scrollThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    new-instance p1, Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/BottomScrollView$1;-><init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    new-instance p1, Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/BottomScrollView$1;-><init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    new-instance p1, Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/BottomScrollView$1;-><init>(Lcom/google/android/setupdesign/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    return-void
.end method


# virtual methods
.method public final checkScroll()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->scrollThreshold:I

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    check-cast p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->requiringScroll:Z

    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    check-cast p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBottomScrollListener()Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p5

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->scrollThreshold:I

    :cond_0
    sub-int/2addr p5, p3

    if-lez p5, :cond_1

    iget-object p1, p0, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScrollRunnable:Lcom/google/android/setupdesign/view/BottomScrollView$1;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eq p4, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/BottomScrollView;->checkScroll()V

    :cond_0
    return-void
.end method
