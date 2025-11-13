.class final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$progressRunner$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$progressRunner$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$progressRunner$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$progressRunner$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    const/4 v2, 0x0

    const/16 v6, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->update$default(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Landroid/media/MediaMetadata;Landroid/media/session/PlaybackState;Lkotlin/Pair;Lkotlin/Pair;I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
