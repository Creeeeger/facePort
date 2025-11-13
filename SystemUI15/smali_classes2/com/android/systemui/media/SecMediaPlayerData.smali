.class public final Lcom/android/systemui/media/SecMediaPlayerData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public currentPosition:I

.field public final mediaData$delegate:Lkotlin/Lazy;

.field public final mediaPlayers$delegate:Lkotlin/Lazy;

.field public final sortedMediaPlayers$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/SecMediaPlayerData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/SecMediaPlayerData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;->INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaData$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->mediaData$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/media/SecMediaPlayerData$mediaPlayers$2;->INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaPlayers$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->mediaPlayers$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/media/SecMediaPlayerData$sortedMediaPlayers$2;->INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$sortedMediaPlayers$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->sortedMediaPlayers$delegate:Lkotlin/Lazy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaPlayers: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mediaData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sortedMediaPlayers: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentMediaData()Lcom/android/systemui/media/controls/shared/model/MediaData;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    if-gt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;-><init>(Lcom/android/systemui/media/SecMediaPlayerData;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;-><init>(Lcom/android/systemui/media/SecMediaPlayerData;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final getMediaData()Ljava/lang/Iterable;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public final getMediaData()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->mediaData$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final getMediaPlayerSize$1()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public final getMediaPlayers()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->mediaPlayers$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public final getSortedMediaPlayers()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->sortedMediaPlayers$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method
