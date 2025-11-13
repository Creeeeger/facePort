.class public final Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animateFromExpandable:Z

.field public final synthetic $this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;ZLcom/android/systemui/qs/tiles/base/interactor/QSTileInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;",
            "Z",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->this$0:Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->$animateFromExpandable:Z

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->$this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->this$0:Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->fontScalingDialogDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->$animateFromExpandable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->$this_with:Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    invoke-interface {v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    const/16 v3, 0x3a

    const-string v4, "font_scaling"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor$handleInput$2$runnable$1;->this$0:Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/interactor/FontScalingTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    sget-object v2, Lcom/android/systemui/animation/DialogTransitionAnimator;->TIMINGS:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method
