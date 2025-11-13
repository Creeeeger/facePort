.class public final Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;->this$0:Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;

    iget-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p0

    sub-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    sub-int/2addr v0, p0

    if-ge p3, v0, :cond_0

    move p2, p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method
