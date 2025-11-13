.class public final Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;


# instance fields
.field public final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field public final scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    instance-of p1, p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set non-BottomScrollView. Found="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollViewDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    :goto_0
    return-void
.end method


# virtual methods
.method public final pageScrollDown()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz p0, :cond_0

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->pageScroll(I)Z

    :cond_0
    return-void
.end method

.method public final startListening()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz v0, :cond_0

    iput-object p0, v0, Lcom/google/android/setupdesign/view/BottomScrollView;->listener:Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;

    goto :goto_0

    :cond_0
    const-string p0, "ScrollViewDelegate"

    const-string v0, "Cannot require scroll. Scroll view is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
