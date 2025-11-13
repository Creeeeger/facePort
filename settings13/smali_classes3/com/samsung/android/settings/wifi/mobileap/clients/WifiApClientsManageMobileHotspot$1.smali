.class Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;
.super Ljava/lang/Object;
.source "WifiApClientsManageMobileHotspot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->refreshConnectedPreferenceCategory()V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;->-$$Nest$fgetmRefreshHandler(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
