.class public final Lcom/android/keyguard/PasswordTextView$CharState$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/PasswordTextView$CharState;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-gtz v6, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    iget v7, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v7, v5

    if-gtz v5, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    if-eq v1, v2, :cond_6

    iput v4, v0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v1, p1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v0, p1, v3, v3}, Lcom/android/keyguard/BaseSecPasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$7;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
