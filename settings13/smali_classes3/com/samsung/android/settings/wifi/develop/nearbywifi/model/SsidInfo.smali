.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;
.super Ljava/lang/Object;
.source "SsidInfo.java"


# instance fields
.field private final bssids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;",
            ">;"
        }
    .end annotation
.end field

.field public existBand24:Z

.field public existBand5:Z

.field public existBand6:Z

.field public ssid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$vQwA9WZkNyxgpf3g_XuzZXlCvg4(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->lambda$getBestRssi$0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$getBestRssi$0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    return p0
.end method


# virtual methods
.method add(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBestBssidByRssi()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;
    .locals 4

    .line 32
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    if-eqz v0, :cond_1

    .line 33
    iget v2, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    if-le v2, v3, :cond_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getBestRssi()I
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    return p0
.end method

.method public getBssids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    return-object p0
.end method

.method public numOfBssids()I
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->bssids:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
