.class public final Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/animation/SeslFloatAnimatable;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/animation/SeslFloatAnimatable;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$1;->this$0:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable$animateTo$2$2$1;->this$0:Landroidx/recyclerview/animation/SeslFloatAnimatable;

    iget-object p0, p0, Landroidx/recyclerview/animation/SeslFloatAnimatable;->onValueUpdated:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
