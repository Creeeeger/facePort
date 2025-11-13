.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

.field public bssidColor:I

.field public final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->ssid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->bssid:Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/BssidListAdapter$Data;->ssid:Ljava/lang/String;

    return-void
.end method
