.class Lcom/android/settings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->lambda$showAutoWifiTipPopup$1()V
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

    .line 979
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 982
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const-class p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_autowifi_title:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mlaunchFragment(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method
