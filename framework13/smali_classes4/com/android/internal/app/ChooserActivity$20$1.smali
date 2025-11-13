.class Lcom/android/internal/app/ChooserActivity$20$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$20;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$20;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$20;

    .line 9885
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$20$1;->this$1:Lcom/android/internal/app/ChooserActivity$20;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 9887
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20$1;->this$1:Lcom/android/internal/app/ChooserActivity$20;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$20;->val$parentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9888
    return-void
.end method
