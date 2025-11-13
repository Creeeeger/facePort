.class public final Lcom/android/systemui/media/dialog/MediaItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mMediaDeviceOptional:Ljava/util/Optional;

.field public final mMediaItemType:I

.field public final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/media/MediaDevice;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaItem;->mTitle:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    return-void
.end method

.method public static createDeviceMediaItem(Lcom/android/settingslib/media/MediaDevice;)Lcom/android/systemui/media/dialog/MediaItem;
    .locals 3

    new-instance v0, Lcom/android/systemui/media/dialog/MediaItem;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Lcom/android/settingslib/media/MediaDevice;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createGroupDividerMediaItem(Ljava/lang/String;)Lcom/android/systemui/media/dialog/MediaItem;
    .locals 3

    new-instance v0, Lcom/android/systemui/media/dialog/MediaItem;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Lcom/android/settingslib/media/MediaDevice;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static createPairNewDeviceMediaItem()Lcom/android/systemui/media/dialog/MediaItem;
    .locals 3

    new-instance v0, Lcom/android/systemui/media/dialog/MediaItem;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Lcom/android/settingslib/media/MediaDevice;Ljava/lang/String;I)V

    return-object v0
.end method
