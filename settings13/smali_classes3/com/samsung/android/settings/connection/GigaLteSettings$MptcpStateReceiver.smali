.class Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 864
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPTCPStateReceiver: onReceive action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GigaLteSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.mptcp.MPTCP_STATE"

    .line 867
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 868
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmHoldingHandler(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmRemoveProgress(Lcom/samsung/android/settings/connection/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 870
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 872
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    const-string p1, "MPTCP State intent is received"

    .line 873
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mptcp_state"

    .line 874
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 876
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 878
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "Cannot enable/disable MPTCP"

    .line 880
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 883
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 884
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p2, p1, :cond_4

    return-void

    .line 887
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$mgetWiFiState(Lcom/samsung/android/settings/connection/GigaLteSettings;I)Z

    move-result p1

    .line 888
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 889
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 890
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 891
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    .line 892
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    goto :goto_1

    .line 894
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 895
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p2, v3}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    if-eqz p1, :cond_6

    .line 897
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaLteSettings;Z)V

    goto :goto_1

    .line 899
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 900
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmHoldingHandler(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmRemoveProgress(Lcom/samsung/android/settings/connection/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 901
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetprogressDialog(Lcom/samsung/android/settings/connection/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 903
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 904
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaLteSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    .line 905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mptcp_value"

    .line 904
    invoke-static {p0, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_9
    :goto_1
    return-void
.end method
