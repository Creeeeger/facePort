.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;
.super Landroid/os/Handler;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/os/Looper;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 734
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 739
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "SavedAccessPointsWifiSettings"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 758
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "MSG_HIDE_DIALOG"

    .line 746
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->stopTimer()V

    .line 748
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateSkipStatus(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Z)V

    .line 749
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->forceUpdateWifiConfigurations()V

    .line 750
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmSelectAll(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmSelectAll(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 751
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateSelectedItemsCount(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    .line 752
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$msetupActionBarMenus(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Z)V

    .line 753
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mremoveAllPendingMessages(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    .line 754
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateWifiEntries(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    .line 755
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_2
    const-string p1, "MSG_SHOW_DIALOG"

    .line 741
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmProgressDialog(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    const-wide/32 v0, 0xea60

    .line 743
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;->startTimer(J)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removePendingMessages()V
    .locals 1

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public startTimer(J)V
    .locals 1

    const/16 v0, 0x65

    .line 766
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopTimer()V
    .locals 1

    const/16 v0, 0x65

    .line 771
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public updateList()V
    .locals 3

    const/16 v0, 0x66

    .line 775
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x3e8

    .line 776
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
