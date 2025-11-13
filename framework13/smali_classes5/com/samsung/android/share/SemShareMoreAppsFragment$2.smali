.class Lcom/samsung/android/share/SemShareMoreAppsFragment$2;
.super Ljava/lang/Object;
.source "SemShareMoreAppsFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareMoreAppsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareMoreAppsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareMoreAppsFragment;

    .line 132
    iput-object p1, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$2;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 147
    const-string v0, "SemShareMoreAppsFragment"

    const-string v1, "alpha animation cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/share/SemShareMoreAppsFragment$2;->this$0:Lcom/samsung/android/share/SemShareMoreAppsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareMoreAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 140
    .local v0, "chooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semSetRLDVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 152
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 135
    return-void
.end method
