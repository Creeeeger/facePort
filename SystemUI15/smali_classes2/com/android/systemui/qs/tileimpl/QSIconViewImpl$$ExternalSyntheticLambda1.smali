.class public final synthetic Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl$$ExternalSyntheticLambda1;->f$1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method
