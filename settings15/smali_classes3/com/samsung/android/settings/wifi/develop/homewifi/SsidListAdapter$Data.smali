.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bssids:Ljava/util/ArrayList;

.field public expanded:Z

.field public selected:Z

.field public final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->bssids:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$Data;->ssid:Ljava/lang/String;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
