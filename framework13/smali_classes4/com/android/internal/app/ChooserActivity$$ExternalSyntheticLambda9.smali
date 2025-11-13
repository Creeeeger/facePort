.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda9;->f$0:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->lambda$animateSingleEnhancementButton$14(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
