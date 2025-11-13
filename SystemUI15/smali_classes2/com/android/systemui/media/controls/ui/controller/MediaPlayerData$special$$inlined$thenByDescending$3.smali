.class public final Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $this_thenByDescending:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$3;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$3;->$this_thenByDescending:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->shouldPrioritizeSs:Z

    iget-boolean p2, p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->shouldPrioritizeSs:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-ne p0, p1, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_1
    return p0
.end method
