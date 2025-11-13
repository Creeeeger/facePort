.class public final Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1$invokeSuspend$$inlined$sortByDescending$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;

    invoke-interface {p2}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;->getCreatedTimestampMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;

    invoke-interface {p1}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;->getCreatedTimestampMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
