.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;,
        Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;
    }
.end annotation


# instance fields
.field final MAX_RECOMMENDABLE_CU:I

.field private final freqCuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final ssidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedFreqs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$432jZwm1lzWBlIToNvTGdJXcEBk(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->lambda$update$1(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B7NxDpNW_VApPiiB4xrIsT0ybr0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->lambda$updateCuMap$4(Ljava/lang/Integer;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GmUVz33OZ6dQr_-KgXCRdi9HMBw(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->lambda$update$0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I-f8C1lrbY20riHAWEVFr3SJGg8(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->lambda$updateCuMap$3(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QeJmv-ncW9TjvNonJTeOjzBLLjg(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->lambda$updateCuMap$2(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 23
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->MAX_RECOMMENDABLE_CU:I

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;
    .locals 1

    .line 35
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;

    move-result-object v0

    return-object v0
.end method

.method private getStaticAngleFrom(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v1

    const v1, 0xfff1

    .line 105
    rem-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    rem-int/lit8 v0, v0, 0x78

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method private isRecommendable(I)Z
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x32

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 276
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isThereNonCuSupportingAp(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private isRecommendableBasedOnAdjacentFreqs([I)Z
    .locals 4

    .line 264
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 265
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isThereNonCuSupportingAp(I)Z
    .locals 3

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    .line 282
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    .line 283
    iget v2, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    if-ne v2, p1, :cond_1

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$update$0(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$update$1(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)Ljava/lang/Integer;
    .locals 0

    .line 65
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateCuMap$2(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 0

    .line 197
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$updateCuMap$3(Ljava/lang/Integer;)I
    .locals 0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateCuMap$4(Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 2

    .line 205
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 206
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 207
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->average()Ljava/util/OptionalDouble;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private toBand(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 p0, 0x96c

    if-lt p1, p0, :cond_0

    const/16 p0, 0x9b4

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x1428

    if-lt p1, p0, :cond_1

    const/16 p0, 0x16fd

    if-gt p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 p0, 0x1743

    if-lt p1, p0, :cond_2

    const/16 p0, 0x1bcb

    if-gt p1, p0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private updateBandInfo(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V
    .locals 4

    .line 295
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    .line 296
    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iput-boolean v2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand6:Z

    goto :goto_0

    .line 303
    :cond_1
    iput-boolean v2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand5:Z

    goto :goto_0

    .line 299
    :cond_2
    iput-boolean v2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->existBand24:Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateCuMap()V
    .locals 6

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    .line 194
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    .line 195
    iget v4, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget v4, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->freq:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 198
    iget v3, v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->cu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 204
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public createRadarUnitByBssid(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    .line 126
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;

    iget v3, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getStaticAngleFrom(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createRadarUnitBySsid()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBestBssidByRssi()Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v3, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;

    iget v4, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->bssid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getStaticAngleFrom(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public dump()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- Dump of Nearby Wi-Fi Repository: # of SSIDs="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    const-string v3, "["

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->ssid:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] bssids="

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->numOfBssids()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " best RSSI="

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBestRssi()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "---------------------------------------------------"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findSsidInfo(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    return-object p0
.end method

.method public getChannelRecommendation()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 215
    fill-array-data v1, :array_0

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 216
    fill-array-data v3, :array_1

    new-array v2, v2, [I

    .line 217
    fill-array-data v2, :array_2

    .line 219
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    .line 220
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x8

    .line 222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 227
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 228
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v8

    .line 229
    invoke-static {v7}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v9

    if-eq v8, v5, :cond_2

    if-eq v8, v0, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 248
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne v9, v5, :cond_3

    .line 235
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendableBasedOnAdjacentFreqs([I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    .line 238
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendableBasedOnAdjacentFreqs([I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 v10, 0xb

    if-ne v9, v10, :cond_0

    .line 241
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendable(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->isRecommendableBasedOnAdjacentFreqs([I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 242
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v4

    nop

    :array_0
    .array-data 4
        0x971
        0x976
    .end array-data

    :array_1
    .array-data 4
        0x97b
        0x980
        0x98a
        0x98f
    .end array-data

    :array_2
    .array-data 4
        0x994
        0x999
        0x9a3
        0x9a8
    .end array-data
.end method

.method public getCuInfo()Ljava/util/Map;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;",
            ">;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 155
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->toBand(I)I

    move-result v6

    .line 156
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->freqCuMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eq v6, v1, :cond_1

    if-eq v6, v2, :cond_1

    if-eq v6, v3, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    .line 163
    new-instance v8, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;

    .line 164
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 165
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v5

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    invoke-direct {v8, v9, v5, v7}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$CuInfo;-><init>(III)V

    .line 163
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getSsidList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setSupportedChannels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 73
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->supportedFreqs:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 46
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ltz v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    if-nez v2, :cond_2

    .line 53
    new-instance v2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_2
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->add(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;)V

    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->ssidList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;

    .line 64
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->updateBandInfo(Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;)V

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/SsidInfo;->getBssids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_1

    .line 68
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->updateCuMap()V

    return-void
.end method
