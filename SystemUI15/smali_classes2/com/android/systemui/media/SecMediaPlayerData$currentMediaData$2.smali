.class public final Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaPlayerData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaPlayerData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    sget v0, Lcom/android/systemui/media/SecMediaPlayerData;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    return-object p0
.end method
