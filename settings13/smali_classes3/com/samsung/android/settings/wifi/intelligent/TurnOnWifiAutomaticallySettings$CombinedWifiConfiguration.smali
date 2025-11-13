.class Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;
.super Ljava/lang/Object;
.source "TurnOnWifiAutomaticallySettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombinedWifiConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field public mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 458
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)I
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$fgetmCurrentConnectedNetworkId(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 464
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$fgetmCurrentConnectedNetworkId(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    return v3

    .line 466
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-le p0, p1, :cond_2

    return v2

    :cond_2
    if-ge p0, p1, :cond_3

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 452
    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->compareTo(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;)I

    move-result p0

    return p0
.end method
