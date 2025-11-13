.class Lcom/android/internal/app/ChooserActivity$37;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->collapseSingleEnhancementButtonAnimation(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$enhanceIconLayout:Landroid/widget/LinearLayout;

.field final synthetic blacklist val$enhanceText:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 13994
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$37;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$37;->val$enhanceText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$37;->val$enhanceIconLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 14008
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$37;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsEnhanceButtonAnimRunning(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14009
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$37;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$37;->val$enhanceIconLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcheckAndCreateTipsPopupForSmartShare(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;)V

    .line 14010
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation1"    # Landroid/animation/Animator;

    .line 13997
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$37;->val$enhanceText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserActivity$37$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$37$1;-><init>(Lcom/android/internal/app/ChooserActivity$37;)V

    .line 13998
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 14003
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 14004
    return-void
.end method
