.class public final Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/clocks/ClockSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Ljava/lang/String;)Lcom/android/systemui/plugins/clocks/ClockSettings;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/plugins/clocks/ClockSettings;

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_CLOCK_ID$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_CLOCK_ID$cp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_SEED_COLOR$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_SEED_COLOR$cp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_2
    invoke-direct {p1, v1, p0}, Lcom/android/systemui/plugins/clocks/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_METADATA$cp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_METADATA$cp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/plugins/clocks/ClockSettings;->setMetadata(Lorg/json/JSONObject;)V

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    return-object p0
.end method

.method public final serialize(Lcom/android/systemui/plugins/clocks/ClockSettings;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_CLOCK_ID$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getClockId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_SEED_COLOR$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getSeedColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/plugins/clocks/ClockSettings;->access$getKEY_METADATA$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/plugins/clocks/ClockSettings;->getMetadata()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
