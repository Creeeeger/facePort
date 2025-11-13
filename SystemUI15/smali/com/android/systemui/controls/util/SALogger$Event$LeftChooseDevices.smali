.class public final Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;
.super Lcom/android/systemui/controls/util/SALogger$Event;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Ljava/lang/String;

.field public final numberOfSelectedControls:I

.field public final numberOfStructures:I

.field public final numberOfTotalControls:I

.field public final numberOfZones:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->appName:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfSelectedControls:I

    iput p3, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfTotalControls:I

    iput p4, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfStructures:I

    iput p5, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfZones:I

    return-void
.end method


# virtual methods
.method public final sendEvent(Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper;)V
    .locals 4

    sget-object p1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;

    sget-object v0, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$AppName;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$AppName;

    iget-object v3, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;

    iget v3, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfSelectedControls:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$AllControls;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$AllControls;

    iget v3, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfTotalControls:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$Structure;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$Structure;

    iget v3, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfStructures:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$Zone;->INSTANCE:Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId$Zone;

    iget p0, p0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;->numberOfZones:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId;

    invoke-virtual {v1}, Lcom/android/systemui/controls/util/SystemUIAnalyticsWrapper$KeyId;->getKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "Dvcs02"

    const-string p1, "Dvcs022"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
