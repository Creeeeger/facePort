.class public final Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EMPTY:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public static final INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

.field public static final comparator:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$8;

.field public static isSwipedAway:Z

.field public static final mediaData:Ljava/util/Map;

.field public static final mediaPlayers:Ljava/util/TreeMap;

.field public static shouldPrioritizeSs:Z

.field public static smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

.field public static final visibleMediaPlayers:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    new-instance v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v12, "INVALID"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, -0x1

    const v32, 0xcff0200

    const/16 v33, 0x0

    move-object v9, v10

    invoke-direct/range {v1 .. v33}, Lcom/android/systemui/media/controls/shared/model/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$compareByDescending$1;-><init>()V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$3;-><init>(Ljava/util/Comparator;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$4;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$4;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$5;-><init>(Ljava/util/Comparator;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$6;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$6;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$7;-><init>(Ljava/util/Comparator;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$8;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$special$$inlined$thenByDescending$8;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;
    .locals 3

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-eqz v2, :cond_0

    sput-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    :cond_2
    return-object v1
.end method

.method public static smartspaceMediaKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-boolean v2, v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;ZLcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;)V
    .locals 8

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual {p6, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->onDestroy()V

    :cond_1
    new-instance p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    const/4 v2, 0x0

    invoke-interface {p4}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;-><init>(ZLcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;JZ)V

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p2, p0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 0

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
