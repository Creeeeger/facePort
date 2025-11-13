.class public Landroid/widget/TextViewTranslationCallback;
.super Ljava/lang/Object;
.source "TextViewTranslationCallback.java"

# interfaces
.implements Landroid/view/translation/ViewTranslationCallback;


# static fields
.field private static final blacklist COMPAT_PAD_CHARACTER:C = '\u2002'

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "TextViewTranslationCb"


# instance fields
.field private blacklist mAnimationDurationMillis:I

.field private blacklist mAnimationRunning:Z

.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mIsShowingTranslation:Z

.field private blacklist mIsTextPaddingEnabled:Z

.field private blacklist mOriginalClickable:Z

.field private blacklist mOriginalFocusable:I

.field private blacklist mOriginalFocusableInTouchMode:Z

.field private blacklist mOriginalIsTextSelectable:Z

.field private blacklist mOriginalLongClickable:Z

.field private blacklist mPaddedText:Ljava/lang/CharSequence;

.field private blacklist mTranslatedTextLength:I

.field private blacklist mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;


# direct methods
.method public static synthetic blacklist $r8$lambda$Bh26vna9ZvPZghB8_Z8HzUER4fQ(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->lambda$onShowTranslation$0(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R7deDZsKgZUevP56WLGni_KTco0(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->lambda$onHideTranslation$1(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimator(Landroid/widget/TextViewTranslationCallback;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "UiTranslation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    const/16 v1, 0xfa

    iput v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslatedTextLength:I

    return-void
.end method

.method private blacklist clearTranslationTransformation()V
    .locals 2

    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTranslationTransformation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextViewTranslationCb"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    return-void
.end method

.method private static blacklist colorWithAlpha(II)I
    .locals 3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private blacklist computePaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge v2, v0, :cond_2

    const/16 v3, 0x2002

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private synthetic blacklist lambda$onHideTranslation$1(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    iput v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslatedTextLength:I

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(I)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    :cond_1
    return-void
.end method

.method private synthetic blacklist lambda$onShowTranslation$0(Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    iget-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalIsTextSelectable:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocusableInTouchMode()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusableInTouchMode:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalFocusable:I

    invoke-virtual {v1}, Landroid/widget/TextView;->isClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalClickable:Z

    invoke-virtual {v1}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mOriginalLongClickable:Z

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method static synthetic blacklist lambda$runChangeTextWithAnimationIfNeeded$2(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private blacklist runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 6

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/TextViewTranslationCallback;->colorWithAlpha(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    filled-new-array {v3, v2}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/TextViewTranslationCallback$1;

    invoke-direct {v5, p0, v3, v1, p2}, Landroid/widget/TextViewTranslationCallback$1;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/content/res/ColorStateList;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public blacklist enableContentPadding()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    return-void
.end method

.method blacklist getPaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextViewTranslationCallback;->computePaddedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationRunning:Z

    return v0
.end method

.method public blacklist isShowingTranslation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    return v0
.end method

.method blacklist isTextPaddingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextViewTranslationCallback;->mIsTextPaddingEnabled:Z

    return v0
.end method

.method public whitelist onClearTranslation(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextViewTranslationCallback;->onHideTranslation(Landroid/view/View;)Z

    invoke-direct {p0}, Landroid/widget/TextViewTranslationCallback;->clearTranslationTransformation()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mPaddedText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/widget/TextViewTranslationCallback;->mTranslatedTextLength:I

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "TextViewTranslationCb"

    const-string/jumbo v2, "onClearTranslation(): no translated text."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public whitelist onHideTranslation(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TextViewTranslationCb"

    if-nez v0, :cond_0

    const-string/jumbo v0, "onHideTranslation() shouldn\'t be called before onViewTranslationResponse()."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    invoke-virtual {v0}, Landroid/text/method/TranslationTransformationMethod;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v0}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v1, v3}, Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    nop

    const/4 v0, 0x1

    return v0

    :cond_2
    sget-boolean v0, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "onHideTranslation(): no translated text."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public whitelist onShowTranslation(Landroid/view/View;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v2

    const-string v3, "android:text"

    invoke-virtual {v2, v3}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_0
    iget-boolean v2, p0, Landroid/widget/TextViewTranslationCallback;->mIsShowingTranslation:Z

    const/4 v3, 0x0

    const-string v4, "TextViewTranslationCb"

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/TextViewTranslationCallback;->mTranslatedTextLength:I

    if-ne v2, v1, :cond_2

    sget-boolean v2, Landroid/widget/TextViewTranslationCallback;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is already showing translated text."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v2

    iput v1, p0, Landroid/widget/TextViewTranslationCallback;->mTranslatedTextLength:I

    if-nez v2, :cond_3

    const-string/jumbo v5, "onShowTranslation() shouldn\'t be called before onViewTranslationResponse()."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    invoke-virtual {v4}, Landroid/text/method/TranslationTransformationMethod;->getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/translation/ViewTranslationResponse;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    nop

    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    new-instance v5, Landroid/text/method/TranslationTransformationMethod;

    invoke-direct {v5, v2, v4}, Landroid/text/method/TranslationTransformationMethod;-><init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V

    iput-object v5, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    :cond_5
    iget-object v4, p0, Landroid/widget/TextViewTranslationCallback;->mTranslationTransformation:Landroid/text/method/TranslationTransformationMethod;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v6, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v5, v4}, Landroid/widget/TextViewTranslationCallback$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/text/method/TransformationMethod;)V

    invoke-direct {p0, v3, v6}, Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Landroid/view/translation/ViewTranslationResponse;->getKeys()Ljava/util/Set;

    move-result-object v6

    const-string v7, "android:content_description"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    nop

    invoke-virtual {v2, v7}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextViewTranslationCallback;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public blacklist setAnimationDurationMillis(I)V
    .locals 0

    iput p1, p0, Landroid/widget/TextViewTranslationCallback;->mAnimationDurationMillis:I

    return-void
.end method
