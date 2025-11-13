.class public final Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;
.super Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAllowRelease:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;->PAUSE:Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/engines/video/VideoController$Command;-><init>(Lcom/android/systemui/wallpaper/engines/video/VideoController;Lcom/android/systemui/wallpaper/engines/video/VideoController$CommandAction;)V

    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;->mAllowRelease:Z

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

    const-string v1, "(releasable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/engines/video/VideoController$PauseCommand;->mAllowRelease:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
