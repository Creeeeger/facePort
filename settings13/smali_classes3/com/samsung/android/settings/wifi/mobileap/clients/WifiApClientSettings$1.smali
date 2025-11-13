.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;
.super Ljava/lang/Object;
.source "WifiApClientSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->-$$Nest$fgetmRefreshHandler(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
