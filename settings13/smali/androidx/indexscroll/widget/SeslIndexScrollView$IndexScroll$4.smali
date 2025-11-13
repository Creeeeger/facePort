.class Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;


# direct methods
.method constructor <init>(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)V
    .locals 0

    .line 1674
    iput-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1677
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1678
    iget-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p1}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$700(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    iget-object p1, p1, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroidx/indexscroll/widget/SeslIndexScrollView;

    invoke-static {p1}, Landroidx/indexscroll/widget/SeslIndexScrollView;->access$1800(Landroidx/indexscroll/widget/SeslIndexScrollView;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1680
    iget-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    iget-object p2, p1, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroidx/indexscroll/widget/SeslIndexScrollView;

    invoke-static {p1}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$2600(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1681
    iget-object p0, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    iget-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroidx/indexscroll/widget/SeslIndexScrollView;

    invoke-static {p0}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$2600(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1687
    iget-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p1}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$700(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1688
    iget-object p1, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p1}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$1400(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)I

    move-result p1

    .line 1689
    iget-object p2, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    iget-object p2, p2, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroidx/indexscroll/widget/SeslIndexScrollView;

    invoke-static {p2}, Landroidx/indexscroll/widget/SeslIndexScrollView;->access$1800(Landroidx/indexscroll/widget/SeslIndexScrollView;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p2}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$500(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 1690
    iget-object p2, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p2}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$2700(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;)I

    move-result p2

    const/16 v0, 0xff

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 1691
    iget-object p2, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p2, v0}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$2400(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;I)V

    .line 1693
    :cond_0
    iget-object p2, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    invoke-static {p2, p1}, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->access$502(Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;I)I

    .line 1694
    iget-object p0, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll$4;->this$1:Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;

    iget-object p0, p0, Landroidx/indexscroll/widget/SeslIndexScrollView$IndexScroll;->this$0:Landroidx/indexscroll/widget/SeslIndexScrollView;

    invoke-static {p0}, Landroidx/indexscroll/widget/SeslIndexScrollView;->access$2800(Landroidx/indexscroll/widget/SeslIndexScrollView;)Landroidx/indexscroll/widget/SeslAbsIndexer;

    :cond_1
    return-void
.end method
