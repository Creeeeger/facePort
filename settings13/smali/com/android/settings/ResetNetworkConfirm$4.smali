.class Lcom/android/settings/ResetNetworkConfirm$4;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm;->secResetNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmIsWiFiEnabled(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$mremoveProgress(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fputmIsWiFiEnabled(Lcom/android/settings/ResetNetworkConfirm;Z)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmHandler(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmRemoveProgress(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
