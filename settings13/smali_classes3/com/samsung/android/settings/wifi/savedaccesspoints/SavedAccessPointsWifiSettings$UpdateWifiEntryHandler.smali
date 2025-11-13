.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;
.super Landroid/os/Handler;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateWifiEntryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/os/Looper;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    .line 786
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 790
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "SavedAccessPointsWifiSettings"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MSG_REMOVING_APS"

    .line 796
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->removeCheckedWifiEntries()V

    goto :goto_0

    :cond_1
    const-string p1, "MSG_FINISH_REMOVE"

    .line 792
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmUiHandler(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateDialogHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$UpdateWifiEntryHandler;

    move-result-object p0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public removePendingMessages()V
    .locals 1

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 806
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
