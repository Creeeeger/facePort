.class Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SemSetOnLongClickDragable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    .line 8065
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .line 8068
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const-string v1, "Cannot send pending intent: "

    const-string v2, "RemoteViews"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 8084
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 8087
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    .line 8088
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    .line 8087
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8091
    :catch_0
    move-exception v0

    .line 8092
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8094
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    goto :goto_1

    .line 8070
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 8073
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    .line 8074
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    .line 8073
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 8077
    :catch_1
    move-exception v0

    .line 8078
    .restart local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8101
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
