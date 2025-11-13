.class public final Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/CoverMusicWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaVisibilityChanged(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController$onPlayerVisibilityListener$2$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->playerVisible:Z

    const-string v1, "onPlayerVisibilityChanged before: "

    const-string v2, " after: "

    const-string v3, "CoverMusicWidgetController"

    invoke-static {v1, v2, v3, v0, p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->playerVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->playerVisible:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    iget-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->mediaPauseTimerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController;->widgetDisableRunnable:Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
