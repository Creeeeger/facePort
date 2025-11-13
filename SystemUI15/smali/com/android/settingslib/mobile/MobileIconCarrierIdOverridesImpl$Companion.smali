.class public final Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;
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

    invoke-direct {p0}, Lcom/android/settingslib/mobile/MobileIconCarrierIdOverridesImpl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseNetworkIconOverrideTypedArray(Landroid/content/res/TypedArray;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p0

    const/4 v0, 0x2

    rem-int/2addr p0, v0

    const-string v1, "MobileIconOverrides"

    if-eqz p0, :cond_0

    const-string p0, "override must contain an even number of (key, value) entries. skipping"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt___RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    iget v2, v0, Lkotlin/ranges/IntProgression;->first:I

    iget v4, v0, Lkotlin/ranges/IntProgression;->last:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->step:I

    if-lez v0, :cond_1

    if-le v2, v4, :cond_2

    :cond_1
    if-gez v0, :cond_5

    if-gt v4, v2, :cond_5

    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v5, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_1
    const-string v5, "Invalid override found. Skipping"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eq v2, v4, :cond_5

    add-int/2addr v2, v0

    goto :goto_0

    :cond_5
    return-object p0
.end method
