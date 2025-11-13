.class Lcom/android/internal/app/ResolverActivity$6;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->semStartActivtyAsUserAfterAnimation(Lcom/android/internal/app/chooser/TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$activity:Landroid/app/Activity;

.field final synthetic blacklist val$cti:Lcom/android/internal/app/chooser/TargetInfo;

.field final synthetic blacklist val$options:Landroid/os/Bundle;

.field final synthetic blacklist val$user:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 3120
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$6;->val$cti:Lcom/android/internal/app/chooser/TargetInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$6;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$6;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3138
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3127
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    .line 3129
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->val$cti:Lcom/android/internal/app/chooser/TargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$6;->val$options:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$6;->val$user:Landroid/os/UserHandle;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/chooser/TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3132
    goto :goto_0

    .line 3130
    :catch_0
    move-exception v0

    .line 3131
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "startActivity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3133
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$6;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3134
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3142
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 3123
    return-void
.end method
