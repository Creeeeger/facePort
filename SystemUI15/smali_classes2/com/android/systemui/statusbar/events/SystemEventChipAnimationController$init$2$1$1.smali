.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2$1$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->updateCurrentAnimatedView()V

    return-void
.end method
