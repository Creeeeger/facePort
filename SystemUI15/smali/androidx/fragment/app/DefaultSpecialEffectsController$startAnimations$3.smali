.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

.field public final synthetic $viewToAnimate:Landroid/view/View;

.field public final synthetic this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 0

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object v0, p1, Landroidx/fragment/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$viewToAnimate:Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3;->$animationInfo:Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
