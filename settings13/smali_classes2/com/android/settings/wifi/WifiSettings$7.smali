.class Lcom/android/settings/wifi/WifiSettings$7;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 1823
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    .line 1826
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$smDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string/jumbo v1, "onItemClicked - connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->onConnectedWifiEntryPreferenceClick(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method
