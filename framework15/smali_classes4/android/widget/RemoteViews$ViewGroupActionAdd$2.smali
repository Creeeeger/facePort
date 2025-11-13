.class Landroid/widget/RemoteViews$ViewGroupActionAdd$2;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionAdd;->insertNewView(Landroid/content/Context;Landroid/widget/RemoteViews$ViewTree;Landroid/widget/RemoteViews$ActionApplyParams;Ljava/lang/Runnable;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

.field final synthetic blacklist val$finalizeAction:Ljava/lang/Runnable;

.field final synthetic blacklist val$insertIndex:I

.field final synthetic blacklist val$targetVg:Landroid/view/ViewGroup;

.field final synthetic blacklist val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic blacklist val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Ljava/lang/Runnable;Landroid/view/ViewGroup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput-object p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$finalizeAction:Ljava/lang/Runnable;

    iput-object p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$targetVg:Landroid/view/ViewGroup;

    iput p6, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$insertIndex:I

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$finalizeAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$targetVg:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-static {v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$2;->val$insertIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method
