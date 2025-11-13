.class public final Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;
.super Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSeekTime:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;I)V
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->SEEK_TO:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;)V

    iput p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;->mSeekTime:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;->mAction:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$SeekCommand;->mSeekTime:I

    const-string v1, "ms)"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
