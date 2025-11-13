.class Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;
.super Landroid/database/ContentObserver;
.source "SmartNetworkSwitchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;Landroid/os/Handler;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;->-$$Nest$mfinishSnsSettings(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;)V

    return-void
.end method
