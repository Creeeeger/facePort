.class public final synthetic Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/SemRemoteViewsValueAnimation;

.field public final synthetic blacklist f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SemRemoteViewsValueAnimation;

    iput-object p2, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;->f$0:Landroid/widget/SemRemoteViewsValueAnimation;

    iget-object v1, p0, Landroid/widget/SemRemoteViewsValueAnimation$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Landroid/widget/SemRemoteViewsValueAnimation;->$r8$lambda$UNkql_Edwv7lPUyJFJkeoJhGmrI(Landroid/widget/SemRemoteViewsValueAnimation;Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
