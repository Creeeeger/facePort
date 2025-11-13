.class Landroid/widget/RemoteViews$ViewGroupActionAdd$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionAdd;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

.field final synthetic blacklist val$nextChild:I

.field final synthetic blacklist val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic blacklist val$recycledViewIndex:I

.field final synthetic blacklist val$targetVg:Landroid/view/ViewGroup;

.field final synthetic blacklist val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;IILandroid/view/ViewGroup;)V
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

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iput p5, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    iput-object p6, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$reapplyTask:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$recycledViewIndex:I

    iget v3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$nextChild:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    :cond_0
    return-void
.end method
