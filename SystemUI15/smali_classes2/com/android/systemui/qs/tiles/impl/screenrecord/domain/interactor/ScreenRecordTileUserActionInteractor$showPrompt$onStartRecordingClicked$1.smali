.class public final Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$onStartRecordingClicked$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$onStartRecordingClicked$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$onStartRecordingClicked$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->disableAllCurrentDialogsExitAnimations()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$onStartRecordingClicked$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    return-void
.end method
