.class public final Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $dialog:Landroid/app/Dialog;

.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic $shouldAnimateFromExpandable:Z

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/animation/Expandable;Landroid/app/Dialog;Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;I)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$shouldAnimateFromExpandable:Z

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$dialog:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;

    iput p5, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$shouldAnimateFromExpandable:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->this$0:Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$expandable:Lcom/android/systemui/animation/Expandable;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/systemui/animation/DialogCuj;

    const/16 v4, 0x3a

    const-string/jumbo v5, "screen_record"

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$dialog:Landroid/app/Dialog;

    iget-object v3, v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$showPrompt$dismissAction$1;->$userId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyPermissionRequestDisplayed(I)V

    const/4 p0, 0x0

    return p0
.end method
