.class Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPTCPStateReceiver: onReceive action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GigaMultiPath"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.mptcp.MPTCP_STATE"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 353
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mcloseProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    const-string p1, "MPTCP State intent is received"

    .line 357
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mptcp_state"

    .line 358
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 360
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "Cannot Enable MPTCP"

    .line 362
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 366
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p2, p1, :cond_3

    return-void

    .line 373
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mgetWiFiState(Lcom/samsung/android/settings/connection/GigaMultiPath;I)Z

    move-result p1

    .line 375
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 376
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 377
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsMobileDataEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 378
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1, v3}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsNetworkEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    .line 379
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    goto :goto_1

    .line 381
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 382
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p2, v3}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fputmIsWiFiEnabling(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    if-eqz p1, :cond_5

    .line 384
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$msendMptcpStartBroadCast(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V

    goto :goto_1

    .line 386
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 387
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$mcloseProgressDialog(Lcom/samsung/android/settings/connection/GigaMultiPath;)V

    .line 389
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 390
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/GigaMultiPath;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mptcp_value"

    .line 390
    invoke-static {p0, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_8
    :goto_1
    return-void
.end method
