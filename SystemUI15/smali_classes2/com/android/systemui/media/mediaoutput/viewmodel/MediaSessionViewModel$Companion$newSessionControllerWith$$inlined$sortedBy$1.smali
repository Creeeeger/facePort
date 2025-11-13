.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$$inlined$sortedBy$1;
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
    .locals 4

    check-cast p1, Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object p0, p1

    :goto_1
    check-cast p2, Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    if-ne v3, v2, :cond_2

    move-object v1, p2

    :cond_2
    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
