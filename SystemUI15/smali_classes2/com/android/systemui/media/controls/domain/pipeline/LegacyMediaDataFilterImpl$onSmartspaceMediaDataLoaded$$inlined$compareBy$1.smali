.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-wide v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl$onSmartspaceMediaDataLoaded$$inlined$compareBy$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataFilterImpl;->userEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz p0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
