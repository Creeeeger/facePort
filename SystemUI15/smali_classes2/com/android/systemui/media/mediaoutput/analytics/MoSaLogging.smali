.class public final Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

.field public static currentScreen:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V
    .locals 6

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send Event with Custom Dimension - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoSaLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;->id:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    iget-object v4, v3, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;->key:Ljava/lang/String;

    new-instance v5, Lkotlin/Pair;

    iget-object v3, v3, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;->value:Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;->id:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->currentScreen:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send Event - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MoSaLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;->id:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static varargs send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->currentScreen:Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Lcom/android/systemui/media/mediaoutput/analytics/SaScreen;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    return-void
.end method

.method public static synthetic send$default(Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
