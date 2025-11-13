.class public final Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$5;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$5;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;

    iget p0, p2, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;

    iget p1, p1, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;->playbackLocation:I

    if-eq p1, v1, :cond_2

    move p2, v0

    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_1
    return p0
.end method
