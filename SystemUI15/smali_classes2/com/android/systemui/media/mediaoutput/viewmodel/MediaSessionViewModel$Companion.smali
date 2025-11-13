.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;
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

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;-><init>()V

    return-void
.end method

.method public static final access$getSessionController(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;Ljava/util/List;Ljava/lang/Object;)Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p2, Landroid/media/session/MediaSession$Token;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->token:Landroid/media/session/MediaSession$Token;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    :cond_1
    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    goto :goto_0

    :cond_2
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    if-eqz v1, :cond_3

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->isSame(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object v0, p1

    :cond_4
    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    :cond_5
    :goto_0
    return-object v0
.end method
