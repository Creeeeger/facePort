.class Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

.field final synthetic blacklist val$params:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 5

    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->val$params:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v2, v2, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;

    iget-object v3, v3, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1}, Landroid/widget/RemoteViews$RemoteResponse;->fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    const/4 v2, 0x1

    return v2
.end method
