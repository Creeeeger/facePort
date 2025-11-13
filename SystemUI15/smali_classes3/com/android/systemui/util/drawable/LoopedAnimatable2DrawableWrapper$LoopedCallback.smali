.class final Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    instance-of p0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/Animatable2;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable2;->start()V

    :cond_1
    return-void
.end method
