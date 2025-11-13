.class Lcom/android/settings/ResetNetworkConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
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

    .line 121
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmIsFirstResume(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fputmIsFirstResume(Lcom/android/settings/ResetNetworkConfirm;Z)V

    return-void

    :cond_1
    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 130
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p2, p1, :cond_3

    .line 133
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmIsWiFiEnabled(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmHandler(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p2}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmRemoveProgress(Lcom/android/settings/ResetNetworkConfirm;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$mremoveProgress(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fputmIsWiFiEnabled(Lcom/android/settings/ResetNetworkConfirm;Z)V

    :cond_3
    :goto_0
    return-void
.end method
