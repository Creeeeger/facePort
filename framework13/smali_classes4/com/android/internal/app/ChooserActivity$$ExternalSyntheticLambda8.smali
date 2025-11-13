.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;->f$0:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda8;->f$0:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->lambda$animateSingleEnhancementButton$13(Landroid/widget/LinearLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
