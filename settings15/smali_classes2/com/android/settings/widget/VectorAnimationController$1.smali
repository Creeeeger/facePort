.class public final Lcom/android/settings/widget/VectorAnimationController$1;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/VectorAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/VectorAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/VectorAnimationController$1;->this$0:Lcom/android/settings/widget/VectorAnimationController;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController$1;->this$0:Lcom/android/settings/widget/VectorAnimationController;

    iget-object p0, p0, Lcom/android/settings/widget/VectorAnimationController;->mAnimatedVectorDrawableCompat:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    return-void
.end method
