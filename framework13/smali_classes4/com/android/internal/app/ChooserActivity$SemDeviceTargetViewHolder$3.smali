.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

.field final synthetic blacklist val$v:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    .line 9235
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;->this$1:Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 9237
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9238
    return-void
.end method
