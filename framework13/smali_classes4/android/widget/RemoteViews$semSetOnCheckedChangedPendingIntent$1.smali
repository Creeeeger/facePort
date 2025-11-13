.class Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    .line 8257
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;->this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 8260
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8261
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isChecked"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8262
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;->this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    iget-object v2, v2, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/high16 v4, 0x10000000

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8267
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 8265
    :catch_0
    move-exception v0

    .line 8266
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RemoteViews"

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8268
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    return-void
.end method
