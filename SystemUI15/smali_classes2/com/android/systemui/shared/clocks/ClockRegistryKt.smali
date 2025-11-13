.class public abstract Lcom/android/systemui/shared/clocks/ClockRegistryKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final KNOWN_PLUGINS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v1, "ANALOG_CLOCK_BIGNUM"

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "com.android.systemui.clocks.bignum"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v2, "DIGITAL_CLOCK_CALLIGRAPHY"

    invoke-direct {v0, v2}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "com.android.systemui.clocks.calligraphy"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v3, "DIGITAL_CLOCK_FLEX"

    invoke-direct {v0, v3}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "com.android.systemui.clocks.flex"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v4, "DIGITAL_CLOCK_GROWTH"

    invoke-direct {v0, v4}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lkotlin/Pair;

    const-string v5, "com.android.systemui.clocks.growth"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v5, "DIGITAL_CLOCK_HANDWRITTEN"

    invoke-direct {v0, v5}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lkotlin/Pair;

    const-string v6, "com.android.systemui.clocks.handwritten"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v6, "DIGITAL_CLOCK_INFLATE"

    invoke-direct {v0, v6}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v6, Lkotlin/Pair;

    const-string v7, "com.android.systemui.clocks.inflate"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v7, "DIGITAL_CLOCK_METRO"

    invoke-direct {v0, v7}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v7, Lkotlin/Pair;

    const-string v8, "com.android.systemui.clocks.metro"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v8, "DIGITAL_CLOCK_NUMBEROVERLAP"

    invoke-direct {v0, v8}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lkotlin/Pair;

    const-string v9, "com.android.systemui.clocks.numoverlap"

    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/plugins/clocks/ClockMetadata;

    const-string v9, "DIGITAL_CLOCK_WEATHER"

    invoke-direct {v0, v9}, Lcom/android/systemui/plugins/clocks/ClockMetadata;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v9, Lkotlin/Pair;

    const-string v10, "com.android.systemui.clocks.weather"

    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v9}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/clocks/ClockRegistryKt;->KNOWN_PLUGINS:Ljava/util/Map;

    return-void
.end method
