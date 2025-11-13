.class Lcom/android/internal/app/ChooserActivity$37$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$37;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$37;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$37;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$37;

    .line 13998
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$37$1;->this$1:Lcom/android/internal/app/ChooserActivity$37;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 14001
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$37$1;->this$1:Lcom/android/internal/app/ChooserActivity$37;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$37;->val$enhanceText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14002
    return-void
.end method
