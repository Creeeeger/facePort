.class Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;
.super Ljava/lang/Object;
.source "WifiSettingsListController.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsListController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmWifiTracker(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings.VI"

    const-string v1, "show refresh UI. force start scan manually"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmSAScreenId(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0103"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->-$$Nest$fgetmWifiTracker(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->semForceScan()V

    :cond_0
    return-void
.end method
