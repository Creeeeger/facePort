.class Lcom/samsung/android/feature/SecCarrier;
.super Ljava/lang/Object;
.source "SecCarrier.java"


# static fields
.field private static final blacklist TAG_CARRIER_ID:Ljava/lang/String; = "canonical_id"

.field private static final blacklist TAG_CUSTOMER:Ljava/lang/String; = "customer"

.field private static final blacklist TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final blacklist TAG_MAPPED_CID_VER:Ljava/lang/String; = "mapped_cid_version"

.field private static final blacklist TAG_NAME:Ljava/lang/String; = "carrier_group"

.field private static final blacklist TAG_SPECIFIC:Ljava/lang/String; = "specific"

.field private static final blacklist TAG_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist VERSION_DEFAULT:Ljava/lang/String; = "-1"


# instance fields
.field private blacklist feature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isCarrierGroupValid:Z

.field private blacklist mapped_cid_version:Ljava/lang/String;

.field private blacklist version:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "jsonText"    # Ljava/lang/String;
    .param p2, "salesCode"    # Ljava/lang/String;
    .param p3, "carrierId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/feature/SecCarrier;->isCarrierGroupValid:Z

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SecCarrier;->feature:Ljava/util/Map;

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/feature/SecCarrier;->version:Ljava/lang/String;

    .line 37
    const-string v1, "mapped_cid_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/feature/SecCarrier;->mapped_cid_version:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "-1"

    iput-object v1, p0, Lcom/samsung/android/feature/SecCarrier;->mapped_cid_version:Ljava/lang/String;

    .line 42
    :goto_0
    move-object v1, p2

    .line 43
    .local v1, "carrierGroup":Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .local v2, "specificFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "specific"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "feature"

    if-eqz v4, :cond_3

    .line 45
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    .local v3, "specificFeatureObject":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 47
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 48
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "canonical_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 50
    .local v6, "ccid":I
    if-ne v6, p3, :cond_2

    .line 51
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 53
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 55
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 56
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "value":Ljava/lang/String;
    const-string v10, "CarrierFeature_Common_CarrierGroup"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 58
    move-object v1, v9

    .line 60
    :cond_1
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_2

    .line 47
    .end local v6    # "ccid":I
    .end local v7    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v3    # "specificFeatureObject":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    .local v3, "custFeatures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "customer"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 70
    .local v4, "custFeatureObject":Lorg/json/JSONArray;
    if-eqz v4, :cond_6

    .line 71
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 72
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "carrier_group"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "cGroup":Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 75
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/feature/SecCarrier;->isCarrierGroupValid:Z

    .line 78
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 79
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 80
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 81
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 82
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 83
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 84
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_4

    .line 71
    .end local v7    # "cGroup":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 91
    .end local v6    # "i":I
    :cond_6
    nop

    .line 92
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    iput-object v3, p0, Lcom/samsung/android/feature/SecCarrier;->feature:Ljava/util/Map;

    .line 95
    return-void
.end method


# virtual methods
.method blacklist getFeature()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/samsung/android/feature/SecCarrier;->feature:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getMappedCidVersion()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/feature/SecCarrier;->mapped_cid_version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method blacklist getVersion()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/feature/SecCarrier;->version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method blacklist isCarrierGroupValid()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/feature/SecCarrier;->isCarrierGroupValid:Z

    return v0
.end method
