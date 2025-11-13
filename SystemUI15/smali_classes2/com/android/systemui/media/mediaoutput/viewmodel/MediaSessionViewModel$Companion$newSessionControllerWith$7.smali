.class final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $prev:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;->$prev:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MediaSessionManager - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;->$prev:Ljava/util/List;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;->access$getSessionController(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion;Ljava/util/List;Ljava/lang/Object;)Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel$Companion$newSessionControllerWith$7;->$context:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;-><init>(Landroid/content/Context;Landroid/media/session/MediaController;)V

    :cond_0
    return-object v0
.end method
