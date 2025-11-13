.class Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

.field final synthetic blacklist val$handler:Landroid/widget/RemoteViews$InteractionHandler;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    .line 7901
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 7905
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 7906
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 7910
    .local v0, "vg":Landroid/view/ViewGroup;
    instance-of v2, p1, Landroid/widget/AdapterViewAnimator;

    if-eqz v2, :cond_0

    .line 7911
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    .line 7913
    :cond_0
    if-nez v0, :cond_1

    .line 7914
    return v1

    .line 7917
    :cond_1
    const/4 v2, 0x0

    .line 7918
    .local v2, "response":Landroid/widget/RemoteViews$RemoteResponse;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7919
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 7920
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x10202ee

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 7921
    .local v5, "tag":Ljava/lang/Object;
    instance-of v6, v5, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v6, :cond_2

    .line 7922
    move-object v2, v5

    check-cast v2, Landroid/widget/RemoteViews$RemoteResponse;

    .line 7923
    goto :goto_1

    .line 7919
    .end local v5    # "tag":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7926
    .end local v4    # "i":I
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 7927
    return v1

    .line 7930
    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 7932
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 7933
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 7934
    iget-object v6, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v7, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iget-object v7, v7, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-interface {v6, p2, v7, v2}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    .line 7936
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "response":Landroid/widget/RemoteViews$RemoteResponse;
    .end local v3    # "childCount":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5
    return v1
.end method
