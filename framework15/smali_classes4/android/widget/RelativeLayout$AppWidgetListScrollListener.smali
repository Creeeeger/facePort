.class Landroid/widget/RelativeLayout$AppWidgetListScrollListener;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetListScrollListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$AppWidgetListScrollListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;-><init>(Landroid/widget/RelativeLayout;)V

    return-void
.end method


# virtual methods
.method public whitelist onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public whitelist onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    iget-object v3, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$ReleaseScrollRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ReleaseScrollRunnable-IA;)V

    invoke-static {v0, v2}, Landroid/widget/RelativeLayout;->-$$Nest$fputmReleaseScrollRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ReleaseScrollRunnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    iget-object v3, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$ExpandTopBarRunnable;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable-IA;)V

    invoke-static {v0, v2}, Landroid/widget/RelativeLayout;->-$$Nest$fputmExpandTopBarRunnable(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$ExpandTopBarRunnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    if-nez p2, :cond_3

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmReleaseScrollRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ReleaseScrollRunnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object v1

    const-wide/16 v2, 0x60e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetToolBar(Landroid/widget/RelativeLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmAppWidgetListView(Landroid/widget/RelativeLayout;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout$AppWidgetListScrollListener;->this$0:Landroid/widget/RelativeLayout;

    invoke-static {v1}, Landroid/widget/RelativeLayout;->-$$Nest$fgetmExpandTopBarRunnable(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout$ExpandTopBarRunnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void
.end method
