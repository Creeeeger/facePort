.class Lcom/android/internal/app/ChooserActivity$36;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->animateSingleEnhancementButton(Landroid/widget/LinearLayout;)V
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

    .line 13974
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$36;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$36;->val$enhanceText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$36;->val$enhanceIconLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAnimationEnd$0$com-android-internal-app-ChooserActivity$36(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "enhanceIconLayout"    # Landroid/widget/LinearLayout;
    .param p2, "enhanceText"    # Landroid/widget/TextView;

    .line 13978
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$36;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcollapseSingleEnhancementButtonAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 13979
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 13977
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$36;->val$enhanceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$36;->val$enhanceIconLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/internal/app/ChooserActivity$36$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$36;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13980
    return-void
.end method
