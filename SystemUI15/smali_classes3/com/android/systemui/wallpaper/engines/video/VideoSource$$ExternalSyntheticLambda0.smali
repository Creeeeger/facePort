.class public final synthetic Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

.field public final synthetic f$1:[Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoSource;[Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;->f$1:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/engines/video/VideoSource;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoSource$$ExternalSyntheticLambda0;->f$1:[Landroid/graphics/Bitmap;

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p0, v0

    :goto_0
    return-void
.end method
