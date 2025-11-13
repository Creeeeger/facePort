.class public final Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDarkModeFilterApplied:Z

.field public final mHighlightFilterApplied:Z

.field public final mSurfaceHeight:I

.field public final mSurfaceWidth:I

.field public final mWhich:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/image/ImageEngine;IIIZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p2, 0x3c

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine;->TAG:Ljava/lang/String;

    const-string v0, "DrawState : mode value is missing. which="

    invoke-static {p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iput p2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mWhich:I

    iput p3, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceWidth:I

    iput p4, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceHeight:I

    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mHighlightFilterApplied:Z

    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mDarkModeFilterApplied:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;

    iget v0, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mWhich:I

    iget v2, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mWhich:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceWidth:I

    iget v2, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceWidth:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceHeight:I

    iget v2, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceHeight:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mHighlightFilterApplied:Z

    iget-boolean v2, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mHighlightFilterApplied:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mDarkModeFilterApplied:Z

    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mDarkModeFilterApplied:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "which="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mWhich:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", highlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mHighlightFilterApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", darkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/engines/image/ImageEngine$DrawState;->mDarkModeFilterApplied:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
