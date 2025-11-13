.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->ssid:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    iget v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    iget v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->sta:I

    iget v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandard:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->wifiStandard:I

    iget v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->channelWidth:I

    iput v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->channelWidth:I

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->security:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11e:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11k:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11k:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11v:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11v:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11r:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->extra11r:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfRequired:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfRequired:Z

    iget-boolean v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfCapable:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->pmfCapable:Z

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->multiLink:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MultiLink;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rnr:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;

    iput-object p1, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rnr:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;

    iput-object p0, v0, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method
