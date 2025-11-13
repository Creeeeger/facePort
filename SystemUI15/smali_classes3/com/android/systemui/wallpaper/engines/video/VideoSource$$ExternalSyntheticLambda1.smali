.class public final synthetic Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

.field public final synthetic f$1:[Landroid/graphics/Point;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;[Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;->f$1:[Landroid/graphics/Point;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;->f$1:[Landroid/graphics/Point;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda1;->f$2:Z

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    const-string p0, "90"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "270"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    :goto_1
    const/4 p1, 0x0

    aput-object p0, v1, p1

    :goto_2
    return-void
.end method
