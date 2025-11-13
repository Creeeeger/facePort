.class public final Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field public final mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    iget v1, v1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
