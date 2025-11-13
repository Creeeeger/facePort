.class Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;
.super Landroid/database/ContentObserver;
.source "WifiSmartNetworkSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;->-$$Nest$mupdateSmartNetworkSwitchServiceCheck(Lcom/samsung/android/settings/wifi/intelligent/WifiSmartNetworkSwitchEnabler;)V

    return-void
.end method
