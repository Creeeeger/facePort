.class Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;
.super Ljava/lang/Object;
.source "WifiNetworkConfigPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IpConfigFields"
.end annotation


# instance fields
.field dns1:Ljava/lang/String;

.field dns2:Ljava/lang/String;

.field gateway:Ljava/lang/String;

.field ipv4Address:Ljava/lang/String;

.field networkPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ipv4Address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->ipv4Address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " networkPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->networkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gateway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dns1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dns2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$IpConfigFields;->dns2:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
