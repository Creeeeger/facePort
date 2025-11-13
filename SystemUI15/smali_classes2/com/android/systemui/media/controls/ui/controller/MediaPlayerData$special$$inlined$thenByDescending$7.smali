.class public final Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$7;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$7;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-wide v0, p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->updateTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-wide p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->updateTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_0
    return p0
.end method
