.class public final Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaPlayerData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaPlayerData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object v1, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    sget v2, Lcom/android/systemui/media/SecMediaPlayerData;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    iget p0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
