.class public final synthetic Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/policy/DecorView;

.field public final synthetic blacklist f$1:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ViewGroup$MarginLayoutParams;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/policy/DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$1:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Lcom/android/internal/policy/DecorView$$ExternalSyntheticLambda2;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DecorView;->$r8$lambda$LoPiQOG4_jtsVdpw9AAOANy_6Wg(Lcom/android/internal/policy/DecorView;Landroid/view/ViewGroup$MarginLayoutParams;IIILandroid/animation/ValueAnimator;)V

    return-void
.end method
