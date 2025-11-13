.class public final synthetic Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/ProgressBar;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda0;->f$0:Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->lambda$provideAnimatorUpdateListener$0(Landroid/widget/ProgressBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
