.class public final Lcom/android/systemui/media/PlayLastSongHelper$onPlayerVisibilityListener$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/PlayLastSongHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/PlayLastSongHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/PlayLastSongHelper$onPlayerVisibilityListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaVisibilityChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/PlayLastSongHelper$onPlayerVisibilityListener$2$1;->this$0:Lcom/android/systemui/media/PlayLastSongHelper;

    iget-boolean v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playerVisible:Z

    const-string v1, "onPlayerVisibilityChanged before: "

    const-string v2, " after: "

    const-string v3, "PlayLastSongHelper"

    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/PlayLastSongHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/PlayLastSongHelper;->playerVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/PlayLastSongHelper;->updateRestartViewVisibility()V

    return-void
.end method
