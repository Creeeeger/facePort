.class Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewApplyListener"
.end annotation


# instance fields
.field private final greylist-max-o mIsReapply:Z

.field private final greylist-max-o mLayoutId:I

.field private final greylist-max-o mViews:Landroid/widget/RemoteViews;

.field final synthetic blacklist this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor blacklist <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V
    .locals 0
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "layoutId"    # I
    .param p4, "isReapply"    # Z

    .line 710
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    .line 712
    iput p3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    .line 713
    iput-boolean p4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    .line 714
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(Ljava/lang/Exception;)V
    .locals 11
    .param p1, "e"    # Ljava/lang/Exception;

    .line 738
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget-object v4, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v5}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget v10, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    invoke-direct {v7, v8, v9, v10, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmInteractionHandler(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v8

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    .line 749
    :goto_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v0, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    .line 750
    return-void
.end method

.method public greylist-max-o onViewApplied(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 718
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 720
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    .line 723
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v0, v0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    .line 724
    .local v0, "viewId":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 725
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iput v1, v3, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onViewApplied, Trigger viewDataChanged for viewId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppWidgetHostView"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->viewDataChanged(I)V

    .line 731
    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V

    .line 732
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    .line 733
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1, v2}, Landroid/appwidget/AppWidgetHostView;->-$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V

    .line 734
    return-void
.end method
