.class Lcom/android/internal/app/ResolverActivity$5;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->semSafelyStartActivtyAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$cti:Lcom/android/internal/app/chooser/TargetInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 3077
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$5;->val$cti:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3091
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3084
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    .line 3085
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$5;->val$cti:Lcom/android/internal/app/chooser/TargetInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 3086
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$5;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3087
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3095
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3080
    return-void
.end method
